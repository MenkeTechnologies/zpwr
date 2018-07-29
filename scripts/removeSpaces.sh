#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sun Jul 29 16:31:51 EDT 2018
#####   Purpose: perl script to remove trailing spaces
#####   Notes:
#}}}***********************************************************

for file in "$@";do
    echo "Working on $file"
    perl -pi -e 's@\s+$@\n@g; s@\x09$@    @g;s@\x20@ @g; s@^s*\n$@@; s@(\S)[\x20]{2,}@$1\x20@' "$file"
done


