#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Oct 23 02:35:16 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************


x=5

if [[ x > 50 ]]; then
    echo "the dogs are coll"
fi

ls
pwd
say dogs

echo "my name is dogs"


x=50


while (( x > 10)); do
    echo "its $x"
    let x--
done

