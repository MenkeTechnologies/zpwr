#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:17:09 EDT 2017
##### Purpose: bash script to display output with invisible cursor refreshing every 60 secs
##### Notes:
#}}}***********************************************************

tput civis

trap 'tput cnorm; exit' INT

printf "\e[0;8m"
while true; do
    clear
    eval "$@"
    sleep 60
done
