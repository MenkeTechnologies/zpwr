
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

while inotifywait "$file" &> /dev/null;do
    tail -1 "$file" | grep -q " nas 1 2" && {
    out=$(tail -5 "$file" | grep "nas")
    echo
    python -c 'print("_"*100)'
    echo "`date` Sending email......"
    python -c 'print("_"*100)'
    echo

    echo "$out" |  mutt -s "$file" jamenk@me.com
     sleep 10
}
done
