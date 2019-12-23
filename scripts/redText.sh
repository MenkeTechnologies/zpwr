#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:08:28 EDT 2017
##### Purpose: bash script for filtering text
##### Notes:
#}}}***********************************************************
#escape sequences
ZPWR_RED='\e[31;1m'
ZPWR_RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read; do
    echo -e "${ZPWR_RED}$REPLY${ZPWR_RESET}"
done
