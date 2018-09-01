#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Aug 31 23:37:08 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

while true; do
    ping -c 1 8.8.8.8 || sudo reboot
done
