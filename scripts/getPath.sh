#!/usr/bin/env bash 
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:18:45 EDT 2017
#####   Purpose: bash  script to  
#####   Notes: 
#}}}***********************************************************


#if this is absoulute path dont get the PWD
if [[ "$1" =~ ^[/~]+.*$ ]]; then
    #printf using no newline and single quotes
    #(to escape spaces and special characters)
    #and pipe path into pbcopy
    echo "$1"
    #alternatively, to print to stdout and pipe into pbcopy
    #printf \'$PWD/"$1"\' | tee /dev/tty | pbcopy 
    printf \'"$1"\'| pbcopy
else
    #this is a relative path
    #show the path, PWD is environment variable in BASH
    echo $PWD/"$1"

    #alternatively, to print to stdout and pipe into pbcopy
    #printf \'$PWD/"$1"\' | tee /dev/tty | pbcopy 
    printf \'$PWD/"$1"\'| pbcopy
fi
