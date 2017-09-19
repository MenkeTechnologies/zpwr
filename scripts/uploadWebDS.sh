#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:31:35 EDT 2017
#####   Purpose: bash script to upload to web direcctory of NAS
#####   Notes: 
#}}}***********************************************************
ADDRESS="jacobmenke@$IP:/var/services/web"

echo -e "\033[44m\033[37mUploading $* to $ADDRESS"
for i in "$@"; do
    scp -r -P $DS_PORT "$i" "$ADDRESS"
done

echo -e "Done\033[0m"
