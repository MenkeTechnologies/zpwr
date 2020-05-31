#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul  3 12:41:20 EDT 2017
##### Purpose: bash script to display random figlet fonts
##### Notes:
#}}}***********************************************************

[[ "$(uname)" == Darwin ]] && {
    FIGLET_DIR="/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts"
} || {
    FIGLET_DIR="/usr/share/figlet"
}

TEXT_TO_DISPLAY="Menke Technologies"
FILTER="$1"

#set -x

trap "tput cnorm; clear; ls -G -FlhAO; exit" INT
trap 'font=${ary[$randIndex]}' 3

for file in $(find "$FIGLET_DIR" -iname "*.flf"); do
    ary+=($file)
done

rangePossibleIndices=${#ary[*]}

while true; do
    tput civis
    randIndex=$(($RANDOM % $rangePossibleIndices))
    font=${ary[$randIndex]}
    output="$(echo $TEXT_TO_DISPLAY | figlet -f $font)"

    if [[ -n "$FILTER" ]]; then
        echo "$(basename $font)" | "$FILTER"
        clear
        echo "$output" | "$FILTER"
    else
        echo "$(basename $font)"
        clear
        echo "$output"

    fi
    sleep 30
done
