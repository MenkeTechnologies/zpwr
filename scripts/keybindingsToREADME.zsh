#!/usr/bin/env zsh
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Tue Mar  5 11:26:41 EST 2019
##### Purpose: zsh script to gen the keybindings for README
##### Notes:
#}}}***********************************************************

if [[ -z "$ZPWR_TEMPFILE" ]]; then
    ZPWR_TEMPFILE="/tmp/.temp$$"
fi

{
    echo "# Tmux keybindings (tmux lsk)"
    tmux lsk

    echo "# Zsh Vim Insert Mode keybindings (bindkey -M viins -L)"
    bindkey -M viins -L

    echo "# Zsh Vim Normal Mode keybindings (bindkey -M vicmd -L)"
    bindkey -M vicmd -L

    echo "# Zsh Menuselect Mode keybindings (bindkey -M menuselect -L)"
    bindkey -M menuselect -L

    echo "# Zsh Vim Visual Mode keybindings (bindkey -M visual -L)"
    bindkey -M visual -L

    echo "# Zsh Listscroll Mode keybindings (bindkey -M listscroll -L)"
    bindkey -M listscroll -L

    echo "# Zsh Vim Operator Mode keybindings (bindkey -M viopp -L)"
    bindkey -M viopp -L

    printf "# Vim Keybindings Insert Mode (:imap)"
    vim -e -c 'redir! > ~/.zpwr/.temp/.temp1 | silent imap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp1
    echo

    printf "# Vim Keybindings Normal Mode (:nmap)"
    vim -e -c 'redir! > ~/.zpwr/.temp/.temp2 | silent nmap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp2
    echo

    printf "# Vim Keybindings Visual Mode (:vmap)"
    vim -e -c 'redir! > ~/.zpwr/.temp/.temp3 | silent vmap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp3
    echo

    printf "# Vim Keybindings Command Colon Mode (:cmap)"
    vim -e -c 'redir! > ~/.zpwr/.temp/.temp4 | silent cmap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp4
    echo

    command rm ~/.zpwr/.temp/.temp{1..4}

} | perl -ne 'print if m{\S+}' > "$ZPWR_TEMPFILE"

#do not know why have to create tempfile here
perl -pe 's@^([^#].*)$@- ```$1```@g' "$ZPWR_TEMPFILE" | perl -pe 's@(.*) \(:.map\).*@$1@'

command rm "$ZPWR_TEMPFILE"
