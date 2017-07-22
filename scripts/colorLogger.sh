#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 17 13:30:47 EDT 2017
#####   Purpose: bash script to monitor log files in color
#####   Notes: 
#}}}***********************************************************

shopt -s globstar

set -x
tailVersion="colortail -k $HOME/.colortailconf"

type colortail 1>/dev/null 2>&1 || {
    tailVersion=tail
}

if [[ $(uname) == Darwin ]]; then
  $tailVersion -f /var/log/**/*.log /var/log/**/*.out /var/log/DiagnosticMessages \
        /var/log/asl /var/log/cups/* "$HOME"/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out \
        /Library/Logs/**/*.log 
else
    #linux
    distroName=$(lsb_release -a | head -1 | awk '{print $3}')

    if [[ $distroName == Raspbian ]]; then
        $tailVersion -f /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages} /var/log/**/*.err
    else 
        printf "Unsupported distro: $distroName...but trying anyways\n" >&2
        $tailVersion -f /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages} /var/log/**/*.err
    fi

fi
