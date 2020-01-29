#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sat Jul 8 20:17:34 EDT 2017
##### Purpose: bash script for updating and sending email with results
##### Notes:
#}}}***********************************************************

ZPWR_SCRIPTS="$HOME/.zpwr/scripts"
ZPWR_LOGFILE="$ZPWR_LOCAL/zpwrLog.txt"

if [[ -n $ZPWR_EMAIL ]]; then
    (cat "$ZPWR_SCRIPTS/updater.sh" | bash -l 2>&1 | tee "$ZPWR_LOGFILE" | mutt -s \"Log from $(date)\" $ZPWR_EMAIL 2>"$ZPWR_LOGFILE" &)
else
    loggErr "cannot proceed without \$ZPWR_EMAIL"
fi

