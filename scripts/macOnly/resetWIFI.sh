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
    echo "could not source dir '$dir/init.sh'"
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
