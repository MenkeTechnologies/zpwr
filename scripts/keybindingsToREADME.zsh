#!/usr/bin/env zsh
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

    printf "# Vim Keybindings Insert Mode (:imap)"
    vim -e -c 'redir > temp1 | silent imap | redir END | quitall'
    cat temp1
    echo

    printf "# Vim Keybindings Normal Mode (:nmap)"
    vim -e -c 'redir > temp2 | silent nmap | redir END | quitall'
    cat temp2
    echo
        
    printf "# Vim Keybindings Visual Mode (:vmap)"
    vim -e -c 'redir > temp3 | silent vmap | redir END | quitall'
    cat temp3
    echo

    printf "# Vim Keybindings Command Colon Mode (:cmap)"
    vim -e -c 'redir > temp4 | silent cmap | redir END | quitall'
    cat temp4
    echo

    command rm temp{1..4}

} | perl -ne 'print if /\S+/' > temp$$
    perl -pe 's@^([^#].*)$@- ```$1```@g' temp$$ | perl -pe 's@(.*) \(:.map\).*@$1@'
command rm temp$$
