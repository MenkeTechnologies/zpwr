#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Sep  7 12:40:08 EDT 2021
##### Purpose: zsh script to unrar and unzip in each dir
##### Notes:
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source file ZPWR_LIB_INIT '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    zpwrBaseDir="${0:A}"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="${zpwrBaseDir:h}"
        if [[ "$zpwrBaseDir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
        echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
        exit 1
    fi
    unset zpwrBaseDir
fi

function err() {

    echo "error: $@" >&2
}

#breadth first traversal
function process() {

    emulate -LR zsh
    local base="${1:A}" old queue rars zips
    setopt nullglob

    queue=( "${base}" )
    idx=1

    while true; do

        dir="${queue[$idx]}"

        if ! builtin cd -q "$dir"; then
            err "can not cd to $dir"
            return 1
        fi

        zips=( *.zip )
        rars=( *.rar )

        if (( $#zips )); then
            #echo found *.zip(:A)
            yes A | zpwr execglobparallel '*.zip~._*.zip' 'unzip "$f" -d "${f%*.zip}"'
        fi

        if (( $#rars )); then
            #echo found *.rar(:A)
            zpwr execglobparallel '*.rar~._*.rar' 'd="${f:r}";mkdir "\$d"; mv "$f" "\$d"; builtin cd "\$d";yes A | unrar x "$f"; builtin cd ..'
        fi

        queue+=( *(/:A) )
        queue[$idx]=()

        if ! (( $#queue )); then
            break
        fi

    done

}

function zpwrForDirZipRarMain() {

    emulate -LR zsh
    local dir old dirs f
    setopt nullglob

    if [[ -n "$@" ]]; then
        dirs=( ${@}(/) )
    else
        dirs=( *(/) )
    fi

    old="$PWD"
    for dir in "${dirs[@]}"; do
        zpwrPrettyPrint "Processing $dir"
        process "$dir"
    done
    builtin cd -q "$old"

    zpwrPrettyPrint 'nested zip RM'
    zpwrPrettyPrint 'nested rar RM'

    for f in "${(v)ZPWR_PROCESSED[@]}"; do
        echo rm -rf "$f"
    done

    zpwrPrettyPrintNoNewline 'are you sure > '
    read a
    if [[ $a == y ]]; then
        for f in "${(v)ZPWR_PROCESSED[@]}"; do
                rm -rf "$f"
        done
    fi
}

ulimit -n 10240

ZPWR_PROCESSED=()

zpwrForDirZipRarMain "$@"
