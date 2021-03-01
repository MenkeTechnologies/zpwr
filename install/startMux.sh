#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Mon Mar  1 17:11:26 EST 2021
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

tmux new-session -s zpwr -d
tmux send-keys -t zpwr q C-h
tmux send-keys -t zpwr "tmux source-file $ZPWR_TMUX/control-window.conf; tmux select-pane -t zpwr:0.4; tmux send-keys 'cmatrix -C blue -abs' C-m" C-m
tmux attach -t zpwr
