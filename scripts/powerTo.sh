#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Jan 10 17:43:40 EST 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

__ScriptVersion="1.0.0"

#===  FUNCTION  ================================================================
#         NAME:  usage
#  DESCRIPTION:  Display usage information.
#===============================================================================
function usage ()
{
    echo "Usage :  $0 [options] [--]

    Options:
    -h|help       Display this message
    -v|version    Display script version
    -l|alone      Don't run the command in the active pane" >&2

}    # ----------  end of function usage  ----------

#-----------------------------------------------------------------------
#  Handle command line arguments
#-----------------------------------------------------------------------

#set -x

type tmux >/dev/null 2>&1 || {
    echo "You don't have tmux so we are exiting..." >&2
    exit 1
}

leavePresentPaneAloneFlag=false

while getopts ":hvl" opt
do
  case $opt in

    h|help     )  usage; exit 0   ;;

    v|version  )  echo "$0 -- Version $__ScriptVersion" >&2; exit 0   ;;

    l)  leavePresentPaneAloneFlag=true ;;

    * )  echo -e "\n  Option does not exist : $OPTARG\n" >&2
          usage; exit 1   ;;

  esac    # --- end of case ---
done
shift $(($OPTIND-1))

(( $# == 0)) && echo "Need an arg." >&2 && exit 1

realNum=$(tmux list-panes | wc -l)

if (( $# == 2 ));then
    num=$1
    #limit to number of panes
    if (( num > realNum ));then
        num=realNum
    fi
    shift
else
    num=realNum
fi

active=$(tmux list-panes | grep active | cut -c1)

for (( i = 0; i < $num; i++ )); do
    if [[ $leavePresentPaneAloneFlag == true ]]; then
        if (( $i == $active ));then
            continue
        fi
    fi
    tmux selectp -t $i
    tmux send-keys "$*" C-M

done

tmux selectp -t $active
