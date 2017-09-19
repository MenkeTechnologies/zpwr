#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:30:30 EDT 2017
#####   Purpose: bash  script to to upload to RPi
#####   Notes: 
#}}}***********************************************************
printf "${BLUE}Uploading $*\n"
for i in "$@"; do
    scp -r -P $RPI_PORT "$i" pi@"$IP":'$HOME/Desktop'

done
printf "Done\n${RESET}"
