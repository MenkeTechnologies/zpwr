#!/usr/bin/env bash
#{{{                    MARK:Header
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
    ZPWR_DISTRO_NAME=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)

    if [[ $ZPWR_DISTRO_NAME == raspbian ]]; then
        tail -f /var/log/**/*.log /var/log/{dmesg,wtmp,debug,lastlog,messages} /var/log/**/*.err | lolcat
    else
        printf "Unsupported distro: $ZPWR_DISTRO_NAME...\n" >&2
    fi

fi
