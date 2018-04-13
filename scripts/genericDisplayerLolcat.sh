#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:17:59 EDT 2017
#####   Purpose: bash script to display output and pipe into lolcat refreshing every 60 secs
#####   Notes:
#}}}***********************************************************

tput civis

#printf "\e[0;8m"
trap 'tput cnorm; exit' INT
while true; do
		clear
		eval "$@ | lolcat"
		sleep 60
done
