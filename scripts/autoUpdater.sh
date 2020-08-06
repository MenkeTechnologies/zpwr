#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 9 14:42:39 EDT 2018
##### Purpose: bash script to run updater loop
##### Notes:
#}}}***********************************************************
function updaterLoop(){

    local minutes_to_sleep oldtime olddate newtime timediff nextdate perlscript
    minutes_to_sleep=10

    while true; do
        logg "Updating Software"
        oldtime=$(date +"%s")
        olddate="$(date +'%Y-%m-%d %H:%M:%S')"
        unset PERL5LIB
        perlscript=$(
            cat <<EOF
        \$tp = localtime->strptime("$olddate", "%Y-%m-%d %H:%M:%S") + 3600*24;
        print \$tp->strftime("%Y-%m-%d %H:%M:%S")."\n";
    EOF
        )
        nextdate=$(echo "$perlscript" | perl -MTime::Piece -MTime::Seconds)
        bash -l updater.sh -e
        while true; do
            sleep $((minutes_to_sleep * 60))
            newtime=$(date +"%s")
            timediff=$((newtime - oldtime))
            logg "Time diff $timediff. Next update at $nextdate."
            ((timediff > $((3600 * 24)))) && break
        done
    done

}

updaterLoop "$@"
