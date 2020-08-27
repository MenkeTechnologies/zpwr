#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul  3 12:41:20 EDT 2017
##### Purpose: bash script to display random figlet fonts
##### Notes:
#}}}***********************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
    source "$ZPWR_ENV_FILE" || {
        echo "cannot access $ZPWR_ENV_FILE" >&2
        exit 1
    }
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
