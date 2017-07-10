#!/usr/bin/env bash
trap "tput cnorm; exit" INT TERM QUIT

usage(){

    cat <<EOM
    usage:
    -h	help
    -d 	display date
EOM
exit 1
}


optstring=dh
while getopts $optstring opt
do
    case $opt in
        h) usage >&2; break;;
        d)dateflag=true;break;;
        *) usage >&2;;
    esac
done

shift $((OPTIND-1))

if [[ -z "$1" ]]; then
    echo "nee<F5>d an arg" >&2
    exit 1
fi

if [[ -z "$2" ]]; then
    TIME=1
else
    TIME="$2"
fi

clear

tput civis

while [[ true ]]; do

    x=$(eval "$1")
    clear

    if [[ $dateflag == true ]]; then
        echo "$x"
        echo
        printf "\e[1m`date`\e[0m"
    else
        echo -n "$x"
    fi
    sleep $TIME
done
