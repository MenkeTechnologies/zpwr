#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:31:35 EDT 2017
##### Purpose: bash script to upload to web direcctory of NAS
##### Notes:
#}}}***********************************************************
if [[ -z "$1" ]]; then
    echo "usage: uploadWebDS.sh <file>" >&2
    exit 1
fi

address="jacobmenke@$MY_IP:/var/services/web"

printf "${ZPWR_COLOR_BLUE}Uploading $* to $address\n" | ponysay -W 120

python -c "print('_'*100)" | lolcat
#loop through all arguments and upload with scp recursively to synology server
for i in "$@"; do
    scp -r -P $DS_PORT "$i" "$address"
done
python -c "print('_'*100)" | lolcat

printf "Done\n${ZPWR_COLOR_RESET}"
