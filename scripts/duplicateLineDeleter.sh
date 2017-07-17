#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:16:04 EDT 2017
#####   Purpose: bash script to remove lines with no contents (squeeze)
#####   Notes: 
#}}}***********************************************************

HOME_DIR=$HOME
SCRIPTS_DIR=$SCRIPTS
BACKUP_DIR=$SCRIPTS_DIR/rcBackups

usage(){
#here doc for printing multiline
	cat <<\EOM
usage:
	script $1=file
EOM
}

if [[ $# < 1 ]]; then
	usage >&2
	exit 1
fi

if [[ ! -d $BACKUP_DIR ]]; then
	mkdir $BACKUP_DIR
fi

for file; do
	cp "$file" "$BACKUP_DIR/$file"
	contents=$(cat -s "$file")
	echo "$contents" > "$file"
done

#sed -e 1d -e 3d -e 5d -e 10d
