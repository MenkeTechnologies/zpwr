#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 9 14:42:39 EDT 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
while true; do
    echo "$(date) Updating Software" >> "$LOGFILE"
    oldtime=$(date +"%s")
    olddate="$(date +'%Y-%m-%d %H:%M:%S')"
    unset PERL5LIB
    perlscript=$(cat <<EOF
    \$tp = localtime->strptime("$olddate", "%Y-%m-%d %H:%M:%S") + 3600*24;
    print \$tp->strftime("%Y-%m-%d %H:%M:%S")."\n";
EOF
)
    nextdate=$(echo "$perlscript" | perl -MTime::Piece -MTime::Seconds)
    bash -l updater.sh -e
    while true; do
        sleep $((1*60))
        newtime=$(date +"%s")
        timediff=$(($newtime-$oldtime))
        echo "$(date): Time diff $timediff. Next update at $nextdate." >> "$LOGFILE"
        (( $timediff > $((3600*24)) )) && break
    done
done
