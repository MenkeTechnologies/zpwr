#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 17 13:30:47 EDT 2017
#####   Purpose: bash script to monitor log files in color
#####   Notes: 
#}}}***********************************************************

shopt -s globstar

if [[ $(uname) == Darwin ]]; then
    colortail -k $HOME/.colortailconf -f /var/log/**/*.log /var/log/**/*.out 
else
    #linux
    distroName=$(lsb_release -a | head -1 | awk '{print $3}')

    if [[ $distroName == Raspbian ]]; then
        colortail -k /home/pi/.colortailconf -f /var/log/**/*.log /var/log/{dmesg,wtmp,debug,lastlog,messages} /var/log/**/*.err
    else 
        printf "Unsupported distro: $distroName...\n" >&2
    fi

fi
