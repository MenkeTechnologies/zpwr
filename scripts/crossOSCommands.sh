#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:10:25 EDT 2017
##### Purpose: bash script to contain open, copy and paste commands
##### Notes:
#}}}***********************************************************

if [[ -z "$ZPWR_OS_TYPE" ]]; then
    export ZPWR_OS_TYPE="$(uname -s | perlrs -e 'print lc<>')"
fi

# cache uname -r for WSL detection (avoids repeated subshells)
if [[ "$ZPWR_OS_TYPE" == linux* && -z "$_zpwr_uname_r" ]]; then
    _zpwr_uname_r="$(uname -r)"
fi

function zpwrGetOpenCommand(){

    local open_cmd

    case "$ZPWR_OS_TYPE" in
        darwin*)  open_cmd='open'
          ;;
        cygwin*)  open_cmd='cygstart'
          ;;
        linux*)
            if [[ "$_zpwr_uname_r" != *icrosoft* ]];then
                open_cmd='nohup xdg-open'
            else
                open_cmd='cmd.exe /c start ""'
            fi
            ;;
        *bsd*)
            open_cmd='nohup xdg-open'
            ;;
        msys*)    open_cmd='start ""'
            ;;
        *)        echo "Platform $ZPWR_OS_TYPE not supported"
                    return 1
                    ;;
    esac

    echo "$open_cmd"
}

function zpwrGetPasteCommand(){

    local paste_cmd

    case "$ZPWR_OS_TYPE" in
        darwin*)
            paste_cmd='pbpaste'
            ;;
        cygwin*)
            paste_cmd="powershell.exe -noprofile -command 'Get-Clipboard'"
            ;;
        linux*)
            if [[ "$_zpwr_uname_r" != *icrosoft* ]];then
                paste_cmd='xclip -o -sel clip'
            else
                paste_cmd="powershell.exe -noprofile -command 'Get-Clipboard'"
            fi
            ;;
        msys*)
            paste_cmd="powershell.exe -noprofile -command 'Get-Clipboard'"
            ;;
        *bsd*)
            paste_cmd='xclip -o -sel clip'
            ;;

        *)
            echo "Platform $ZPWR_OS_TYPE not supported"
            return 1
            ;;
    esac

    echo "$paste_cmd"
}

function zpwrGetCopyCommand(){

    local copy_cmd

    case "$ZPWR_OS_TYPE" in
        darwin*)
            copy_cmd='pbcopy'
            ;;
        cygwin*)
            copy_cmd='clip.exe'
            ;;
        linux*)
            if [[ "$_zpwr_uname_r" != *icrosoft* ]];then
                copy_cmd='xclip -i -sel clip'
            else
                copy_cmd='clip.exe'
            fi
            ;;
        *bsd*)
            copy_cmd='xclip -i -sel clip'
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

[[ -z "$ZPWR_OPEN_CMD" ]] && export ZPWR_OPEN_CMD="$(zpwrGetOpenCommand)"
[[ -z "$ZPWR_COPY_CMD" ]] && export ZPWR_COPY_CMD="$(zpwrGetCopyCommand)"
[[ -z "$ZPWR_PASTE_CMD" ]] && export ZPWR_PASTE_CMD="$(zpwrGetPasteCommand)"



