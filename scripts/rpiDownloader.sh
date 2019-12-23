#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:23:26 EDT 2017
##### Purpose: bash script to download from RPi to local host
##### Notes:
#}}}***********************************************************

outputDir="Desktop"
master="jacobmenke"

printf "${ZPWR_BLUE}Downloading $*\n"
for i in "$@"; do
    scp -P1234 -r "$i" "$master"@localhost:\$HOME/"$outputDir"
    #if not using reverse port forwarding then ip address must be hardcoded
    #scp -r "$i" $(whoami)@192.168.0.105:~/"$outputDir"
done
printf "Done${RESET}\n"
