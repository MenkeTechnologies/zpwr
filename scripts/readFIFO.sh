#!/usr/bin/env bash
#created by JAKOBMENKE --> Sat May 13 17:54:21 EDT 2017 

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
