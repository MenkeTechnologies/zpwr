#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Feb 25 22:47:00 EST 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

ZPWR_ENV_FILE="$PWD/.zpwr_env.sh"
ZPWR_RE_ENV_FILE="$PWD/.zpwr_re_env.sh"
ALIAS_FILE="$PWD/.shell_aliases_functions.sh"
ZPWR_VERBS_FILE="$PWD/scripts/zpwr.zsh"
ZPWR_FN_FILE="$PWD/scripts/lib.sh"
ZPWR_AUTOLOAD="$PWD/autoload"
ZPWR_COMPS="$PWD/comps"
TEST_FILE=tests/testfile
TOKENS_FILE=local/.tokens.sh

fpath=($ZPWR_AUTOLOAD $ZPWR_COMPS $fpath)
autoload -z $ZPWR_AUTOLOAD/*(.:t)


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
