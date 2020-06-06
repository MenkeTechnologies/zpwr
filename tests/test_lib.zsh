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
ALIAS_FILE="$PWD/.shell_aliases_functions.sh"
ZPWR_VERBS_FILE="$PWD/scripts/zpwr.zsh"

if [[ ! -f $ENV_FILE ]]; then
    error "$ENV_FILE does not exist"
fi

load $ENV_FILE

if [[ ! -f $ALIAS_FILE ]]; then
    error "$ALIAS_FILE does not exist"
fi

load $ALIAS_FILE

if [[ ! -f $ZPWR_VERBS_FILE ]]; then
    error "$ZPWR_VERBS_FILE does not exist"
fi

load $ZPWR_VERBS_FILE


TEST_FILE=tests/testfile
TOKENS_FILE=local/.tokens.sh

setopt nullglob
