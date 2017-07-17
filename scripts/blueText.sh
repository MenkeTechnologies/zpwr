#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:10:58 EDT 2017
#####   Purpose: bash script for making text blue
#####   Notes: usage: > >(blueText.sh)
#}}}***********************************************************
#escape sequences
BLUE='\e[37;44m'
RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read input; do
    echo -e "${BLUE}$input${RESET}"
done
