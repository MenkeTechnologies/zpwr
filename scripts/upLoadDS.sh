#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:30:05 EDT 2017
#####   Purpose: bash script to upload file to NAS
#####   Notes: 
#}}}***********************************************************
printf "\e[44;37mUploading $*\n"
#loop through all arguments and upload with scp recursively to synology server
for i in "$@"; do
    scp -r -P "$DS_PORT" "$i" root@$IP:"$HOLDING_ZONE"
done

printf "Done\n\e[0m"
