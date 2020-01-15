#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:06:21 EDT 2017
##### Purpose: bash script to stress system
##### Notes: high CPU usage
#}}}***********************************************************
__ScriptVersion="1.0.2"
nproc=10

#=== FUNCTION ================================================================
# NAME: usage
# DESCRIPTION: Display usage information.
#===============================================================================
usage() {
    echo "Usage : $0 [options] [--]
    Default number of spawned processes is $nproc.
    Change this with -n option.

    Options:
    -h|help Display this message
    -d|disown Disown process to init
    -n|nproc <number> Number of processes to spawn
    -v|version Display script version"

} # ---------- end of function usage  ----------

prettyPrint() {
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

exists() {
    type "$1" >/dev/null 2>&1
}

alternatingPrettyPrint() {
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$ZPWR_DELIMITER_CHAR" -ane '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        ++$counter;
        };print "\x1b[0m"'
    else
        perl -F"$ZPWR_DELIMITER_CHAR" -ane '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        ++$counter;
        }; print "\x1b[0m"' <<<"$@"

    fi

}

#-----------------------------------------------------------------------
# Handle command line arguments
#-----------------------------------------------------------------------

while getopts "n:dhv" opt; do
    case $opt in

    h | help)
        usage
        exit 0
        ;;

    v | version)
        echo "$0  -- Version $__ScriptVersion"
        exit 0
        ;;

    d | detach) detach=true ;;

    n | nproc) nproc=$OPTARG ;;

    *)
        echo -e "\n Option does not exist : $OPTARG\n"
        usage
        exit 1
        ;;

    esac # --- end of case ---
done
shift $((OPTIND - 1))

killpids() {
    echo "${1:1}" | perl -ae '`kill $_`for@F'
    exit 0
}

if [[ "$detach" == true ]]; then
    alternatingPrettyPrint "Spawning $ZPWR_DELIMITER_CHAR${nproc}$ZPWR_DELIMITER_CHAR processes in background."
    for ((i = 0; i < nproc; i++)); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        (yes &>/dev/null &)
    done
else
    alternatingPrettyPrint "Spawning $ZPWR_DELIMITER_CHAR${nproc}$ZPWR_DELIMITER_CHAR processes interactively."
    for ((i = 0; i < nproc; i++)); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        yes &>/dev/null &
        pids="$pids $!"
    done

    trap 'killpids "$pids" 2>/dev/null' INT QUIT

    alternatingPrettyPrint "${ZPWR_DELIMITER_CHAR}Ctrl-C$ZPWR_DELIMITER_CHAR to kill all spawned processes."

    wait $!

fi
