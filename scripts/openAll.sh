#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:20:30 EDT 2017
##### Purpose: bash script to open all files of given type
##### Notes:
#}}}***********************************************************

function displayProgressIndicator() {

    local spinner="\|/-"            # spinner
    local chars=1                   # number of characters to display
    local delay=.1                  # time in seconds between characters
    local prompt="press any key..." # user prompt
    local clearline="\e[K"          # clear to end of line (ANSI terminal)
    local CR="\r"

    #make cursor invisible
    tput civis

    while true; do # loop until user presses a key

        printf "thinking... "
        printf " %.${chars}s$CR" "$spinner" ##print first character of spinner then
        # carriage return to beginning of line
        local temp=${spinner#?}         # remove first character from $spinner
        spinner=$temp${spinner%"$temp"} # and add it to the end
        sleep $delay

    done
}

function startCursor() {

    #start swiveling cursor in background
    displayProgressIndicator &
    #grab its PID so can kill later
    progress_pid=$!
    sleep 1
}

function killCursor() {

    kill $progress_pid
    wait $progress_pid 2>/dev/null
    tput cnorm
    printf "\e[0m"
}

printf "\e[37;44m"

if [[ -z "$1" ]]; then
    echo "usage: openAll.sh <file>..." >&2
    exit 1
fi

#set the fileExtension variable to first argument
typeset -a fileExtensions
fileString=""

for file; do
    #transform filename extension arguments to lowercase
    file="$(echo $file | tr '[:upper:]' '[:lower:]')"
    #build up string for grep -E
    fileString+=$file"|"
    #add extension to array
    fileExtensions+=($file)

done

#array
filesArray=()

#if user prematurely hits control c then we need to kill the cursor and then exit
trap 'killCursor; echo; exit' INT
startCursor

dir_to_search="$(pwd)"

if [[ -n "$2" ]]; then
    dir_to_search="$2"
fi

#process substituion to find all files with the fileExtension
while read line; do

    lcline="$(echo $line | tr '[:upper:]' '[:lower:]')"

    #if the file is not a directory
    if [[ ! -d "$lcline" ]]; then
        #if the last characters of the filename after the . are the same as the first argument
        #then increment counter

        for ending in ${fileExtensions[@]}; do
            [[ "${lcline##*.}" == "$ending" ]] && filesArray+=("$line")
        done

    fi
    #find all files in pwd that have the fileExtensions in their names, remove last pipe from fileString
done < <(find "$dir_to_search" -type f | grep -E -i "${fileString%|}")

killCursor

if ((${#filesArray[@]} < 1)); then
    echo "No files found with file extension: \"$fileExtension\""
    exit 25
else
    for file in "${filesArray[@]}"; do
        echo "$file"
    done
    #echo the count of items in the array
    echo "We found ${#filesArray[@]} files."
fi

printf "\e[1mDo want to open these ${#filesArray[@]} files? \e[0m"
read -n1

if [[ "$REPLY" == "y" ]]; then
    #loop through all files in array and open them
    string=""
    for file in "${filesArray[@]}"; do
        open "$file"
    done

else
    #start prompt on next line
    echo
fi

printf "\n\e[0m"
