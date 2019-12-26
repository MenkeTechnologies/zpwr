#!/usr/bin/env zsh
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Tue Mar  5 11:26:41 EST 2019
##### Purpose: zsh script to gen the keybindings for README
##### Notes:
#}}}***********************************************************
if [[ $ZPWR_USE_NEOVIM == true ]]; then
    cmd=nvim
else
    cmd=vim
fi

if [[ -z "$ZPWR_TEMPFILE" ]]; then
    ZPWR_TEMPFILE="/tmp/.temp$$"
fi
{
    $cmd -e -c 'redir! > ~/.zpwr/.temp/.temp1 | silent imap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp1
    $cmd -e -c 'redir! > ~/.zpwr/.temp/.temp2 | silent nmap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp2
    $cmd -e -c 'redir! > ~/.zpwr/.temp/.temp3 | silent vmap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp3
    $cmd -e -c 'redir! > ~/.zpwr/.temp/.temp4 | silent cmap | redir END | quitall'
    cat ~/.zpwr/.temp/.temp4
    command rm ~/.zpwr/.temp/.temp{1..4}

} | perl -ne 'print if /\S+/' > "$ZPWR_TEMPFILE"

#do not know why have to create tempfile here
perl -pe 's@^([^#].*)$@$1@g' "$ZPWR_TEMPFILE" | perl -pe 's@(.*) \(:.map\).*@$1@'

command rm "$ZPWR_TEMPFILE"

