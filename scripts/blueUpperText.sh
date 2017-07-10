#!/usr/bin/env bash
#escape sequences
BLUE='\e[37;44m'
RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read input; do
    echo "$input" | sed 's/.*/_______ & ______/' | boldText.sh | blueText.sh 
done
