#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:05:46 EDT 2017
##### Purpose: bash script to use tor network
##### Notes:
#}}}***********************************************************
source="${BASH_SOURCE[0]}"
while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
  dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
  source="$(readlink "$source")"
  [[ $source != /* ]] && source="$dir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

if ! source "$dir/init.sh"; then
    if ! source "$dir/../init.sh"; then
        echo "could not source dir '$dir/../init.sh'"
    fi
fi

INTERFACE=Wi-Fi

#commented out sections not necessary if sudo is not requiring passwd
#sudo -v

##keep sudo alive
#while true; do
#sudo -n true
#sleep 60
#kill -0 "$$"
#exit
#done 2>/dev/null &

exists spoof || {
    loggErr "you need spoof!. Exiting."
    exit
}

function disable_proxy() {

    kill $!
    sudo networksetup -setsocksfirewallproxystate "$INTERFACE" off
    prettyPrint "SOCKS proxy disabled"
    sudo spoof reset wi-fi
    prettyPrint "MAC Address Reset"
    sudo networksetup -setairportpower en0 off
    sudo networksetup -setairportpower en0 on
    prettyPrint "Wi-Fi On"
    exit 1
}

trap disable_proxy INT

prettyPrint "Wi-Fi Off"
sudo networksetup -setairportpower en0 off
sudo spoof randomize wi-fi
prettyPrint "MAC Address Spoofed"
sudo networksetup -setairportpower en0 on
prettyPrint "Wi-Fi On With Artificial Identification"

sudo networksetup -setsocksfirewallproxy "$INTERFACE" 127.0.0.1 9050 off
sudo networksetup -setsocksfirewallproxystate "$INTERFACE" on

prettyPrint "SOCKS proxy 127.0.0.1:9050 enabled."
prettyPrint "Starting Tor..."

tor &
while true; do
    sleep 3
    curl --socks5 127.0.0.1:9050 icanhazip.com
done
