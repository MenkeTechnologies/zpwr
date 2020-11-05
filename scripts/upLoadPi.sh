#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:30:30 EDT 2017
##### Purpose: bash script to to upload to RPi
##### Notes:
#}}}***********************************************************
if [[ -z "$1" ]]; then
    echo "usage: uploadPi.sh <file>" >&2
    exit 1
fi

printf "${ZPWR_COLOR_BLUE}Uploading $* to $IP\n" | ponysay -W 120

python -c "print('_'*100)" | lolcat
#loop through all arguments and upload with scp recursively to synology server
for i in "$@"; do
    scp -r -P $RPI_PORT "$i" pi@"$MY_IP":'$HOME/Desktop'
done

python -c "print('_'*100)" | lolcat
printf "Done\n${ZPWR_COLOR_RESET}"
