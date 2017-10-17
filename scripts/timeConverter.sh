hour=$(date | tr -s ' ' | cut -d ' ' -f4 | cut -d ':' -f1)
minute=$(date | tr -s ' ' | cut -d ' ' -f4 | cut -d ':' -f2)

amPm="AM"
if [ $hour -gt 12 ]
then
    hour=$((hour - 12))
    amPm="PM"
fi
echo "$hour:$minute $amPm"
