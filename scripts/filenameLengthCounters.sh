#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Tue Sep 12 19:46:08 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

declare -a problem_files

while read file;do
    file_name="$(basename "$file")"
    length="$(echo $file_name | wc -c | tr -d ' ')"
    let length--
    if (( $length > 143)) ;then
        printf "$file has a file length of $length\n"
        problem_files+=( "$file" )
    else
        :
       # echo "$file_name is short at length $length"
    fi
done < <(find `pwd`/"$1")

for file in "${problem_files[@]}"; do
    rm -i "$file"
done
