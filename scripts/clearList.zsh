#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep 19 16:36:12 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if ! source "${0:h}/init.sh"; then
    echo "could not source 0/init.sh '${0:h}/init.sh'"
fi

test -z $ZPWR_EXA_COMMAND && ZPWR_EXA_COMMAND="command exa --git -il -F -H --extended --color-scale -g -a --colour=always"

if [[ "$1" == "--" ]]; then
    shift
fi

clearList "$@"

