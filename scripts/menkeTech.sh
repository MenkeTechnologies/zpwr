#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:16:19 EDT 2017
##### Purpose: bash script to print out Menke Technologies with figlet
##### Notes:
#}}}***********************************************************

tput civis

trap 'tput cnorm;exit' INT
while true; do
    clear
    printf "\e[1m"
    figlet -f cosmic Menke Technologies
    printf "\e[0m"
    sleep 1000
done
