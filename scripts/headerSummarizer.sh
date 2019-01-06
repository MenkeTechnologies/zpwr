#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Wed Jul 19 16:30:20 EDT 2017
##### Purpose: bash script to summarize shell scripts from headers
##### Notes:
#}}}***********************************************************

for file; do
    purpose="$(sed -n 6p "$file")"
    test -n "$purpose" && echo "$(basename $file) $purpose" && echo
done
