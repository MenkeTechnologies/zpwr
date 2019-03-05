#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Tue Mar  5 11:26:41 EST 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************


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

    echo "# Zsh Listscrol lMode keybindings (bindkey -M listscroll -L)"
    bindkey -M listscroll -L

    echo "# Zsh Vim Operator Mode keybindings (bindkey -M viopp -L)"
    bindkey -M viopp -L

    echo "# Vim Keybindings Insert Mode (:imap)"
    #vim -c imap -c quitall
    echo "# Vim Keybindings Normal Mode (:nmap)"
    #vim -c nmap
        
    echo "# Vim Keybindings Visual Mode (:vmap)"
    #vim -c vmap

    echo "# Vim Keybindings Command Colon Mode (:cmap)"
    #vim -c cmap

} > temp$$

sed -E 's@^([^#].*)$@- ```\1```@g' temp$$
command rm temp$$
