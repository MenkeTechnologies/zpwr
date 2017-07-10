#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:15:30 EDT 2017
#####   Purpose: bash script to  monitor all log files and pipe into 
#####   Notes: 
#}}}***********************************************************



tail -f /var/log/*.log | lolcat
