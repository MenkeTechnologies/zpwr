#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:08:28 EDT 2017
##### Purpose: bash script for filtering text
##### Notes:
#}}}***********************************************************

#loop through stdin and add escape sequences at head and tail of each line
while read; do
    echo -e "${ZPWR_COLOR_RED}$REPLY${ZPWR_COLOR_RESET}"
done
