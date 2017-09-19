#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:30:05 EDT 2017
#####   Purpose: bash script to upload file to NAS
#####   Notes: 
#}}}***********************************************************
echo -e "\e[44;37mUploading $*"
#loop through all arguments and upload with scp recursively to synology server
for i in "$@"; do
    scp -r -P $DS_PORT "$i" root@$IP:/volume1/homes/JAKENAS/holdingZone
done

echo -e "Done\e[0m"
