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
	scp -r -P 7778 "$i" pi@$IP:~/Desktop

done
echo -e "Done${RESET}"
