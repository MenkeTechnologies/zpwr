#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sat Apr 21 17:07:54 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

for file in "$@"; do
    newfile=${file%.*}
    vim -c 'hardcopy > '"$newfile.ps" -c quitall "$file"
done

cat *.ps | open -fa Preview

rm -f *.ps
