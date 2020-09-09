#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep 19 16:36:12 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    dir="${0:A}"

    while [[ ! -f "$dir/.zpwr_root" ]]; do
        dir="${dir:h}"
        if [[ "$dir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$dir/scripts/init.sh" "$dir"; then
        echo "Could not source dir '$dir/scripts/init.sh'."
        exit 1
    fi
fi

test -z $ZPWR_EXA_COMMAND && ZPWR_EXA_COMMAND="command exa --git -il -F -H --extended --color-scale -g -a --colour=always"

if [[ "$1" == "--" ]]; then
    shift
fi

clearList "$@"

