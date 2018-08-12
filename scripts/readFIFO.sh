#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:07:53 EDT 2017
##### Purpose: bash script to read from fifo pipe
##### Notes:
#}}}***********************************************************

pipe=/tmp/testpipe
pipe=$HOME/Desktop/testpipe
trap "rm -f $pipe" EXIT

if [[ ! -p $pipe ]]; then
    mkfifo $pipe
fi

while true;do
    if read line <$pipe; then
        if [[ "$line" == 'quit' ]]; then
            break
        fi
        echo $line
    fi
done

echo "Reader exiting"
