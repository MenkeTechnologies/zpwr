#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:16:04 EDT 2017
##### Purpose: bash script to remove lines with no contents (squeeze)
##### Notes:
#}}}***********************************************************

function usage() {
    #here doc for printing multiline
    cat <<\EOM
usage:
	script $1=file
EOM
}


function duplicateLineDeleter() {

    local home_dir scripts_dir backup_dir contents file

    home_dir=$HOME
    scripts_dir=$ZPWR_SCRIPTS
    backup_dir=$scripts_dir/rcBackups

    (($# < 1)) && usage >&2 && exit 1

    if [[ ! -d "$backup_dir" ]]; then
        mkdir "$backup_dir"
    fi

    for file; do
        cp "$file" "$backup_dir/$file"
        contents=$(cat -s "$file")
        echo "$contents" >"$file"
    done
}

duplicateLineDeleter "$@"
