#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 9 14:42:39 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
while [[ 1 ]]; do
    echo "$(date) Updating Software" >> "$LOGFILE"
    oldtime=$(date +"%s")
    bash -l updater.sh -e
    while [[ 1 ]]; do
        sleep $((3*60))
        newtime=$(Date +"%s")
        timediff=$(($newtime-$oldtime))
        echo "Time diff $timediff for $(date) new:$newtime old: $oldtime " >> "$LOGFILE"
        if (( $timediff > $((3600*24)) )); then
            break
        fi
    done
done
