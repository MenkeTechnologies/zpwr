#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:29:29 EDT 2017
#####   Purpose: bash script to transfer file through scp
#####   Notes: 
#}}}***********************************************************

if [[ -z "$1" ]]; then
	echo "First Arg is the file to transfer" 1>&2
	exit 1
fi

transferFile="$1"

scp -r "$transferFile" r2:~/Desktop
