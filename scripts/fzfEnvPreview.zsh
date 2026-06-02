#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: pure-zsh fzf preview for env cache search.
##### Notes: hot path uses only zsh builtins — source, sysseek,
#####        sysread. No awk/grep/tail/head fork on lookup or
#####        extraction. The fzf-imposed preview process is the
#####        only fork per render.
#}}}***********************************************************

emulate -L zsh
setopt no_nomatch no_unset
unsetopt multibyte    # ${#str} returns bytes — matches regen's offsets
zmodload zsh/system   # sysseek / sysread

# args: $1 = fzf-selected line, $2 = mode ('plain' or 'reg'), $3 = 'verbs' (optional)
local line="$1"
local mode="${2:-plain}"
local source="${3:-env}"

# verbs mode: line looks like 'verbName    targetName=desc' (padded with
# multiple spaces). Word-split with default IFS and take field 2 up to `=`.
if [[ $source == verbs ]]; then
    local -a parts=( ${=line} )
    if (( ${#parts} >= 2 )); then
        line=${parts[2]%%=*}
    fi
fi

# 1) Look up entry in the idx assoc array — source is a builtin, no fork.
if [[ -r ${ZPWR_ENV_IDX_FILE:-} ]]; then
    builtin source "$ZPWR_ENV_IDX_FILE"
fi

local entry="${ZPWR_ENV_IDX[$line]:-}"
if [[ -z $entry ]]; then
    print -r -- "No input found for _${line}_!"
    return 0
fi

local type offset length
read -r type offset length <<< "$entry"

# 2) command type: file-based preview (unchanged from prior behavior).
if [[ $type == command ]]; then
    local file=$line
    if [[ -f $file ]]; then
        if LC_MESSAGES=C command grep -Hm1 "^" "$file" 2>/dev/null | command grep -q "^Binary"; then
            command zsh "$ZPWR_SCRIPTS/zpwrClearList.zsh" -- "$file" | fold -s -w 80
            [[ -x $file ]] && objdump -d "$file" 2>/dev/null | bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l yaml -- 2>/dev/null
            xxd "$file" 2>/dev/null | bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -l yaml -- 2>/dev/null
        else
            bat --paging never --wrap character --color always --style="numbers,grid,changes,header" -- "$file" 2>/dev/null
        fi
    else
        command zsh "$ZPWR_SCRIPTS/zpwrClearList.zsh" -- "$file" 2>/dev/null | fold -s -w 80
    fi
    return 0
fi

# 3) Anything else: extract $length bytes at byte offset $offset from Value.txt.
#    sysseek + sysread are zsh/system builtins — no fork.
{
    if (( offset >= 0 && length > 0 )) && [[ -r ${ZPWR_ENV_VALUE_FILE:-} ]]; then
        local fd
        exec {fd}< "$ZPWR_ENV_VALUE_FILE"
        sysseek -u $fd $offset
        local remaining=$length chunk
        integer bytes_read=0
        while (( remaining > 0 )); do
            sysread -s $remaining -c bytes_read chunk <&$fd || break
            (( bytes_read == 0 )) && break
            print -rn -- "$chunk"
            (( remaining -= bytes_read ))
        done
        exec {fd}<&-
    fi
} | {
    # 'plain' mode: passthrough. 'reg' mode: cowsay/ponysay/lolcat pipeline.
    if [[ $mode == reg ]]; then
        cowsay 2>/dev/null | ponysay 2>/dev/null | "$ZPWR_SCRIPTS/splitReg.sh" -- ---------- lolcat 2>/dev/null
    else
        cat
    fi
}
