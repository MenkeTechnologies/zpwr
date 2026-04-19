#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:34:26 EDT 2017
##### Purpose: bash script to upload to RPi on file change
##### Notes:
#}}}***********************************************************

#first argument is the directory to watch
#in quotes to account for spaces in directory name
dir_watching="$1"

script_to_run="$ZPWR_SCRIPTS/upLoadPi.sh"

#delimiter is \0 null character
while read -d "" event; do
    #the event should be the file that was changed, created or deleted.
    echo "The event was $event"
    bash $script_to_run "$event"
    #using fswatch command, avaiable at https://github.com/emcrisostomo/fswatch,
    #r for recursive option, E for extended regex, e to exclude .git and .idea etc from triggering
    #watch service, 0 to use null \0 character as delimiter
done < <(fswatch -r -0 -E "$dir_watching" -e "/\..")
