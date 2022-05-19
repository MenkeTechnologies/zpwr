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
        return 1
    fi
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    zpwrBaseDir="${0:A}"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="${zpwrBaseDir:h}"
        if [[ "$zpwrBaseDir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            return 1
        fi
    done
    if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
        echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
        return 1
    fi
    unset zpwrBaseDir
fi

function zpwrForDirRarZipErr() {

    echo "ERROR: $@" >&2
}

# iterative, depth first traversal with stack
function zpwrForDirRarZipProcess() {

    emulate -L zsh
    local first="${1:A}" old stack rars zips dir
    setopt nullglob nocaseglob extendedglob

    stack=( "${first}" )
    idx='-1'

    #set -x
    while (( $#stack )); do

        dir="${stack[$idx]}"

        if ! builtin cd -q "$dir"; then
            zpwrForDirRarZipErr "can not cd to $dir"
            stack[$idx]=()
            continue
        else
            zpwrLogDebug "At $PWD"
        fi

        zips=( *.zip )
        rars=( *.rar )

        if (( $#zips )); then
            zpwrPrettyPrint "$PWD:" *.zip
            if (( ${+opts[-z]} )); then
                yes A | zpwr execglobparallel '*.zip~._*.zip' "${opts[-z]}"
            else
                yes A | zpwr execglobparallel '*.zip~._*.zip' 'unzip "$f" -d "${f%*.zip}"'
            fi

        fi

        if (( $#rars )); then
            zpwrPrettyPrint "$PWD:" *.rar
            if (( ${+opts[-r]} )); then
                zpwr execglobparallel '*.rar~._*.rar' "${opts[-r]}"
            else
                zpwr execglobparallel '*.rar~._*.rar' 'd="${f:r}";mkdir "\$d"; mv "$f" "\$d"; builtin cd "\$d";yes A | unrar x "$f"; builtin cd ..'

            fi
        fi

        stack[$idx]=()
        stack+=( ${~dirGlob} )

    done
    #set +x

}
function zpwrForDirZipRarRm() {

    local files a f

    files=( ${(v)ZPWR_PROCESSED[@]} )

    if (( $#files )); then
        zpwrPrettyPrint 'nested zip RM'
        zpwrPrettyPrint 'nested rar RM'

        for f in "${(v)files[@]}"; do
            echo rm -rf "$f"
        done

        zpwrPrettyPrintNoNewline 'Are you sure > '
        read a
        if [[ $a == y ]]; then
            for f in "${(v)files[@]}"; do
                rm -rf "$f"
            done
        fi
    fi
}

function zpwrForDirZipRarMain() {

    emulate -L zsh
    local old dirs dir
    setopt nullglob extendedglob noshwordsplit

    zpwrPrettyPrint "Gathering dirs..."
    if [[ -n "$@" ]]; then
        dirs=()
        for dir; do
            if [[ -d "$dir" ]]; then
                dirs+=( ${dir:a} )
            fi
        done
    else
        dirs=( ${~dirGlob} )
    fi

    old="$PWD"
    for dir in "${dirs[@]}"; do
        zpwrPrettyPrint "Processing $dir"
        zpwrForDirRarZipProcess "$dir"
    done
    builtin cd -q "$old"

    zpwrForDirZipRarRm

}

zparseopts -D -E -A opts -- z: r:

dirGlob='*~@*~__MACOS*~*.vst(|3)~*.component~*.app~*.(|m)pkg(/:A)'

ulimit -n 10240
root="$PWD"

trap 'builtin cd -q $root; unset root dirGlob; return 1' INT

typeset -Ag ZPWR_PROCESSED=()

zpwrForDirZipRarMain "$@"

unset root dirGlob opts
