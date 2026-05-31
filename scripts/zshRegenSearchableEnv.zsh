#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Fri Oct  4 17:27:00 EDT 2019
##### Purpose: zsh script to get envv
##### Notes:
#}}}***********************************************************

() {
    builtin emulate -L zsh
    setopt noglob
    local k v f body i type name line found_decl
    local -a lines key_lines sorted_names stub_fpath type_lines
    local -A written_funcs key_by_name

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

    for k v in ${(kv)parameters}; do
        builtin print -r -- "export $k=${(P)k}"
    done > "$ZPWR_TEMPFILE2"


    #separators between each section
    builtin print -rl -- "======" >> "$ZPWR_TEMPFILE2"

    builtin alias -L \
        >> "$ZPWR_TEMPFILE2"

    builtin print -rl -- "======" >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)builtins}; do
        builtin whence -a -- "$k"
    done >> "$ZPWR_TEMPFILE2"

    builtin print -rl -- "======" >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)reswords}; do
        builtin whence -a -- "$k"
    done >> "$ZPWR_TEMPFILE2"

    builtin print -rl -- "======" >> "$ZPWR_TEMPFILE2"

    for k v in ${(kv)commands}; do
        builtin print -rl -- "$v"
    done >> "$ZPWR_TEMPFILE2"

    builtin print -rl -- "======" >> "$ZPWR_TEMPFILE2"

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
        builtin print -rl -- "$k is a shell function" >> "$ZPWR_TEMPFILE2"
        builtin print -r -- "$body" >> "$ZPWR_TEMPFILE2"
        written_funcs[$k]=1
    done

    builtin print -rl -- "======" >> "$ZPWR_TEMPFILE2"

    <$ZPWR_TEMPFILE2 >$ZPWR_ENV_VALUE_FILE
}

