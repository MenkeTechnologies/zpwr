#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Mon Mar  1 17:11:26 EST 2021
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

$ZPWR_ZTMUX new-session -s zpwr -d
$ZPWR_ZTMUX send-keys -t zpwr q C-h
$ZPWR_ZTMUX send-keys -t zpwr "$ZPWR_ZTMUX source-file $ZPWR_TMUX/control-window.conf; $ZPWR_ZTMUX select-pane -t zpwr:0.4; $ZPWR_ZTMUX send-keys 'cmatrix -C blue -abs' C-m" C-m
$ZPWR_ZTMUX attach -t zpwr
