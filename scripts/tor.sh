#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:05:46 EDT 2017
#####   Purpose: bash script to use tor network
#####   Notes: 
#}}}***********************************************************
prettyPrint (){
    printf "\e[4;1m$1\e[0m\n"

}

#keep sudo alive
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$"
    exit
done 2>/dev/null &

function disable_proxy() {
    sudo networksetup -setsocksfirewallproxystate "$INTERFACE" off
    prettyPrint "SOCKS proxy disabled"
    exit 1
}

trap disable_proxy INT

sudo networksetup -setsocksfirewallproxy "$INTERFACE" 127.0.0.1 9050 off
sudo networksetup -setsocksfirewallproxystate "$INTERFACE" on

prettyPrint "SOCKS proxy 127.0.0.1:9050 enabled."
prettyPrint "Starting Tor..."
tor
