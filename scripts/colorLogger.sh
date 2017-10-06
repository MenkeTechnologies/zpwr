#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 17 13:30:47 EDT 2017
#####   Purpose: bash script to monitor log files in color
#####   Notes: 
#}}}***********************************************************

shopt -s globstar

#tailVersion="colortail -k $HOME/.colortailconf"
tailVersion=tail

weHaveCCZE=no

type ccze 1>/dev/null 2>&1 && {
weHaveCCZE=yes
}

if [[ ! -z "$1" ]]; then
    weHaveCCZE=no
fi

#dont care about std err
exec 2>/dev/null

if [[ $(uname) == Darwin ]]; then
    if [[ $weHaveCCZE == yes ]]; then
   $tailVersion -f /var/log/**/*.log /var/log/**/*.out \
       /var/log/cups/* "$HOME"/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out \
        /Library/Logs/**/*.log /usr/local/var/log/**/*.log | ccze
   else
   $tailVersion -f /var/log/**/*.log /var/log/**/*.out \
       /var/log/cups/* "$HOME"/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out \
        /Library/Logs/**/*.log 
    fi
else
    #linux
    distroName=$(lsb_release -a | head -1 | awk '{print $3}')

    if [[ $distroName == Raspbian ]]; then

        if [[ $weHaveCCZE == yes ]]; then
            $tailVersion -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err | ccze
        else
            $tailVersion -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err
        fi
    else 
        printf "Unsupported distro: $distroName...but trying anyways\n" >&2
        if [[ $weHaveCCZE == yes ]]; then
            $tailVersion -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages,syslog} /var/**/*.err | ccze
        else
            $tailVersion -f /var/**/*.log /var/log/{dmesg,debug,lastlog,messages, syslog} /var/**/*.err
        fi
    fi

fi
