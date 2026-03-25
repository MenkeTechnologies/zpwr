#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:20:06 EDT 2017
##### Purpose: bash script to count all commands in PATH
##### Notes:
#}}}***********************************************************

total=0
commands=""

function findTotal() {

    local total f

    total=$(expr $(ls -F $1 | grep ".*[*@]" | wc -l) + $total)

    for f in $(ls -A $1); do

        if [ -x "$1/$f" ]; then

            commands="$f $commands"
        fi

    done

}

while getopts "chd" OPTION; do
    case $OPTION in

    c)
        ECHO="true"
        ;;

    d)
        echo here too
        ;;

    h)
        echo "\033[44m\033[37mUsage:"
        echo "count.sh -h "
        echo "count.sh -c "
        echo ""
        echo " -c to see just count"
        echo " -h help (this output)\033[0m"
        exit 0
        ;;

    esac
done


dirNum=$(expr $(echo $PATH | tr -cd : | wc -c) + 1)

for i in $(seq 1 $dirNum); do
    dir=$(echo $PATH | cut -d: -f$i)
    findTotal $dir
done

echo "\033[44m\033[37mThe total number of commands avaliable in your PATH: $total"

if [ "$ECHO" = "true" ]; then
    printf "\033[0m"
    exit 0
fi

printf "Do you want to see the commands? y or n: "
read see

commandList=""

if [ "$see" = "y" ]; then
    for i in $commands; do
        commandList="$i\n$commandList"
    done
    echo $commandList | sort -f | tail -n +2 | less
fi

printf "\033[0m"
