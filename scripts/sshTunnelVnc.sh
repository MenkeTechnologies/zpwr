#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 19:27:15 EDT 2017
##### Purpose: bash script to pipe vnc through ssh tunnel
##### Notes:
#}}}***********************************************************
ssh -C -L 5902:localhost:5901 r1
