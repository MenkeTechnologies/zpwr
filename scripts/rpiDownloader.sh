#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:23:26 EDT 2017
#####   Purpose: bash  script to download from RPi to local host
#####   Notes: 
#}}}***********************************************************

printf "${BLUE}Downloading $*\n"
for i in "$@"; do
    #username of main computer is hardcoded
	scp -P1234 -r "$i" jacobmenke@localhost:\$HOME/Desktop
    #if not using reverse port forwarding then ip address must be hardcoded
	#scp -r "$i" jacobmenke@192.168.0.105:~/Desktop
done
printf "Done${RESET}\n"
