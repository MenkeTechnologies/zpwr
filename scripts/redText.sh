#!/usr/bin/env bash
#escape sequences
RED='\e[31;1m'
RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read input; do
    echo -e "${RED}$input${RESET}"
done
