#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sun Jul 16 02:44:18 EDT 2017
#####   Purpose: bash script to reindent and delete duplicate lines
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
    vim -c ":gg=G" -c ":wq" "$file"
	contents=$(cat -s "$file")
	echo "$contents" > "$file"
done

#sed -e 1d -e 3d -e 5d -e 10d
