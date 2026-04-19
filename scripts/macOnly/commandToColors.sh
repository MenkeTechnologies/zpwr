#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Tue Nov 14 19:53:20 EST 2017
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

command="$@"
out="$(eval $command)"

[[ -z "$out" ]] && out=NULL

ponysay -Wn "$(echo "$out" | randomCow.sh n)" | splitReg.sh -- --------------- lolcat
