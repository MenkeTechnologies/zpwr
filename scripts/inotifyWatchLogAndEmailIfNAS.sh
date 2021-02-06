#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Jun 13 17:22:20 EDT 2020
##### Purpose: bash script to email with inotify
##### Notes:
#}}}***********************************************************

if [[ -z "$EMAIL" ]]; then
    echo "\$EMAIL must be set" >&2
    exit 1
fi

trap "echo;\
python -c 'print(\"_\" * 100)';
echo going down;\
python -c 'print(\"_\" * 100)';
" 15 2

(($# < 1)) && echo "First arg is the Directory!" >&2 && exit 1

file="$1"
exec 1>>"$LOGFILE"
exec 2>&1

python -c 'print("_"*100)'
echo "$(date) Watching $file......"
python -c 'print("_"*100)'

while inotifywait "$file"; do
    tail -1 "$file" | grep " nas 1 2" | grep -v "$IP" | grep -qv "127.0.0.1" && {
        out=$(tail -1 "$file" | grep "nas")
        echo
        python -c 'print("_"*100)'
        echo "$(date) Sending email......"
        python -c 'print("_"*100)'
        echo
        echo "$out" | mutt -s "NAS ALERT: $file at $(date)" "$EMAIL"
    } || {
        echo
        python -c 'print("_"*100)'
        echo "No Match"
        python -c 'print("_"*100)'
        echo
    }

done
