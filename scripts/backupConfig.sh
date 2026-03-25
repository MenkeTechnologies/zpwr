#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:09:39 EDT 2017
##### Purpose: bash script to backup some dotfiles
##### Notes:
#}}}***********************************************************

BACKUP_DIR="$ZPWR_LOCAL/rcBackups"

function copyConfigs(){

    local file files

    if [[ ! -d "$BACKUP_DIR" ]]; then
        mkdir "$BACKUP_DIR"
    fi

    files=("$HISTFILE")

    for file in "${files[@]}"; do
        cp "$file" "$BACKUP_DIR/${file##*/}""$(date +%s)"
    done

}

copyConfigs "$@"
