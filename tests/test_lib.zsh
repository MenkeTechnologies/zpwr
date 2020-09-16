#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Feb 25 22:47:00 EST 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$ZPWR/$0}"
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
ZPWR="$zpwrBaseDir"
unset zpwrBaseDir

if [[ "$PWD" != "$ZPWR" ]]; then
    #echo "You are not in $ZPWR. Forced to cd $ZPWR"
    cd "$ZPWR"
fi

ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
ZPWR_RE_ENV_FILE="$ZPWR/.zpwr_re_env.sh"
ALIAS_FILE="$ZPWR/.shell_aliases_functions.sh"
ZPWR_VERBS_FILE="$ZPWR/scripts/zpwr.zsh"
ZPWR_FN_FILE="$ZPWR/scripts/lib.sh"
ZPWR_AUTOLOAD="$ZPWR/autoload"
ZPWR_COMPS="$ZPWR/comps"
TEST_FILE=tests/testfile
TOKENS_FILE=local/.tokens.sh

fpath=($ZPWR_AUTOLOAD/* $ZPWR_COMPS $fpath)
autoload -z $ZPWR_AUTOLOAD/*/*(.:t)

if [[ ! -f $ZPWR_ENV_FILE ]]; then
    error "$ZPWR_ENV_FILE does not exist"
fi

load $ZPWR_RE_ENV_FILE

if [[ ! -f $ZPWR_RE_ENV_FILE ]]; then
    error "$ZPWR_RE_ENV_FILE does not exist"
fi

load $ZPWR_RE_ENV_FILE

if [[ ! -f $ALIAS_FILE ]]; then
    error "$ALIAS_FILE does not exist"
fi

load $ALIAS_FILE

if [[ ! -f $ZPWR_VERBS_FILE ]]; then
    error "$ZPWR_VERBS_FILE does not exist"
fi

load $ZPWR_VERBS_FILE

if [[ ! -f $ZPWR_FN_FILE ]]; then
    error "$ZPWR_FN_FILE does not exist"
fi

load $ZPWR_FN_FILE

setopt nullglob
