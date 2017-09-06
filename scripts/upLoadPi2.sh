#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:30:30 EDT 2017
#####   Purpose: bash  script to to upload to RPi
#####   Notes: 
#}}}***********************************************************
echo -e "${BLUE}Uploading $*"
for i in "$@"; do
    scp -r -P 8605 "$i" pi@$IP:\$HOME/Desktop

done
echo -e "Done${RESET}"
