#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:09:39 EDT 2017
#####   Purpose: bash script to backup dotfiles
#####   Notes: 
#}}}***********************************************************

HOME_DIR=$HOME
SCRIPTS_DIR="$SCRIPTS"
BACKUP_DIR="$SCRIPTS_DIR/rcBackups"

if [[ ! -d "$BACKUP_DIR" ]]; then
    mkdir "$BACKUP_DIR"
fi

files=("$HOME_DIR/.bashrc" "$HOME_DIR/.bash_profile" "$HOME_DIR/.profile" '/etc/bashrc' '/etc/profile')

for file in "${files[@]}"; do
    cp "$file" "$(echo "$BACKUP_DIR/${file##*/}""$(date +%s)")"
done




