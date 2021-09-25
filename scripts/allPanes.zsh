#!/usr/bin/env zsh
#{{{                    MARK:Header
#************************************************************** #### Author: MenkeTechnologies
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
action="$2"

exec 2>> "$ZPWR_LOGFILE"

local active_win new_pane active_pane msg

#tmux wait-for -L fingerl1

active_sess="$(tmux display-message -p '#{session_id}')"

active_win="$(tmux display-message -p '#{window_id}')"

active_pane="$(tmux display-message -p '#{pane_id}')"


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

if [[ $action == "open" ]]; then
    raw="$(tmux save-buffer - | perl -pe 's@(^\s|\s$)@@')"
    if [[ -n "$raw" ]]; then
        if ! [[ $raw =~ :// ]]; then
            raw="http://$raw"
        fi
        echo "allPanes.zsh exec: ${ZPWR_OPEN_CMD} '$raw'" >&2
        ${=ZPWR_OPEN_CMD} "$raw"
    fi
elif [[ $action == "google" ]]; then
        raw="$(tmux save-buffer - | perl -pe 's@(^\s|\s$)@@')"
        if [[ -n "$raw" ]]; then
            print -rn -- "$raw" | ${=ZPWR_COPY_CMD}
            echo "allPanes.zsh exec: bash \"$ZPWR_TMUX/google.sh\" google" >&2
            bash "$ZPWR_TMUX/google.sh" google
        fi
elif tmux select-window -t "$active_sess:$active_win"; then
    if [[ "$msg" == full ]] && tmux select-pane -t "$active_sess:$active_win.$active_pane"; then
        tmux paste-buffer
    fi
fi

#tmux resize-pane -Z

exit 0
