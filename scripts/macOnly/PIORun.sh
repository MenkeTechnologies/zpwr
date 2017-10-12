#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Oct 11 17:52:47 EDT 2017
#####   Purpose: bash script to upload to Arduino
#####   Notes: 
#}}}***********************************************************

ps -ef | grep platformio | grep -v grep > /dev/null && {

   ps -ef | grep platformio | grep -v grep | awk '{print $2}' | xargs kill
}

platformio run -t upload && platformio device monitor
