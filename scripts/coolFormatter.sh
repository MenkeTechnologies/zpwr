#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:13:32 EDT 2017
##### Purpose: bash script to add funky formatting
##### Notes:
#}}}***********************************************************

#loop through stdin and add escape sequences at head and tail of each line
while read; do
    echo "$REPLY" | sed -e 's@[^[:blank:]]@_&_@g' -e 's@[[:blank:]]@/////@g'
done
