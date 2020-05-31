#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:05:46 EDT 2017
##### Purpose: bash script to use tor network
##### Notes:
#}}}***********************************************************
if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR_SCRIPTS" && export ZPWR_SCRIPTS="$HOME/.zpwr/scripts"
    source "$ZPWR_SCRIPTS/lib.sh" || {
        echo "cannot access lib.sh" >&2
        exit 1
    }
fi

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
