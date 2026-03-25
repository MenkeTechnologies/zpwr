#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Tue Aug 29 15:26:00 EDT 2017
##### Purpose: bash script to easily encrypt
##### Notes:
#}}}***********************************************************

encrypt_program=ccrypt

if [[ ! -e "$1" ]]; then
    echo "file or dir does not exist" >&2
    exit 1
fi
if [[ -f "$1" && ! "$1" =~ .*.zip ]]; then
    type $encrypt_program 1>/dev/null 2>&1 && {
        if [[ $1 =~ .*.cpt ]]; then
            eval "$encrypt_program -d $1"
            open ${1%*.cpt}
            eval "$encrypt_program -e ${1%*.cpt}"
        else
            eval "$encrypt_program -e $1"
        fi
    }
else
    encrypt_program=zip

    type $encrypt_program >/dev/null 2>&1 && {
        if [[ $1 =~ .*.zip ]]; then
            if [[ $encrypt_program == zip ]]; then
                eval "un$encrypt_program $1"
                rm -rf "$1"
            fi
        else
            eval "$encrypt_program -er $1.zip $1"
            rm -rf "$1"
        fi
    }

fi
