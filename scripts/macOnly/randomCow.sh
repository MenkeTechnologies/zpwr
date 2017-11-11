#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul  3 12:41:20 EDT 2017
#####   Purpose: bash script to display random cowsay fonts
#####   Notes: 
#}}}***********************************************************

(( $# == 0 )) && echo "need an arg " >&2 && exit 1

COWSAY_DIR=/usr/local/lib/node_modules/cowsay/cows
TEXT_TO_DISPLAY="$1"
FILTER="$2"

for file in $(find "$COWSAY_DIR" -iname "*.cow"); do
    ary+=( $file )	
done

rangePossibleIndices=${#ary[*]}

randIndex=$(($RANDOM % $rangePossibleIndices))
font=${ary[$randIndex]}


if (( $# == 1 )); then
    width=$1
    cat | cowsay -f "$font" -W$width | lolcat
elif (( $# == 2 ));then
    output="$(echo $TEXT_TO_DISPLAY | cowsay -f $font)"

    if [[ "$FILTER" ]]; then
        echo "$output" | "$FILTER"
    else
        echo "$output"
    fi

fi

