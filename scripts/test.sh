#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Oct 18 18:50:38 EDT 2017
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

exec 2> >(blueText.sh)
exec >&2
ls
id
pwd
exec > >(tr a-z A-Z)

echo "$(ls)" 
