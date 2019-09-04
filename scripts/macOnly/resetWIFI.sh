#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:05:46 EDT 2017
##### Purpose: bash script to use tor network
##### Notes:
#}}}***********************************************************
prettyPrint() {
    printf "\e[4;1m$1\e[0m\n"
}

#commented out sections not necessary if sudo is not requiring passwd
#sudo -v

##keep sudo alive
#while true; do
#sudo -n true
#sleep 60
#kill -0 "$$"
#exit
#done 2>/dev/null &

sudo networksetup -setairportpower en0 off
printf "WiFi Reset\n"
sudo networksetup -setairportpower en0 on
