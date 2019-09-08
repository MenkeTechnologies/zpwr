#!/usr/bin/env zsh
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Tue Mar  5 11:26:41 EST 2019
##### Purpose: zsh script to gen the keybindings for README
##### Notes:
#}}}***********************************************************

{
    tmux lsk
    bindkey -M viins -L
    bindkey -M vicmd -L
    bindkey -M menuselect -L
    bindkey -M visual -L
    bindkey -M listscroll -L
    bindkey -M viopp -L
    alias -L
    vim -e -c 'redir! > ~/.temp1 | silent imap | redir END | quitall'
    cat ~/.temp1
    vim -e -c 'redir! > ~/.temp2 | silent nmap | redir END | quitall'
    cat ~/.temp2
    vim -e -c 'redir! > ~/.temp3 | silent vmap | redir END | quitall'
    cat ~/.temp3
    vim -e -c 'redir! > ~/.temp4 | silent cmap | redir END | quitall'
    cat ~/.temp4
    command rm ~/.temp{1..4}

} | perl -ne 'print if /\S+/' > ~/.temp$$

#do not know why have to create tempfile here
perl -pe 's@^([^#].*)$@$1@g' ~/.temp$$ | perl -pe 's@(.*) \(:.map\).*@$1@'

command rm ~/.temp$$

