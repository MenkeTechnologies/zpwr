#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:29:29 EDT 2017
##### Purpose: bash script to transfer file through scp
##### Notes:
#}}}***********************************************************
(( $# < 1 )) && echo "First Arg is the file to transfer" >&2 && exit 1
transferFile="$1"
#escape $HOME to prevent expansion on original host
scp -r "$transferFile" 'r2:$HOME/Desktop'
