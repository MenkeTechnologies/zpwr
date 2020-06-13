#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:19:24 EDT 2017
##### Purpose: bash script to watch output of command using clear
##### Notes:
#}}}***********************************************************

trap "tput cnorm; exit" INT TERM QUIT

function usage() {

    cat <<EOM
    usage:
    -h	help
    -d 	display date
    -l <lines> limit output to certain number of lines
EOM
    exit 1
}

optstring=dhl:
while getopts $optstring opt; do
    case $opt in
    h)
        usage >&2
        break
        ;;
    d)
        dateflag=true
        break
        ;;
    l)
        limitFlag=true
        num=$OPTARG
        break
        ;;
    *) usage >&2 ;;
    esac
done

shift $((OPTIND - 1))

if [[ -z "$1" ]]; then
    echo "need an arg" >&2
    exit 1
fi

if [[ -z "$2" ]]; then
    time=1
else
    time="$2"
fi

clear

tput civis

while true; do
    script -c ls &>/dev/null && {
        output="$(script -q /dev/null -c "$1" | tr -d '\r' | cat)"
    } || {
        output="$(script -q /dev/null $1 | tr -d '\r' | cat)"
    }
    clear

    if [[ $dateflag == true ]]; then
        echo "$output"
        echo
        printf "\e[1m$(date)\e[0m"
    else
        if [[ $limitFlag == true ]]; then
            echo -en "$output" | head -n $num
        else
            echo -en "$output"
        fi
    fi
    sleep $time
done
