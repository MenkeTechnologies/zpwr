#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:30:53 EDT 2017
#####   Purpose: bash script to run updater scripts, output to logfile
#####   Notes: 
#}}}***********************************************************

bash $HOME/Documents/shellScripts/updater.sh > $HOME/updaterlog.txt 2>&1
