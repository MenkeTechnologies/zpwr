#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:36:58 EDT 2017
#####   Purpose: bash script to monitor tree of processes
#####   Notes:
#}}}***********************************************************

bash myWatchNoBlink.sh -b 'pstree -g 3 -u '"$(whoami)"' | sed s@'"$(whoami)"'@@ | sed s@/.*/@@ | tail -75' 1











