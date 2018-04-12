#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:06:21 EDT 2017
#####   Purpose: bash script to stress system 
#####   Notes: high CPU usage
#}}}***********************************************************
__ScriptVersion="1.0.1"
nproc=10

#===  FUNCTION  ================================================================
#         NAME:  usage
#  DESCRIPTION:  Display usage information.
#===============================================================================
function usage ()
{
    echo "Usage :  $0 [options] [--]
    Default number of spawned processes is $nproc.
    Change this with -n option.

    Options:
    -h|help             Display this message
    -d|disown           Disown process to init
    -n|nproc <number>   Number of processes to spawn
    -v|version          Display script version"

}    # ----------  end of function usage  ----------

#-----------------------------------------------------------------------
#  Handle command line arguments
#-----------------------------------------------------------------------

while getopts "n:dhv" opt
do
  case $opt in

    h|help     )  usage; exit 0   ;;

    v|version  )  echo "$0  -- Version $__ScriptVersion"; exit 0   ;;

    d|detach ) detach=true ;;

    n|nproc ) nproc=$OPTARG ;;

    * )  echo -e "\n  Option does not exist : $OPTARG\n"
          usage; exit 1   ;;

  esac    # --- end of case ---
done
shift $(($OPTIND-1))


killpids(){
    echo "${1:1}" | perl -F: -lanE 'system "kill $_" foreach @F'
    exit 0
}

printf "Spawning $nproc processes"

if [[ "$detach" == true ]]; then
    printf " in background.\n"
    for (( i = 0; i < $nproc; i++ )); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        ( yes &> /dev/null &)
    done
else
    printf " interactively.\n"
    pids=""
    for (( i = 0; i < $nproc; i++ )); do
        #launch yes in the background in subshell disowning it
        #send all output to /dev/null
        yes &> /dev/null &
        pids="$pids:$!"
    done

    
    trap 'killpids $pids 2>/dev/null' INT QUIT

    echo "Ctrl-C to kill all spawned"

    wait $!

fi

