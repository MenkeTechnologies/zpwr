#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sun Jul  9 23:41:45 EDT 2017
#####   Purpose: bash script to empty trash
#####   Notes: 
#}}}***********************************************************

if [[ "$(uname)" == "Darwin" ]]; then
    rm -rf "$HOME"/.Trash/*
else
    #works for RPi
    rm -rf $HOME/.local/share/Trash/files/*
fi
