#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:32:05 EDT 2017
#####   Purpose: bash script to upload to web dir of RPi
#####   Notes: 
#}}}***********************************************************
[[ -z "$1" ]] && echo "Need an argument." >&2 && exit 1

ip=$IP
address="pi@$ip:/var/www/html"

printf "${BLUE}Uploading $* to $address\n"

#loop through all arguments and upload with scp recursively to pi server
for i in "$@"; do
	scp -r -P $RPI_PORT "$i" "$address" 2>/dev/null
done

#decolrize prompt with RESET environment variable
printf "Done\n${RESET}"

#if just uploading to website one html file
if [[ "$#" == 1 && "$1" =~ .*.html  ]]; then
	open "http://$ip:443/$1"
	#open -a "Sublime Text"
fi
