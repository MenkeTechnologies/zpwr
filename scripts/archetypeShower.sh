#!/usr/bin/env bash
:Ag test



q




#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:01:32 EDT 2017
##### Purpose: bash script to show screenfetch
##### Notes:
#}}}***********************************************************
tput civis
trap 'tput cnorm; exit 130' INT
while true; do
    clear
    screenfetch 2>/dev/null
    sleep 1000
done

