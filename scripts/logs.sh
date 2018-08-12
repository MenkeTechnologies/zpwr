#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:15:30 EDT 2017
##### Purpose: bash script to monitor all log files with rainbow effect
##### Notes:
#}}}***********************************************************

shopt -s globstar

if [[ $(uname) == Darwin ]]; then
     tail -f /var/log/**/*.log /var/log/**/*.out | lolcat
else
    #linux
    distroName=$(lsb_release -a | head -1 | awk '{print $3}')

    if [[ $distroName == Raspbian ]]; then
        tail -f /var/log/**/*.log /var/log/{dmesg,wtmp,debug,lastlog,messages} /var/log/**/*.err | lolcat
    else
        printf "Unsupported distro: $distroName...\n" >&2
    fi

fi
