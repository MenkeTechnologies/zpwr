#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sun Jul 16 16:04:37 EDT 2017
#####   Purpose: bash script to monitor log files in color
#####   Notes: 
#}}}***********************************************************

colortail -k $HOME/.colortailconf -f /var/log/*.log /var/log/*.out 

