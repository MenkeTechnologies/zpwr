#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MENKETECHNOLOGIES
##### Date: Mon Jul 10 12:02:30 EDT 2017
##### Purpose: bash script to show tree of procs
##### Notes:
#}}}***********************************************************

bash myWatchNoBlink.sh -b 'pstree -g 3 -u '"$(whoami)"'| sed s@'"$(whoami)"'@@ | sed s@/.*/@@ | tail -150 | head -80' 1
