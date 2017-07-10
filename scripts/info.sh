#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:20:35 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************
trap "tput cnorm ;exit" INT

tput civis

while true;do
    clear;uname -a | tr 'a-z' 'A-Z' | lolcat
    sleep 60
done
