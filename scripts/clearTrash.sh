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

    distroName="$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d \")"

    case $distroName in
        Raspbian ) rm -rf $HOME/.local/share/Trash/files/*
            ;;
        * )
            printf "Your distro $distroName is unsupported now...cannot proceed!\n" >&2
            exit 1
    esac

fi
