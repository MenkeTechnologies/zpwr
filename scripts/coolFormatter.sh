#!/usr/bin/env bash
#escape sequences
BLUE='\e[37;44m'
RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read input; do
	echo "$input" | sed -e 's/[^[:blank:]]/_&_/g' -e 's/[[:blank:]]/\/\/\/\/\//g'
done
