#!/usr/bin/env bash
#created by JACOBMENKE at Mon Jun 12 17:33:50 EDT 2017

tput civis

trap 'tput cnorm;exit' INT
while 'true'; do
    clear
    printf "\e[1m"
    figlet -f cosmic Menke Technologies
    printf "\e[0m"
    sleep 1000
done
