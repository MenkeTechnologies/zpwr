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

type ccze 1>/dev/null 2>&1 && {
    pipeVersion=" | ccze"
}



if [[ $(uname) == Darwin ]]; then
  $tailVersion -f /var/log/**/*.log /var/log/**/*.out /var/log/DiagnosticMessages/*.asl \
      /var/log/asl/*.asl /var/log/cups/* "$HOME"/Library/Logs/**/*.log "$HOME"/Library/Logs/**/*.out \
        /Library/Logs/**/*.log $pipeVersion
else
    #linux
    distroName=$(lsb_release -a | head -1 | awk '{print $3}')

    if [[ $distroName == Raspbian ]]; then
        $tailVersion -f /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages} /var/log/**/*.err $pipeVersion
    else 
        printf "Unsupported distro: $distroName...but trying anyways\n" >&2
        $tailVersion -f /var/log/**/*.log /var/log/{dmesg,debug,lastlog,messages} /var/log/**/*.err $pipeVersion
    fi

fi
