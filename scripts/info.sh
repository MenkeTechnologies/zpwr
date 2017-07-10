#!/usr/bin/env bash
trap "tput cnorm ;exit" INT

tput civis

while true;do
    clear;uname -a | tr 'a-z' 'A-Z' | lolcat
    sleep 60
done
