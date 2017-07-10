#!/usr/bin/env bash
#created by JAKOBMENKE --> Sun Jan 22 22:10:48 EST 2017 

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
