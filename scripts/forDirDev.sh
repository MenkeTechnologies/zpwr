#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Fri Jul  9 00:11:17 EDT 2021
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

function zsh-gacp-devBranch() {

    command git rev-parse --git-dir &>/dev/null || return 1

    local branch

    for branch in development develop devel; do
        if command git show-ref -q --verify refs/heads/$branch; then
            echo "$branch"
            return
        fi
    done

    echo dev
}

branch='$(zsh-gacp-devBranch)'
dir="$1"

if [[ ! -d "$dir" ]]; then
    zpwrLoggErr "usage: forDirDev.sh <dir> to run <cmd> in each dir/*"
    exit 1
fi

source "$ZPWR_SCRIPTS/forDir.sh" "zpwrIsGitDir && { _m=$branch; git checkout \$_m ; git fetch -f --all --prune --tags; git clean -dff && git reset --hard origin/\$_m && git clean -dff ; git pull --all; unset _m; }" "$dir/"*
