#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:14:53 EDT 2017
#####   Purpose: bash script to monitor all log files with color
#####   Notes: requires globstar option
#}}}***********************************************************
shopt -s globstar
colortail -k /home/pi/.colortailconf -f /var/log/**/*.out /var/log/**/*.log /var/log/{dmesg,wtmp,debug,lastlog,messages} /var/log/**/*.err
