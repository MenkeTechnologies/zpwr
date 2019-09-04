#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:15:26 EDT 2017
##### Purpose: bash script to list files and folders in pwd and optionally sort by size
##### Notes:
#}}}***********************************************************

sortedCommand=gsort

type "$sortedCommand" >/dev/null 2>&1 || sortedCommand=sort
# set -x
usage() {
    #here doc for printing multiline
    cat <<EOM >&2
    usage:
    -h	help
    -s 	summarize
    -a 	show hidden files
EOM
    printf "\e[0m"
}

#show file sizes of all files in pwd
#checking for presence of sorted flag which is
#set in getopts
dontSummarizeSizes() {
    [[ -n $sorted ]] && du -sh * | $sortedCommand -h || du -sh *
}

#show just summarize size
summarizeSizes() {
    du -sh $(pwd)
}

showHidden() {
    #checking for presence of sorted flag which is
    #set in getopts
    if [[ $sorted ]]; then
        #take output of ls -A (no . and ..) and call du -sh on each file and then pipe into $sortedCommand -h
        {
            while read line; do
                du -sh "$line"
            done < <(ls -A)
        } | $sortedCommand -h
    else
        #same while read llop but dont pipe into $sortedCommand
        while read line; do
            du -sh "$line"
        done < <(ls -A)
    fi

}

#valid options
optstring=shta

while getopts $optstring op; do
    case $opt in
    h)
        usage
        exit
        ;;
    #set boolean for sorted
    s) sorted=true ;;
    #set boolean for showing hidden files
    a) showHiddenBool=true ;;
    #set boolean for showing just summary
    t) summarizeSizesBool=true ;;
    *)
        usage
        exit
        ;;
    esac
done

#check boolean for showing hidden files, sorted flag has been set or not set by here
#exit after finishing to prevent illegal combination of -a and -t
if [[ -n "$showHiddenBool" ]]; then
    showHidden
    exit
    #check boolean for showing summary, sorted flag has been set or not set by here
    #exit after finishing
elif [[ -n "$summarizeSizesBool" ]]; then
    summarizeSizes
    exit
fi

#if passed the -a or -t options then this point will not be reached
if [[ -z $leave ]]; then
    dontSummarizeSizes
fi
