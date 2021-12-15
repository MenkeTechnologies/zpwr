#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul  3 12:41:20 EDT 2017
##### Purpose: bash script to display random cowsay fonts
##### Notes:
#}}}***********************************************************

if [[ -z "$1" ]]; then
    echo "usage: randomCow.sh <width> [<filter>]" >&2
    exit 1
fi

declare -a COW_FILES

width=$1
FILTER="$2"

node_exe="$HOMEBREW_PREFIX/lib/node_modules/cowsay/cli.js"

if [[ -s "$node_exe" ]]; then
    COW_FILES=($("$node_exe" -l | perl -ne 'do{{$_=~s@(\x09|\x20)+@\x0a@g;print}} if !/Cow files.*:/'))
    rangePossibleIndices=${#COW_FILES[@]}

    randIndex=$((RANDOM % rangePossibleIndices))
    font=${COW_FILES[$randIndex]}

    if (($# == 1)); then
        cat | "$node_exe" -f "$font" -W$width
    elif (($# == 2)); then
        cat | "$node_exe" -f "$font" -W$width | "$FILTER"
    fi
else
    COW_FILES=($(cowsay -l | perl -ne 'do{{$_=~s@(\x09|\x20)+@\x0a@g;print}} if !/Cow files.*:/'))

    rangePossibleIndices=${#COW_FILES[@]}

    randIndex=$((RANDOM % rangePossibleIndices))
    font=${COW_FILES[$randIndex]}

    if (($# == 1)); then
        cat | "cowsay" -f "$font" -W$width
    elif (($# == 2)); then
        cat | "cowsay" -f "$font" -W$width | "$FILTER"
    fi
fi

