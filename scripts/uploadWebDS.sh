#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:31:35 EDT 2017
#####   Purpose: bash script to upload to web direcctory of NAS
#####   Notes: 
#}}}***********************************************************
ADDRESS="jacobmenke@$IP:/var/services/web"

printf "${BLUE}Uploading $* to $ADDRESS\n"
for i in "$@"; do
    scp -r -P $DS_PORT "$i" "$ADDRESS"
done

printf "Done\n${RESET}"
