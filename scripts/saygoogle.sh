#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: PI
##### Date: Sun Aug 19 23:45:15 EDT 2018
##### Purpose: bash script to
##### Notes: use google's text to speech service
#}}}***********************************************************
IFS=+
/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols \
    "http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=$*&tl=en"
