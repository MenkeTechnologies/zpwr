#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Aug 14 01:21:10 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

getOpenCommand(){
    local open_cmd

    case "$ZPWR_OS_TYPE" in
        darwin*)  open_cmd='open' ;;
        cygwin*)  open_cmd='cygstart' ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                open_cmd='nohup xdg-open'
            else
                open_cmd='cmd.exe /c start ""'
            fi
            ;;
        msys*)    open_cmd='start ""' ;;
        *)        echo "Platform $ZPWR_OS_TYPE not supported"
            return 1
            ;;
    esac
    echo "$open_cmd"

}

test -z "$ZPWR_LOGFILE" && ZPWR_LOGFILE="$HOME/.zpwr/local/zpwrLog.txt"

exec 1>> "$ZPWR_LOGFILE" 2>&1

ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"

if [[ "$1" == "google" ]]; then
    case "$ZPWR_OS_TYPE" in
        darwin*)
            out="$(pbpaste | python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                out="$(xclip -o -sel clip | python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            else
                out="$(powershell.exe -noprofile -command 'Get-Clipboard'| python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            fi
            ;;
        cygwin*)
            out="$(powershell.exe -noprofile -command 'Get-Clipboard'| python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            ;;
        msys*)
            out="$(powershell.exe -noprofile -command 'Get-Clipboard'| python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            ;;
        *)
            out="$(xclip -o -sel clip | python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            ;;
    esac
else
    case "$ZPWR_OS_TYPE" in
        darwin*)
            out="$(pbpaste)"
            ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                out="$(xclip -o -sel clip)"
            else
                out="$(powershell.exe -noprofile -command 'Get-Clipboard')"
            fi
            ;;
        cygwin*)
            out="$(powershell.exe -noprofile -command 'Get-Clipboard')"
            ;;
        msys*)
            out="$(powershell.exe -noprofile -command 'Get-Clipboard')"
            ;;
        *)
            out="$(xclip -o -sel clip)"
            ;;
    esac
fi

cmd="$(getOpenCommand)"

if [[ "$1" == open ]]; then
    dir="$(cat $HOME/.zpwr/.tmux/local/pane_pwd)"
    echo "pane dir is '$dir'"
    echo "DIRECT open '$cmd' to '$out'"
    if ! $cmd "$out";then
        echo "failback open '$cmd' to '$dir/$out'"
        $cmd "$dir/$out"
    fi
elif [[ "$1" == google ]];then
    echo "google search '$cmd' to '$out'"
    $cmd "https://google.com/search?q=$out"
else
    echo "unsupported subcommand '$1' to '$out'" >&2
fi



