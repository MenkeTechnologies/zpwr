#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Feb  7 21:47:47 EST 2021
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

if ! type -ap thumbs &>/dev/null; then
    tmux display-message 'You need thumbs!'
    exit 0
fi

if ! zmodload zsh/net/socket; then
    tmux display-message "Could NOT load zsh/net/socket"
    exit 0
fi

local type

type="$1"

exec 2>> "$ZPWR_LOGFILE"

local active_win new_pane active_pane msg

#tmux wait-for -L fingerl1

active_win="$(tmux lsw -F '#{?window_active,y,n} #{window_id}' | perl -ane 'print $1 if m{y (.*)}')"
active_sess="$(tmux ls -F '#{?session_attached,y,n} #{session_id}' | perl -ane 'print $1 if m{y (.*)}')"
active_pane="$(tmux lsp -F '#{?pane_active,y,n} #{pane_id}' | perl -ane 'print $1 if m{y (.*)}')"


tmux new-window -n "[zpwr-thumbs-$active_sess-$active_win-$active_pane]" "zsh $ZPWR_SCRIPTS/allPanesSwap.zsh \\$active_sess $active_win $type $ZPWR_SOCKET$$"

zsocket -l $ZPWR_SOCKET$$
fdl=$REPLY

# block
zsocket -a $fdl
fdc=$REPLY
read -u $fdc && msg=$REPLY

exec {fdc}>&-
exec {fdl}>&-
rm -f "$ZPWR_SOCKET$$"

#tmux wait-for -L fingerl1
#tmux resize-pane -Z

#tmux swap-pane -d -s "$new_pane" -t "$active_pane"

if tmux select-window -t "$active_sess:$active_win"; then
   if [[ "$msg" == full ]] && tmux select-pane -t "$active_sess:$active_win.$active_pane"; then
        tmux paste-buffer
    fi
fi

#tmux resize-pane -Z

exit 0
