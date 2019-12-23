#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:11:46 EDT 2017
##### Purpose: bash script to make text white on blue background and some underscores
##### Notes:
#}}}***********************************************************
#escape sequences
ZPWR_BLUE='\e[37;44m'
ZPWR_RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read; do
    echo "$REPLY" | sed 's@.*@_______ & ______@' | boldText.sh | blueText.sh
done
