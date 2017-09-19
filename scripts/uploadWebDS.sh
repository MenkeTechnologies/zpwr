#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:31:35 EDT 2017
#####   Purpose: bash script to upload to web direcctory of NAS
#####   Notes: 
#}}}***********************************************************
address="jacobmenke@$IP:/var/services/web"

printf "${BLUE}Uploading $* to $address\n"
#loop through all arguments and upload with scp recursively to synology server
for i in "$@"; do
    scp -r -P $DS_PORT "$i" "$address"
done

printf "Done\n${RESET}"
