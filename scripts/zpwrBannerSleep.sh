#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Dec 13 05:40:41 EST 2020
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

function bannerSleep(){

    local time
    time=1

    if [[ -n $1 ]]; then
        time=$1
    fi

    bash "$ZPWR_SCRIPTS/about.sh"
    sleep $time
}

