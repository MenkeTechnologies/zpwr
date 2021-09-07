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

function zpwrforDirZipRarMain() {
    local dir old
    emulate -LR zsh
    setopt nullglob

    for dir in *(/); do
        old="$PWD"
        if ! cd "$dir"; then
            err "cant cd to $dir"
            return 1
        fi
        zpwrPrettyPrint "Processing $dir"
        yes A | zpwr execglobparallel '*.zip' 'unzip "$f" -d "${f%*.zip}"'
        zpwr execglobparallel '*.rar~._*.rar' 'd="${f:r}";mkdir "\$d"; mv "$f" "\$d"; builtin cd "\$d";yes A | unrar x "$f"; builtin cd ..'

        if ! builtin cd "$old"; then
            err "cant cd to $old"
            return 1
        fi
    done

    zpwrPrettyPrint 'nested zip RM'
    echo rm -rf */*.zip
    zpwrPrettyPrint 'nested rar RM'
    echo rm -rf */*/*.rar
    printf 'are you sure > '
    read a
    if [[ $a == y ]]; then
        rm -rf */*.zip
        rm -rf */*/*.rar
    fi
}

zpwrforDirZipRarMain "$@"
