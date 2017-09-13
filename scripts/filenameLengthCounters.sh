#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Tue Sep 12 19:46:08 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

while read file;do
    file_name="$(basename "$file")"
    length="$(echo $file_name | wc -c | tr -d ' ')"
    let length--
    printf "$file_name has a file length of $length\n"
done < <(find $1)
