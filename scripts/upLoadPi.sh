#!/usr/bin/env bash
echo -e "${BLUE}Uploading $*"
for i in "$@"; do
	scp -r -P 7778 "$i" pi@$IP:~/Desktop

done
echo -e "Done${RESET}"
