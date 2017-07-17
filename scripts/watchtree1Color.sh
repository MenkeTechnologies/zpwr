#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:36:30 EDT 2017
#####   Purpose: bash script to show tree of processes
#####   Notes: 
#}}}***********************************************************

bash myWatchNoBlinkColorized.sh -b 'pstree -g 3 -u '"$(whoami)"' | sed s/'"$(whoami)"'// | sed s@/.*/@@ | tail -150 | head -80' 1
