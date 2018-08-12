#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sat Jul 8 20:17:34 EDT 2017
##### Purpose: bash script for updating and sending email with results
##### Notes:
#}}}***********************************************************

SCRIPTS="/Users/jacobmenke/Documents/shellScripts"
LOGFILE="/Users/jacobmenke/updaterlog.txt"

( cat "$SCRIPTS/updater.sh" | bash -l 2>&1 | tee "$LOGFILE" | mutt -s \"Log from `date`\" jamenk@email.wm.edu 2>"$LOGFILE" &)
