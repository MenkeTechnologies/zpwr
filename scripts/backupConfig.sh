#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:09:39 EDT 2017
##### Purpose: bash script to backup some dotfiles
##### Notes:
#}}}***********************************************************

BACKUP_DIR="$ZPWR_SCRIPTS/rcBackups"

if [[ ! -d "$BACKUP_DIR" ]]; then
    mkdir "$BACKUP_DIR"
fi

files=("$HOME/.zshrc" "$HOME/.bashrc" "$ZPWR/.shell_aliases_functions.sh" "$HOME/.tmux.conf" "$HOME/.vimrc")

for file in "${files[@]}"; do
    cp "$file" "$BACKUP_DIR/${file##*/}""$(date +%s)"
done
