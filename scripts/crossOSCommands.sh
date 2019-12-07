#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:10:25 EDT 2017
##### Purpose: bash script to contain open, copy and paste commands
##### Notes:
#}}}***********************************************************

if [[ -z "$ZPWR_OS_TYPE" ]]; then
    export ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"
fi

getOpenCommand(){
    local open_cmd

    case "$ZPWR_OS_TYPE" in
        darwin*)  open_cmd='open'
          ;;
        cygwin*)  open_cmd='cygstart'
          ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                open_cmd='nohup xdg-open'
            else
                open_cmd='cmd.exe /c start ""'
            fi
            ;;
        msys*)    open_cmd='start ""'
            ;;
        *)        echo "Platform $ZPWR_OS_TYPE not supported"
                    return 1
                    ;;
    esac

    echo "$open_cmd"
}

getPasteCommand(){
    local paste_cmd

    case "$ZPWR_OS_TYPE" in
        darwin*)
            paste_cmd='pbpaste'
            ;;
        cygwin*)
            paste_cmd="powershell.exe -c 'Get-Clipboard'"
            ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                paste_cmd='xclip -o -sel clip'
            else
                paste_cmd="powershell.exe -c 'Get-Clipboard'"
            fi
            ;;
        msys*)
            paste_cmd="powershell.exe -c 'Get-Clipboard'"
            ;;
        *)
            echo "Platform $ZPWR_OS_TYPE not supported"
            return 1
            ;;
    esac

    echo "$paste_cmd"
}

getCopyCommand(){
    local copy_cmd

    case "$ZPWR_OS_TYPE" in
        darwin*)
            copy_cmd='pbcopy'
            ;;
        cygwin*)
            copy_cmd='clip.exe'
            ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                copy_cmd='xclip -i -sel clip'
            else
                copy_cmd='clip.exe'
            fi
            ;;
        msys*)
            copy_cmd='clip.exe'
            ;;
        *)
            echo "Platform $ZPWR_OS_TYPE not supported"
            return 1
            ;;
    esac

    echo "$copy_cmd"
}

export ZPWR_OPEN_CMD="$(getOpenCommand)"
export ZPWR_COPY_CMD="$(getCopyCommand)"
export ZPWR_PASTE_CMD="$(getPasteCommand)"



