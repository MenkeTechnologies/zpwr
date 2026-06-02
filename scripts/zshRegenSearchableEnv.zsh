#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Fri Oct  4 17:27:00 EDT 2019
##### Purpose: zsh script to get env
##### Notes: builds Key.txt (fzf input), Value.txt (per-entry
#####        self-contained blocks, no separators) and Idx.txt
#####        (name\ttype\toffset\tlength) for O(1) preview
#####        lookup via tail -c +N | head -c LEN.
#}}}***********************************************************

() {
    builtin emulate -L zsh
    setopt noglob
    unsetopt multibyte    # ${#str} returns byte count, matching what we write

    local k v f body i type name line found_decl block
    local -a lines key_lines sorted_names stub_fpath type_lines
    local -A written_funcs key_by_name idx_by_name
    integer offset=0

    # 1) Build Key.txt (last-write-wins per name; preserves existing semantics).
    for k v in ${(kv)parameters}; do
        builtin print -rl -- "param $k"
    done > "$ZPWR_TEMPFILE2"
    for k v in ${(kv)aliases}; do
        builtin print -rl -- "alias $k"
    done >> "$ZPWR_TEMPFILE2"
    for k v in ${(kv)builtins}; do
        builtin print -rl -- "builtin $k"
    done >> "$ZPWR_TEMPFILE2"
    for k v in ${(kv)reswords}; do
        builtin print -rl -- "resword $k"
    done >> "$ZPWR_TEMPFILE2"
    for k v in ${(kv)commands}; do
        builtin print -rl -- "command $v"
    done >> "$ZPWR_TEMPFILE2"
    for k v in ${(kv)functions}; do
        builtin print -rl -- "func $k"
    done >> "$ZPWR_TEMPFILE2"

    key_lines=("${(@f)$(< $ZPWR_TEMPFILE2)}")
    for line in $key_lines; do
        type=${line%% *}
        name=${line#* }
        key_by_name[$name]="$type $name"
    done
    sorted_names=(${(on)${(k)key_by_name}})
    for name in $sorted_names; do
        builtin print -rl -- "${key_by_name[$name]}"
    done > "$ZPWR_ENV_KEY_FILE"

    # 2) Build Value.txt as concat of self-contained per-entry blocks,
    #    tracking byte offset/length for each entry.
    : > "$ZPWR_TEMPFILE2"
    exec 3>"$ZPWR_TEMPFILE2"

    # 2a) params: export NAME=VALUE
    # Skip params flagged 'hideval' — these are zsh/plugin internals
    # (historywords, funcstack, ZINIT_REPORTS, etc.) that either error
    # on (P)-expansion or dump huge useless state.
    for k v in ${(kv)parameters}; do
        [[ $v == *hideval* ]] && continue
        block="export $k=${(P)k}"$'\n'
        builtin print -rn -u 3 -- "$block"
        idx_by_name[$k]="param $offset ${#block}"
        (( offset += ${#block} ))
    done

    # 2b) aliases: alias NAME='VALUE'
    for k v in ${(kv)aliases}; do
        block=$(builtin alias -L -- "$k" 2>/dev/null)
        [[ -z $block ]] && continue
        block+=$'\n'
        builtin print -rn -u 3 -- "$block"
        idx_by_name[$k]="alias $offset ${#block}"
        (( offset += ${#block} ))
    done

    # 2c) builtins: synthesized sentinel line
    for k v in ${(kv)builtins}; do
        block="$k is a shell builtin"$'\n'
        builtin print -rn -u 3 -- "$block"
        idx_by_name[$k]="builtin $offset ${#block}"
        (( offset += ${#block} ))
    done

    # 2d) reswords: synthesized sentinel line
    for k v in ${(kv)reswords}; do
        block="$k is a reserved word"$'\n'
        builtin print -rn -u 3 -- "$block"
        idx_by_name[$k]="resword $offset ${#block}"
        (( offset += ${#block} ))
    done

    # 2e) commands: no Value.txt entry; preview reads $v directly.
    #     Idx still gets a stub so the preview can dispatch in O(1).
    for k v in ${(kv)commands}; do
        idx_by_name[$v]="command -1 0"
    done

    # 2f) funcs: full body block (header line + body). Autoload-body
    #     recovery logic preserved verbatim from the original script.
    for k v in ${(kv)functions}; do
        [[ -n ${written_funcs[$k]:-} ]] && continue
        body=
        if [[ ${functions[$k]} == *'autoload -X'* ]]; then
            f=
            for d in $fpath; do
                [[ -f $d/$k ]] && { f=$d/$k; break; }
            done
            if [[ -z $f ]]; then
                type_lines=("${(@f)$(builtin type -a -- "$k" 2>/dev/null)}")
                for line in $type_lines; do
                    if [[ $line == *' from '* ]]; then
                        f=${line##* from }
                        [[ -f "$f" ]] || f=
                        break
                    fi
                done
            fi
            if [[ -z $f && ${functions[$k]} =~ 'autoload -X[^;]*[[:space:]]+(/[^[:space:]]+)' ]]; then
                [[ -f ${match[1]}/$k ]] && f=${match[1]}/$k
                [[ -z $f && -f ${match[1]} ]] && f=${match[1]}
            fi
            if [[ -z $f && ${functions[$k]} == *'fpath=('* && ${functions[$k]} =~ 'fpath=\((.*)\)' ]]; then
                stub_fpath=()
                eval "stub_fpath=(${match[1]})"
                for d in $stub_fpath; do
                    [[ -f $d/$k ]] && { f=$d/$k; break; }
                done
            fi
            if [[ -n $f ]]; then
                lines=("${(@f)$(< $f)}")
                if (( ${#lines} )) && [[ ${lines[-1]} == ${k}\ \"\$@\" || ${lines[-1]} == $k ]]; then
                    lines=(${lines[1,-2]})
                fi
                found_decl=0
                if (( ${#lines} )); then
                    for i in {1..${#lines}}; do
                        if [[ $lines[i] =~ '^function[[:space:]]+([^[:space:]{(]+)[[:space:]]*\(\)[[:space:]]*\{' ]]; then
                            lines[i]="${match[1]} () {"
                            found_decl=1
                            break
                        elif [[ $lines[i] =~ '^function[[:space:]]+([^[:space:]{(]+)[[:space:]]*\{' ]]; then
                            lines[i]="${match[1]} () {"
                            found_decl=1
                            break
                        elif [[ $lines[i] =~ '^([^[:space:]#{(]+)[[:space:]]*\(\)[[:space:]]*\{' ]] && [[ ${match[1]} == $k ]]; then
                            lines[i]="$k () {"
                            found_decl=1
                            break
                        fi
                    done
                fi
                if (( found_decl )); then
                    body="${(pj:\n:)lines}"
                elif (( ${#lines} )); then
                    body="${k} () {
${(pj:\n:)lines}
}"
                fi
            fi
        else
            body=$(typeset -f -- "$k" 2>/dev/null)
        fi
        [[ -z $body || $body == *'autoload -X'* ]] && continue
        block="$k is a shell function"$'\n'"$body"$'\n'
        builtin print -rn -u 3 -- "$block"
        idx_by_name[$k]="func $offset ${#block}"
        (( offset += ${#block} ))
        written_funcs[$k]=1
    done

    exec 3>&-

    # 3) Publish atomically (truncate-and-rewrite, matching the prior
    #    pattern; partial-read window is unchanged).
    <$ZPWR_TEMPFILE2 >$ZPWR_ENV_VALUE_FILE

    # 4) Emit Idx.txt as a sourceable zsh assoc literal so the preview
    #    script can load it with `source` (builtin, no fork). ${(qqqq)}
    #    uses $'...' ANSI-C quoting which is safe for any byte sequence.
    {
        builtin print -r -- 'typeset -gA ZPWR_ENV_IDX'
        builtin print -rn -- 'ZPWR_ENV_IDX=('
        for name in ${(k)idx_by_name}; do
            builtin print -rn -- " ${(qqqq)name} ${(qqqq)idx_by_name[$name]}"
        done
        builtin print -- $'\n)'
    } > "$ZPWR_ENV_IDX_FILE"
}
