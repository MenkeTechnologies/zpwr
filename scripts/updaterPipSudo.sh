#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: SUZIE
##### Date: Fri Apr 6 15:40:01 EDT 2018
##### Purpose: bash script to do pip updating
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
    if [[ $ZPWR_REMOTE != true ]]; then
        if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
            echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
            exit 1
        fi
    fi

    unset zpwrBaseDir
fi

zpwrUpdatePip "python3" "pip3" "true"
zpwrUpdatePip "python2" "pip2" "true"
