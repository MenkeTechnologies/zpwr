#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:16:38 EDT 2017
##### Purpose: bash script to show cowsay eyes
##### Notes:
#}}}***********************************************************

trap "tput cnorm; clear; ls -G -FlhAO; exit" INT
trap 'fortuneQuote=$(fortune)' 3

declare -a ary

for file in $(cowsay -l); do
    ary+=( "$file" )
done
rangePossibleIndices=${#ary[*]}

while true; do
    tput civis
    fortuneQuote="$(fortune)"
    if [[ "$1" ]]; then
        fortuneQuote="$(figlet -f "$1" \"$fortuneQuote\")"
    fi
    clear
    randIndex=$(( RANDOM % rangePossibleIndices ))
    view=${ary[$randIndex]}

    if [[ "$2" ]]; then
        echo "$fortuneQuote" | cowsay -f $view -n | "$2"
    else
        echo "$fortuneQuote" | cowsay -f $view -n | lolcat
    fi

    sleep 60
done
