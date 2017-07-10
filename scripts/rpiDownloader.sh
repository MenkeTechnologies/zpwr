#!/usr/bin/env b
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:23:26 EDT 2017
#####   Purpose: b script to  
#####   Notes: 
#}}}***********************************************************

printf "${BLUE}Downloading $*\n"
for i in "$@"; do
	scp -P1234 -r "$i" jacobmenke@localhost:~/Desktop
	#scp -r "$i" jacobmenke@192.168.0.105:~/Desktop
done
printf "Done${RESET}\n"
