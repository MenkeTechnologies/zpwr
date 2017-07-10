#!/usr/bin/env bash
#created by JAKOBMENKE --> Tue Feb  7 07:10:41 EST 2017 

if [[ -z "$1" ]]; then
	echo "First Arg is the file to transfer" 1>&2
	exit 1
fi

transferFile="$1"

scp -r "$transferFile" r2:~/Desktop
