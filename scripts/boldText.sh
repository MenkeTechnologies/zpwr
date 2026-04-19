#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:12:23 EDT 2017
##### Purpose: bash script to bold text
##### Notes: usage | boldText.sh etc
#}}}***********************************************************

#loop through stdin and add escape sequences at head and tail of each line
while read; do
    printf "\e[1m$REPLY\n\e[0m"
done
