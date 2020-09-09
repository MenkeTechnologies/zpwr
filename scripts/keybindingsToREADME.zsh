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
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    dir="${0:A}"

    while [[ ! -f "$dir/.zpwr_root" ]]; do
        dir="${dir:h}"
        if [[ "$dir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$dir/scripts/init.sh" "$dir"; then
        echo "Could not source dir '$dir/scripts/init.sh'."
        exit 1
    fi
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
    vim -e -c 'redir! > '$ZPWR_TEMPFILE1' | silent imap | redir END | quitall'
    cat "$ZPWR_TEMPFILE1"
    echo

    printf "# Vim Keybindings Normal Mode (:nmap)"
    vim -e -c 'redir! > '$ZPWR_TEMPFILE2' | silent nmap | redir END | quitall'
    cat "$ZPWR_TEMPFILE2"
    echo

    printf "# Vim Keybindings Visual Mode (:vmap)"
    vim -e -c 'redir! > '$ZPWR_TEMPFILE3' | silent vmap | redir END | quitall'
    cat "$ZPWR_TEMPFILE3"
    echo

    printf "# Vim Keybindings Command Colon Mode (:cmap)"
    vim -e -c 'redir! > '$ZPWR_TEMPFILE4' | silent cmap | redir END | quitall'
    cat "$ZPWR_TEMPFILE4"
    echo


} | escapeRemover.pl | perl -ne 'print if m{\S+}' > "$ZPWR_TEMPFILE"


command rm "$ZPWR_TEMPFILE1"
command rm "$ZPWR_TEMPFILE2"
command rm "$ZPWR_TEMPFILE3"
command rm "$ZPWR_TEMPFILE4"

#do not know why have to create tempfile here
perl -pe 's@^([^#].*)$@- ``` $1 ```@g' "$ZPWR_TEMPFILE" | perl -pe 's@(.*) \(:.map\).*@$1@'

command rm "$ZPWR_TEMPFILE"
