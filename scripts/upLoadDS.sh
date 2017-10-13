#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:30:05 EDT 2017
#####   Purpose: bash script to upload file to NAS
#####   Notes: 
#}}}***********************************************************
[[ -z "$1" ]] && echo "Need an argument." >&2 && exit 1

printf "${BLUE}Uploading $*\n" | ponysay -W 120
python -c "print('_'*100)" | lolcat
#loop through all arguments and upload with scp recursively to synology server
for i in "$@"; do
    scp -r -P "$DS_PORT" "$i" root@"$IP":"$HOLDING_ZONE"
done
python -c "print('_'*100)" | lolcat

printf "Done\n${RESET}"
