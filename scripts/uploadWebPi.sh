#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:32:05 EDT 2017
#####   Purpose: bash script to upload to web dir of RPi
#####   Notes: 
#}}}***********************************************************
[[ -z "$1" ]] && echo "Need an argument." >&2 && exit 1

address="pi@$MY_IP:/var/www/html"

printf "${BLUE}"
printf "Uploading $* to $address\n" | figlet | ponysay -W 120

#loop through all arguments and upload with scp recursively to pi server
python -c "print('_'*100)" | lolcat
printf "${BLUE}"
for i in "$@"; do
	scp -r -P $RPI_PORT "$i" "$address" 2>/dev/null
done

#decolrize prompt with RESET environment variable
perl -le 'print"_"x 100' | lolcat
printf "$BLUEDone\n${RESET}"

#if just uploading to website one html file
if [[ "$#" == 1 && "$1" =~ .*.html  ]]; then
	open "http://$MY_IP:443/$1"
	#open -a "Sublime Text"
fi
