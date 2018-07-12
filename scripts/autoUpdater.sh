#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul  9 14:42:39 EDT 2018
#####   Purpose: bash script to
#####   Notes:
#}}}***********************************************************

while [[ 1 ]]; do
    echo "$(date) Updating Software" >> "$LOGFILE"
    bash -l updater.sh -e
    sleep $((3600 * 24))
done
