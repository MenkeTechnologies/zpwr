#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Apr 16 22:16:13 EDT 2020
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
out="$(command ps -e |& command grep -v -E '\bgrep\b')"
if echo "$out" | command grep -qs 'emacs.*bg-daemon'; then
    loggConsole "not starting emacs daemon"
else
    loggConsole "starting emacs daemon"
    command emacs -nw --daemon=instance1
fi
# if there is a frame
if emacsclient -n -e "(if (> (length (frame-list)) 1) 't)" 2> /dev/null | command grep -sq t; then
    #attach client
    loggConsole "attach frame"
    command emacsclient -nw -s instance1 "$@"
else
    #create frame and attach
    loggConsole "create frame"
    command emacsclient -nw -c -s instance1 "$@"
fi
