#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Sep  7 01:37:02 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if uname | grep -q Darwin; then
    tmux source-file "$HOME/.tmux/tmux-mac"
elif uname | grep -q Linux; then
    pyv=$(python3 --version)
    if echo "$pyv" | grep -q 3.4; then
        tmux source-file "$HOME/.tmux/tmux-linux-34"
    elif echo "$pyv" | grep -q 3.5; then
        tmux source-file "$HOME/.tmux/tmux-linux-35"
    fi
    elif echo "$pyv" | grep -q 3.6; then
        tmux source-file "$HOME/.tmux/tmux-linux-36"
    fi
    elif echo "$pyv" | grep -q 3.7; then
        tmux source-file "$HOME/.tmux/tmux-linux-37"
    fi
fi

