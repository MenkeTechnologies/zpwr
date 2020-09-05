#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul  3 12:41:20 EDT 2017
##### Purpose: bash script to display random figlet fonts
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

if [[ -z "$1" ]]; then
        loggErr "usage: $0 <textToDisplay>"
        return 1
fi

if [[ "$(uname)" == Darwin ]]; then
    figletDir="/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts"
else
    figletDir="/usr/share/figlet"
fi

textToDisplay="$1"
filter="$2"
time="$3"

if [[ -z $time ]]; then
    time=2
fi

trap "tput cnorm; clear; exit" INT
trap 'font=${ary[$randIndex]}' 3

for file in $(find "$figletDir" -iname "*.flf"); do
    ary+=($file)
done

rangePossibleIndices=${#ary[*]}

while true; do
    tput civis
    randIndex=$(($RANDOM % $rangePossibleIndices))
    font=${ary[$randIndex]}
    echo "$(date) random font is $font" >>"$ZPWR_LOGFILE"
    output="$(echo $textToDisplay | figlet -f $font)"

    if [[ -n "$filter" ]]; then
        echo "$(basename $font)" | $filter
        clear
        echo "$output" | "$filter"
    else
        echo "$(basename $font)"
        clear
        echo "$output"

    fi
    sleep $time
done
