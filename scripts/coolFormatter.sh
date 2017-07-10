#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:13:32 EDT 2017
#####   Purpose: bash script to add funky formatting 
#####   Notes: 
#}}}***********************************************************
#escape sequences
BLUE='\e[37;44m'
RESET='\e[0m'

#loop through stdin and add escape sequences at head and tail of each line
while read input; do
	echo "$input" | sed -e 's/[^[:blank:]]/_&_/g' -e 's/[[:blank:]]/\/\/\/\/\//g'
done
