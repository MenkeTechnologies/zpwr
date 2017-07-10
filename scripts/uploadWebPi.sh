#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:32:05 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

IP=$IP
ADDRESS="pi@$IP:/var/www/html"

echo -e "${BLUE}Uploading $* to $ADDRESS"

#loop through all arguments and upload with scp recursively to pi server
for i in "$@"; do
	scp -r -P 7778 "$i" "$ADDRESS" 2>/dev/null
done

#decolrize prompt with RESET environment variable
echo -e "Done${RESET}"

#if just uploading to website one html file
if [[ "$#" == 1 && "$1" =~ .*.html  ]]; then
	open "http://$IP:443/$1"
	#open -a "Sublime Text"
fi
