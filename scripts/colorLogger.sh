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
    colortail -k /home/pi/.colortailconf -f /var/log/**/*.log /var/log/{dmesg,wtmp,debug,lastlog,messages} /var/log/**/*.err
fi


