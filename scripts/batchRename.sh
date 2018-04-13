#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:10:25 EDT 2017
#####   Purpose: bash script to rename multiple files
#####   Notes:
#}}}***********************************************************
printf "\e[37;44m"

displayProgress(){
    local spinner="\|/-" # spinner
    local chars=1 # number of characters to display
    local delay=.1 # time in seconds between characters
    local prompt="press any key..." # user prompt
    local clearline="\e[K" # clear to end of line (ANSI terminal)
    local CR="\r"

    #make cursor invisible
    tput civis

    while 'true' ; do # loop until user presses a key

        printf "thinking... "
        printf " %.${chars}s$CR" "$spinner" ##print first character of spinner then
        # carriage return to beginning of line
        local temp=${spinner#?}               # remove first character from $spinner
        spinner="$temp${spinner%"$temp"}" # and add it to the end
        sleep "$delay"
    done
}

startCursor(){
    #start swiveling cursor in background
    displayProgress &
    #grab its PID so can kill later
    progress_pid=$!
    sleep 1
}

killCursor(){
    kill $progress_pid
    wait $progress_pid 2>/dev/null
    tput cnorm
}

convertFiles(){

    for file in $(ls *.$originalFileEnding); do
        #get first part of name ie frame, delimited by underscore
        local first=$(echo ${file%%$delim*})
        local last=$(echo ${file##*_})
        local number=$(echo ${last%%.*})
        #get number convert to base 10 and strip leading zeros
        local number=$((10#$number))

        local newfile="$first$number.$endFileEnding"

        if [[ -z "$1" ]]; then
            mv "$file" "$newfile"
        else
            mv "$file" "$newfile"
        fi

    done
}

checkForExistence(){
    ls *.$originalFileEnding &> /dev/null || { echo "No '$originalFileEnding' files found..."; exit; }
}

#store file ending in originalFileEnding
read -p "What type of file are you converting from? " originalFileEnding

#store output file ending in endFileEnding
read -p "What type of file are you converting to? " endFileEnding

delim=_
startCursor
killCursor

checkForExistence

printf "Here are the results...\n"
#loop through all files in present working directory that have originalFileEnding
convertFiles

read -n1 -p "Proceed? "
echo

case "$REPLY" in
    [yY] )
        startCursor
        convertFiles change
        killCursor

        ;;
esac

#decolorize
printf "\e[0m\n"

exit 0

# file="frame_052.gif"
