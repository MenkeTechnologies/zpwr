#!/usr/bin/env bash
printf "${BLUE}Downloading $*\n"
for i in "$@"; do
	scp -P1234 -r "$i" jacobmenke@localhost:~/Desktop
	#scp -r "$i" jacobmenke@192.168.0.105:~/Desktop
done
printf "Done${RESET}\n"
