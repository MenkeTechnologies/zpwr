#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:06:21 EDT 2017
##### Purpose: bash script to stress system
##### Notes: high CPU usage
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$zpwrBaseDir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="$(dirname "$zpwrBaseDir")"
        if [[ "$zpwrBaseDir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
        echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
        exit 1
    fi

    unset zpwrBaseDir
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
    zpwrAlternatingPrettyPrint "Spawning $ZPWR_DELIMITER_CHAR${nproc}$ZPWR_DELIMITER_CHAR processes in background."
    for ((i = 0; i < nproc; ++i)); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        (yes &>/dev/null &)
    done
else
    zpwrAlternatingPrettyPrint "Spawning $ZPWR_DELIMITER_CHAR${nproc}$ZPWR_DELIMITER_CHAR processes interactively."
    for ((i = 0; i < nproc; ++i)); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        yes &>/dev/null &
        pids="$pids $!"
    done

    trap 'killpids "$pids" 2>/dev/null' INT QUIT

    zpwrAlternatingPrettyPrint "${ZPWR_DELIMITER_CHAR}Ctrl-C$ZPWR_DELIMITER_CHAR to kill all spawned processes."

    wait $!

fi
