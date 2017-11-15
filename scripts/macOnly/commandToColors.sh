#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Tue Nov 14 19:53:20 EST 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

command="$@"

echo "$command"
ponysay -Wn "$(eval "$command" | randomCow.sh n)" | splitReg.sh -- --------------- lolcat
