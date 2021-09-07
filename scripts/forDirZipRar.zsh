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

function addProcessed(){

    if [[ -f $ZPWR_TEMPFILE_PROCESSED ]]; then
        for f in "${(@f)$(<$ZPWR_TEMPFILE_PROCESSED)}"; do
            processed+=( "${f:A}" )
        done
    fi
}

function zpwrForDirZipRarMain() {
    local dir old dirs f
    local -a processed=()
    emulate -LR zsh
    setopt nullglob

    command rm -f $ZPWR_TEMPFILE_PROCESSED

    if [[ -n "$@" ]]; then
        dirs=( ${@}(/) )
    else
        dirs=( *(/) )
    fi


    for dir in "${dirs[@]}"; do
        old="$PWD"
        if ! cd "$dir"; then
            err "can not cd to $dir"
            return 1
        fi
        zpwrPrettyPrint "Processing $dir"

        yes A | zpwr execglobparallel '*.zip' 'unzip "$f" -d "${f%*.zip}"'

        addProcessed

        zpwr execglobparallel '*.rar~._*.rar' 'd="${f:r}";mkdir "\$d"; mv "$f" "\$d"; builtin cd "\$d";yes A | unrar x "$f"; builtin cd ..'

        addProcessed

        if ! builtin cd "$old"; then
            err "can not cd to $old"
            return 1
        fi
    done

    if [[ -f "$ZPWR_TEMPFILE_PROCESSED" ]]; then

        zpwrPrettyPrint 'nested zip RM'
        zpwrPrettyPrint 'nested rar RM'

        for f in "${processed[@]}"; do
            if ! [[ -e "$f" ]]; then
                nf="${f:r}/${f:t}"
                if [[ -e "$nf" ]]; then
                    echo rm -rf "$nf"
                fi
            else
                echo rm -rf "$f"
            fi
        done

        zpwrPrettyPrint 'are you sure > '
        read a
        if [[ $a == y ]]; then
            for f in "${processed[@]}"; do
                test -z "$f" && continue
                if ! [[ -e "$f" ]]; then
                    nf="${f:r}/${f:t}"
                    if [[ -e "$nf" ]]; then
                        rm -rf "$nf"
                    fi
                else
                    rm -rf "$f"
                fi
            done
        fi
    fi
}

zpwrForDirZipRarMain "$@"
