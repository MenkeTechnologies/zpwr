#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:33:52 EDT 2017
##### Purpose: bash script to list files on file change
##### Notes:
#}}}***********************************************************
dir_watching="$1"
while read -d "" event; do
    clear
    echo "The event was $event"
    ls -AlhF
done < <(fswatch -r -0 -E "$dir_watching" -e "/\..")
