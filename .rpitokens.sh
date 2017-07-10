#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sun Jul  9 20:58:02 EDT 2017
#####   Purpose: bash script to RPI specific shell options
#####   Notes: 
#}}}***********************************************************

alias cam='raspistill -vf -hf -rot 270 -o cam.jpg'
alias vid='raspivid -vf -hf -rot 270 -t 10000 -o cam.h264'

