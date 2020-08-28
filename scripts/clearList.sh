#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep 19 16:36:12 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
    source "$ZPWR_ENV_FILE" || {
        echo "cannot access $ZPWR_ENV_FILE" >&2
        exit 1
    }
fi

test -z $ZPWR_EXA_COMMAND && ZPWR_EXA_COMMAND="command exa --git -il -F -H --extended --color-scale -g -a --colour=always"

if [[ "$1" == "--" ]]; then
    shift
fi

clearList "$@"

