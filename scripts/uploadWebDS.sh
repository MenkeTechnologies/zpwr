#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:31:35 EDT 2017
#####   Purpose: bash script to u
#####   Notes: 
#}}}***********************************************************
ADDRESS="jacobmenke@$IP:/var/services/web"

echo -e "\033[44m\033[37mUploading $* to $ADDRESS"
for i in "$@"; do
    scp -r -P 7777 "$i" "$ADDRESS"
done

echo -e "Done\033[0m"
