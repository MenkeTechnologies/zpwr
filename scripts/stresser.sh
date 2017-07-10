#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:06:21 EDT 2017
#####   Purpose: bash script to stress system 
#####   Notes: high CPU usage
#}}}***********************************************************
for (( i = 0; i < 10; i++ )); do
	#launch yes in the background in subshell disowning it
	#send all output to /dev/null
	( yes &> /dev/null &)
done
