#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:27:39 EDT 2017
#####   Purpose: bash script to pipe vnc through ssh to RPi2 
#####   Notes: 
#}}}***********************************************************
 ssh -C -L 5903:localhost:5901 r2
