#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Aug 14 01:21:10 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

function zpwrGetOpenCommand(){
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

test -z "$ZPWR_LOGFILE" && ZPWR_LOGFILE="$ZPWR_LOCAL/zpwrLog.txt"

exec 1>> "$ZPWR_LOGFILE" 2>&1

ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"

pyScript='import sys,urllib.parse; print(urllib.parse.quote(sys.stdin.read().strip(), safe=""))'

if [[ "$1" == "google" ]]; then
    case "$ZPWR_OS_TYPE" in
        darwin*)
            out="$(pbpaste | python3 -c "$pyScript")"
            ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                out="$(xclip -o -sel clip | python3 -c "$pyScript")"
            else
                out="$(powershell.exe -noprofile -command 'Get-Clipboard'| python3 -c "$pyScript")"
            fi
            ;;
        cygwin*)
            out="$(powershell.exe -noprofile -command 'Get-Clipboard'| python3 -c "$pyScript")"
            ;;
        msys*)
            out="$(powershell.exe -noprofile -command 'Get-Clipboard'| python3 -c "$pyScript")"
            ;;
        *)
            out="$(xclip -o -sel clip | python3 -c "$pyScript")"
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

    # trim spaces
    out="$(printf -- "%s" "$out" | perl -pe 's@^\s+|\s+$@@g')"
fi

cmd="$(zpwrGetOpenCommand)"

if [[ "$1" == open ]]; then
    dir="$(cat $ZPWR_TMUX_LOCAL/pane_pwd)"
    echo "Pane dir is '$dir'"
    echo "Direct open '$cmd' to '$out'"
    if ! $cmd "$out";then
        echo "failback open '$cmd' to '$dir/$out'"
        $cmd "$dir/$out"
    fi
elif [[ "$1" == google ]];then
    echo "Google search '$cmd' to '$out'"
    $cmd "https://google.com/search?q=$out"
else
    echo "Unsupported subcommand '$1' to '$out'" >&2
fi



