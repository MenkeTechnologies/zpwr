#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:30:53 EDT 2017
##### Purpose: bash script to run updater scripts, output to logfile
##### Notes:
#}}}***********************************************************

bash "$ZPWR_HIDDEN_DIR/scripts/updater.sh" >"$ZPWR_HIDDEN_DIR/zpwrLog.txt" 2>&1
