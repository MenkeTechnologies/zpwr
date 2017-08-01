#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 31 23:38:25 EDT 2017
#####   Purpose: bash script to remove root and username from output
#####   Notes: 
#}}}***********************************************************

while read input; do
    echo "$input" | sed -E "s/$(whoami)|root//g"
done
