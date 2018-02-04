#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jan  1 19:50:15 EST 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

if (( $# > 1)); then
    num="$1"
    shift
    bash "$SCRIPTS/myWatchMaintainEscapes.sh" -l "$num" 'grc --colour=auto df -H' "$@"
else
    bash "$SCRIPTS/myWatchMaintainEscapes.sh" 'grc --colour=auto df -H' "$@"

fi
