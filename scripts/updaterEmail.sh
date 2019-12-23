#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sat Jul 8 20:17:34 EDT 2017
##### Purpose: bash script for updating and sending email with results
##### Notes:
#}}}***********************************************************

SCRIPTS="$HOME/.zpwr/scripts"
ZPWR_LOGFILE="$ZPWR_HIDDEN_DIR/zpwrLog.txt"

(cat "$SCRIPTS/updater.sh" | bash -l 2>&1 | tee "$ZPWR_LOGFILE" | mutt -s \"Log from $(date)\" jamenk@email.wm.edu 2>"$ZPWR_LOGFILE" &)
