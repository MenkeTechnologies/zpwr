#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:20:00 EDT 2017
#####   Purpose: bash script to cd to new directory and show contents 
#####   Notes: must be sourced
#}}}***********************************************************
cd "$1"
clear
ls -FlhA

#be sure to source this script
# for example, alias f='source $SCRIPTS/goForward.sh'
