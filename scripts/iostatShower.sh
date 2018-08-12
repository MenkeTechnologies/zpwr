#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:21:04 EDT 2017
##### Purpose: bash script to show io stats
##### Notes:
#}}}***********************************************************

clear
bash "$SCRIPTS/genericDisplayer.sh" 'iostat -d | lolcat'
