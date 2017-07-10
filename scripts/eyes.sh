#!/usr/bin/env bash

trap "tput cnorm; clear; ls -G -FlhAO; exit" INT
trap 'fortuneQuote=$(fortune)' 3 

declare -a ary

for file in $(cowsay -l); do
    ary+=( $file )	 	
done
rangePossibleIndices=${#ary[*]}

while true; do
    tput civis
    fortuneQuote="$(fortune)"
    if [[ ! -z "$1" ]]; then
        fortuneQuote="$(figlet -f $1 \"$fortuneQuote\")"
    fi
    clear
    randIndex=$(($RANDOM % $rangePossibleIndices))
    view=${ary[$randIndex]}

    if [[ ! -z "$2" ]]; then
        echo "$fortuneQuote" | cowsay -f $view -n | "$2"
    else
        echo "$fortuneQuote" | cowsay -f $view -n | lolcat
    fi

    sleep 60 
done
