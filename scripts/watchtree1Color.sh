#!/usr/bin/env bas
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:36:30 EDT 2017
#####   Purpose: bas script to  
#####   Notes: 
#}}}***********************************************************

bash myWatchNoBlinkColorized.sh -b 'pstree -g 3 -u jacobmenke | sed s/jacobmenke// | sed s@/.*/@@ | tail -150 | head -80' 1
