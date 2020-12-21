#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Tue Mar  5 11:26:41 EST 2019
##### Purpose: zsh script to gen the keybindings for README
##### Notes:
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source file ZPWR_LIB_INIT '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    zpwrBaseDir="${0:A}"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="${zpwrBaseDir:h}"
        if [[ "$zpwrBaseDir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
        echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
        exit 1
    fi
    unset zpwrBaseDir
fi

if [[ $ZPWR_USE_NEOVIM == true ]]; then
    if zpwrCommandExists nvim; then
        cmd=nvim
    else
        cmd=vim
    fi
    cmd=nvim
else
    cmd=vim
fi

if [[ -z "$ZPWR_TEMPFILE" ]]; then
    ZPWR_TEMPFILE="/tmp/.temp$$"
fi
if [[ -z "$ZPWR_TEMPFILE1" ]]; then
    ZPWR_TEMPFILE1="/tmp/.temp$$-1"
fi
if [[ -z "$ZPWR_TEMPFILE2" ]]; then
    ZPWR_TEMPFILE2="/tmp/.temp$$-2"
fi
if [[ -z "$ZPWR_TEMPFILE3" ]]; then
    ZPWR_TEMPFILE3="/tmp/.temp$$-3"
fi
if [[ -z "$ZPWR_TEMPFILE4" ]]; then
    ZPWR_TEMPFILE4="/tmp/.temp$$-4"
fi
{
    $cmd -e -c 'redir! > '$ZPWR_TEMPFILE1' | silent imap | redir END | quitall'
    cat $ZPWR_TEMPFILE1
    $cmd -e -c 'redir! > '$ZPWR_TEMPFILE2' | silent nmap | redir END | quitall'
    cat $ZPWR_TEMPFILE2
    $cmd -e -c 'redir! > '$ZPWR_TEMPFILE3' | silent vmap | redir END | quitall'
    cat $ZPWR_TEMPFILE3
    $cmd -e -c 'redir! > '$ZPWR_TEMPFILE4' | silent cmap | redir END | quitall'
    cat $ZPWR_TEMPFILE4

} | perl -ne 'print if /\S+/' > "$ZPWR_TEMPFILE"

command rm "$ZPWR_TEMPFILE1"
command rm "$ZPWR_TEMPFILE2"
command rm "$ZPWR_TEMPFILE3"
command rm "$ZPWR_TEMPFILE4"

#do not know why have to create tempfile here
perl -pe 's@^([^#].*)$@$1@g' "$ZPWR_TEMPFILE" | perl -pe 's@(.*) \(:.map\).*@$1@'

command rm "$ZPWR_TEMPFILE"

