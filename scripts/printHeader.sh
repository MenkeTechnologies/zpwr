#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:22:22 EDT 2017
#####   Purpose: bash script to print banner with perl
#####   Notes: 
#}}}***********************************************************

if [[ -z "$SCRIPTS" ]]; then
    SCRIPTS="$HOME/Documents/shellScripts"
fi

perl -X "$SCRIPTS/banner.pl";
