#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:06:21 EDT 2017
##### Purpose: bash script to stress system
##### Notes: high CPU usage
#}}}***********************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
    source "$ZPWR_ENV_FILE" || {
        echo "cannot access $ZPWR_ENV_FILE" >&2
        exit 1
    }
fi

__ScriptVersion="1.0.2"
nproc=10

#=== FUNCTION ================================================================
# NAME: usage
# DESCRIPTION: Display usage information.
#===============================================================================
function usage() {

    echo "Usage : $0 [options] [--]
    Default number of spawned processes is $nproc.
    Change this with -n option.

    Options:
    -h|help Display this message
    -d|disown Disown process to init
    -n|nproc <number> Number of processes to spawn
    -v|version Display script version"

} # ---------- end of function usage  ----------

function killpids() {

    echo "${1:1}" | perl -ae '`kill $_`for@F'
    exit 0
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

if [[ "$detach" == true ]]; then
    alternatingPrettyPrint "Spawning $ZPWR_DELIMITER_CHAR${nproc}$ZPWR_DELIMITER_CHAR processes in background."
    for ((i = 0; i < nproc; ++i)); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        (yes &>/dev/null &)
    done
else
    alternatingPrettyPrint "Spawning $ZPWR_DELIMITER_CHAR${nproc}$ZPWR_DELIMITER_CHAR processes interactively."
    for ((i = 0; i < nproc; ++i)); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        yes &>/dev/null &
        pids="$pids $!"
    done

    trap 'killpids "$pids" 2>/dev/null' INT QUIT

    alternatingPrettyPrint "${ZPWR_DELIMITER_CHAR}Ctrl-C$ZPWR_DELIMITER_CHAR to kill all spawned processes."

    wait $!

fi
