#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Feb 25 22:47:00 EST 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

setopt extendedglob dotglob

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

ZPWR_ENV="$ZPWR/env"
ZPWR_ENV_FILE="$ZPWR_ENV/.zpwr_env.sh"
ZPWR_RE_ENV_FILE="$ZPWR_ENV/.zpwr_re_env.sh"
ZPWR_AUTOLOAD="$ZPWR/autoload"
TEST_FILE=tests/testfile
TOKENS_FILE=local/.tokens.sh

fpath=($ZPWR_AUTOLOAD/*(/) $fpath)
autoload -z $ZPWR_AUTOLOAD/*/*(.:t)

if [[ ! -f $ZPWR_ENV_FILE ]]; then
    error "$ZPWR_ENV_FILE does not exist"
fi

load $ZPWR_RE_ENV_FILE

if [[ ! -f $ZPWR_RE_ENV_FILE ]]; then
    error "$ZPWR_RE_ENV_FILE does not exist"
fi

load $ZPWR_RE_ENV_FILE

if [[ ! -f $ZPWR_ALIAS_FILE ]]; then
    error "$ZPWR_ALIAS_FILE does not exist"
fi

load $ZPWR_ALIAS_FILE

if [[ ! -f $ZPWR_VERBS_FILE ]]; then
    error "$ZPWR_VERBS_FILE does not exist"
fi

load $ZPWR_VERBS_FILE

if [[ ! -f $ZPWR_LIB ]]; then
    error "$ZPWR_LIB does not exist"
fi

load $ZPWR_LIB

setopt nullglob
