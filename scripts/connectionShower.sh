#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:13:07 EDT 2017
#####   Purpose: bash script to continuously monitor open files
#####   Notes: 
#}}}***********************************************************

bash myWatchNoBlink.sh "lsof -i | sed s/""$(whoami)""//" 1
