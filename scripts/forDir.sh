#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Jul  9 00:06:30 EDT 2021
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$zpwrBaseDir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="$(dirname "$zpwrBaseDir")"
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

function zpwrFordir(){

    if [[ -z "$2" ]]; then
       zpwrLoggErr "usage: fordir <cmd> <dirs> to run <cmd> in each dir"
       return 1
    fi

    local dir cmd

    cmd="$1"

    if [[ -d "$cmd" || -f "$cmd" ]]; then
       zpwrLoggErr "usage: fordir <cmd> <dirs> to run <cmd> in each dir"
       return 1
    fi

    shift

    for dir in "$@"; do
        if [[ -d "$dir" ]]; then
            (
                builtin cd "$dir" && zpwrPrettyPrint "cd $dir && $cmd" && eval "$cmd"
            )
        fi
    done
}

zpwrFordir "$@"
