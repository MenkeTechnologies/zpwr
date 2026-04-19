#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:10:58 EDT 2017
##### Purpose: bash script for making text blue
##### Notes: usage: > >(blueText.sh)
#}}}***********************************************************
#escape sequences
ZPWR_COLOR_BLUE='\e[37;44m'
ZPWR_COLOR_RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read; do
    echo -e "${ZPWR_COLOR_BLUE}$REPLY${ZPWR_COLOR_RESET}"
done
