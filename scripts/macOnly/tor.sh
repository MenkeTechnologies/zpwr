#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:05:46 EDT 2017
##### Purpose: bash script to use tor network
##### Notes:
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$dir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

    while [[ ! -f "$dir/.zpwr_root" ]]; do
        dir="$(dirname "$dir")"
        if [[ "$dir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$dir/scripts/init.sh" "$dir"; then
        echo "Could not source dir '$dir/scripts/init.sh'."
        exit 1
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

zpwrCommandExists spoof || {
    zpwrLogConsoleErr "you need spoof!. Exiting."
    exit
}

function disable_proxy() {

    kill $!
    sudo networksetup -setsocksfirewallproxystate "$INTERFACE" off
    zpwrPrettyPrint "SOCKS proxy disabled"
    sudo spoof reset wi-fi
    zpwrPrettyPrint "MAC Address Reset"
    sudo networksetup -setairportpower en0 off
    sudo networksetup -setairportpower en0 on
    zpwrPrettyPrint "Wi-Fi On"
    exit 1
}

trap disable_proxy INT

zpwrPrettyPrint "Wi-Fi Off"
sudo networksetup -setairportpower en0 off
sudo spoof randomize wi-fi
zpwrPrettyPrint "MAC Address Spoofed"
sudo networksetup -setairportpower en0 on
zpwrPrettyPrint "Wi-Fi On With Artificial Identification"

sudo networksetup -setsocksfirewallproxy "$INTERFACE" 127.0.0.1 9050 off
sudo networksetup -setsocksfirewallproxystate "$INTERFACE" on

zpwrPrettyPrint "SOCKS proxy 127.0.0.1:9050 enabled."
zpwrPrettyPrint "Starting Tor..."

tor &
while true; do
    sleep 3
    curl --socks5 127.0.0.1:9050 icanhazip.com
done
