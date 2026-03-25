#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sun Jul 29 16:31:51 EDT 2018
##### Purpose: perl script to remove trailing spaces
##### Notes:
#}}}***********************************************************

for file; do
    printf "\x1b[38;5;129mRemoving from \x1b[38;5;57m${file}\x1b[38;5;46m"'!'"\n\x1b[0m"
    perl -pi -e 's@\s+$@\n@g; s@\x09$@ @g;s@\x20@ @g; s@(\S)[\x20]{2,}@$1\x20@' "$file"
    perl -i -pe 's@^\s*$@\n@g' "$file"
    perl -i -0pe 's@\n\n\n+@\n\n@g' "$file"
done
