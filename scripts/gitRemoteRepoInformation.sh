#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Fri Jul 7 21:02:23 EDT 2017
##### Purpose: bash script to get remote details from repo name
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

for directory; do
    if [[ -d "$directory" ]]; then
        cd "$directory" && {
            isGitDir && {
                line="$(git remote -v 2>/dev/null)" && {
                    if echo "$line" | grep -q 'git@'; then
                        #ssh
                        out="$(echo $line | perl -ne 'do{($_=$1)=~ s@.git$@@;print;exit} if m{^.*:(\S+/\S+)\.git\s+.*$}')"
                        #user="${out%/*}"
                        #repo="${out#*/}"
                    else
                        #http
                        out="$(echo $line | perl -ne 'do{($_=$1)=~ s@.git$@@;print;exit} if m{^.*/(\S+/\S+)\s+.*$}')"
                    fi
                    echo "$out"
                }
            }
        }
    fi
done

unset directory
