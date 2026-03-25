#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:22:22 EDT 2017
##### Purpose: bash script to print banner with perl
##### Notes:
#}}}***********************************************************

[[ -z "$ZPWR_SCRIPTS" ]] && ZPWR_SCRIPTS="$HOME/.zpwr/scripts"

perl -X "$ZPWR_SCRIPTS/banner.pl"
