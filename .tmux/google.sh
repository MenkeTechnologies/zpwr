#!/usr/bin/env bash
#{{{ MARK:Header #**************************************************************
##### Author: WIZARD
##### Date: Wed Aug 14 01:21:10 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

test -z "$LOGFILE" && LOGFILE="$HOME/updaterlog.txt"

exec 1>> "$LOGFILE" 2>&1

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
                out="$(powershell.exe -c 'Get-Clipboard'| python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            fi
            ;;
        cygwin*)
            out="$(powershell.exe -c 'Get-Clipboard'| python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            ;;
        msys*)
            out="$(powershell.exe -c 'Get-Clipboard'| python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
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
                out="$(paste.exe)"
            fi
            ;;
        cygwin*)
            out="$(paste.exe)"
            ;;
        msys*)
            out="$(paste.exe)"
            ;;
        *)
            out="$(xclip -o -sel clip)"
            ;;
    esac
fi

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

cmd="$(getOpenCommand)"

if [[ "$1" == open ]]; then
    echo "DIRECT open '$cmd' to '$out'"
    $cmd "$out"
elif [[ "$1" == google ]];then
    echo "google search '$cmd' to '$out'"
    $cmd "https://google.com/search?q=$out"
else
    echo "unsupport subcommand '$1' to '$out'" >&2
fi



