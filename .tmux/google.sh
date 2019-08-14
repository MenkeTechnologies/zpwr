#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Wed Aug 14 01:21:10 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

OS="$(uname -s)"
if [[ -z "$1" ]]; then
    case "$OS" in
        Darwin*)    
        out="$(pbpaste | python -c 'from urllib import quote; print quote(raw_input(), safe="")')"
        ;;
        *)          
        out="$(xclip -o -sel clip | python -c 'from urllib import quote; print quote(raw_input(), safe="")')"
        ;;
    esac
else
    case "$OS" in
        Darwin*)    
        out="$(pbpaste)"
        ;;
        *)          
        out="$(xclip -o -sel clip), safe="")')"
        ;;
    esac
fi

getOpenCommand(){
    OS="$(uname -s)"
    case "$OS" in
        Linux*)     open_cmd=xdg-open;;
        Darwin*)    open_cmd=open;;
        CYGWIN*)    open_cmd=cygstart;;
        MINGW*)     open_cmd=start;;
        *)          echo "Your OS: $OS is unsupported..." &>> "$LOGFILE" && return 2;;
    esac
    echo "$open_cmd"
}

cmd="$(getOpenCommand)"

if [[ "$1" == url ]]; then
    echo "logging DIRECT URL $cmd to $out " >> "$LOGFILE"
    "$cmd" "$out"
else
    echo "logging google search $cmd to $out " >> "$LOGFILE"
    "$cmd" "https://google.com/search?q=$out"
fi



