#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Feb 25 22:47:00 EST 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

ENV_FILE="$PWD/.zpwr_env.sh"
RE_ENV_FILE="$PWD/.zpwr_re_env.sh"
ALIAS_FILE="$PWD/.shell_aliases_functions.sh"
ZPWR_VERBS_FILE="$PWD/scripts/zpwr.zsh"
ZPWR_FN_FILE="$PWD/scripts/lib.sh"
TEST_FILE=tests/testfile
TOKENS_FILE=local/.tokens.sh


if [[ ! -f $ENV_FILE ]]; then
    error "$ENV_FILE does not exist"
fi

load $RE_ENV_FILE

if [[ ! -f $RE_ENV_FILE ]]; then
    error "$RE_ENV_FILE does not exist"
fi

load $RE_ENV_FILE

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
