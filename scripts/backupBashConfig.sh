#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:09:39 EDT 2017
#####   Purpose: bash script to backup dotfiles
#####   Notes:
#}}}***********************************************************

my_home_dir="$HOME"
my_scripts_dir="$SCRIPTS"
my_backup_dir="$my_scripts_dir/rcBackups"

if [[ ! -d "$my_backup_dir" ]]; then
    mkdir "$my_backup_dir"
fi

files=("$my_home_dir/.bashrc" "$my_home_dir/.bash_profile" "$my_home_dir/.profile" '/etc/bashrc' '/etc/profile')

for file in "${files[@]}"; do
    cp "$file" "$(echo "$my_backup_dir/${file##*/}""$(date +%s)")"
done

