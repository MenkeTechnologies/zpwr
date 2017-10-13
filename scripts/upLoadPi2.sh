#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:30:30 EDT 2017
#####   Purpose: bash  script to to upload to RPi
#####   Notes: 
#}}}***********************************************************
[[ -z "$1" ]] && echo "Need an argument." >&2 && exit 1

printf "${BLUE}Uploading $* to $IP\n" | ponysay -W 120

python -c "print('_'*100)" | lolcat
#loop through all arguments and upload with scp recursively to synology server
for i in "$@"; do
    scp -r -P "$RPI2_PORT" "$i" pi@"$IP":'$HOME/Desktop'

done

python -c "print('_'*100)" | lolcat
printf "Done\n${RESET}"
