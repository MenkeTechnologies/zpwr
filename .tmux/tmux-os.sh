#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Sep  7 01:37:02 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

logg(){
    echo "$(date) $1 "
}
exec 2>> ~/updaterlog.txt
exec 1>> ~/updaterlog.txt
set -x
verify_tmux_version () {
    if uname | grep -q Darwin; then
        tmux source-file "$HOME/.tmux/tmux-mac"
        exit 0
    elif uname | grep -q Linux; then
        pyv=$(python3 --version)
        logg "python version: $pyv"
        if echo "$pyv" | grep -q 3.4; then
            tmux source-file "$HOME/.tmux/tmux-linux-34"
            logg "done 34"
            exit 0
        elif echo "$pyv" | grep -q 3.5; then
            tmux source-file "$HOME/.tmux/tmux-linux-35"
            logg "done 35"
            exit 0
        elif echo "$pyv" | grep -q 3.6; then
            tmux source-file "$HOME/.tmux/tmux-linux-36"
            logg "done 36"
            exit 0
        elif echo "$pyv" | grep -q 3.7; then
            tmux source-file "$HOME/.tmux/tmux-linux-37"
            logg "done 37"
            exit 0
        fi
        exit 0
    fi
}

verify_tmux_version
