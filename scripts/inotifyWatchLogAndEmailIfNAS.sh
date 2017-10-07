trap "echo;\
python -c 'print(\"_\" * 100)';
echo going down;\
python -c 'print(\"_\" * 100)';
" 15 2

if [[ $# < 1 ]]; then
    echo "First arg is the Directory!" >&2
    exit 0
fi

file="$1"
exec 1>>"$LOGFILE"
exec 2>&1

python -c 'print("_"*100)'
echo "`date` Watching $file......"
python -c 'print("_"*100)'

while inotifywait "$file" ;do
    tail -1 "$file" | grep " nas 1 2" | grep -qv "127.0.0.1" && {
    out=$(tail -1 "$file" | grep "nas")
    echo
    python -c 'print("_"*100)'
    echo "`date` Sending email......"
    python -c 'print("_"*100)'
    echo
    echo "$out" |  mutt -s "NAS ALERT: $file at $(date)" jamenk@me.com
} || { echo
    python -c 'print("_"*100)'
    echo "No Match"
    python -c 'print("_"*100)'
    echo; }

done
