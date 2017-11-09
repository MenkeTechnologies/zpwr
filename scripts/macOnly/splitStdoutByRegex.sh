#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Nov  8 23:57:19 EST 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

trap 'rm "$file"' INT

(( $# < 2 )) && echo "Need a regex and filter.." >&2 && exit 1

file=/tmp/temp$$
regex="$1"
cat > "$file"
output=`cat /tmp/temp$$` 
delim=$(echo "$output" | grep -n -- "$regex" | cut -d: -f1)

[[ $delim -ne 0 ]] && {
sed -n "1,$delim"p "$file" | lolcat
((delim++))
sed -n "$delim,$"p "$file"
} || sed -n '1,$p' "$file"

rm "$file"
