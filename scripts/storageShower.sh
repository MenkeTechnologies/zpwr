#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jan 1 19:50:15 EST 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

__ScriptVersion="version"

#=== FUNCTION ================================================================
# NAME: usage
# DESCRIPTION: Display usage information.
#===============================================================================
function usage() {
    echo "Usage : $0 [options] lineCount RefreshTime(sec)

    Options:
    -h|help Display this message
    -v|version Display script version"

} # ---------- end of function usage  ----------

#-----------------------------------------------------------------------
# Handle command line arguments
#-----------------------------------------------------------------------

while getopts ":hv" opt; do
    case $opt in

    h | help)
        usage
        exit 0
        ;;

    v | version)
        echo "$0 -- Version $__ScriptVersion"
        exit 0
        ;;

    *)
        echo -e "\n Option does not exist : $OPTARG\n"
        usage
        exit 1
        ;;

    esac # --- end of case ---
done
shift $(($OPTIND - 1))

if (($# > 1)); then
    num="$1"
    shift
    bash "$SCRIPTS/myWatchMaintainEscapes.sh" -l "$num" "grc -c $HOME/conf.df --colour=auto df -H" "$@"
else
    bash "$SCRIPTS/myWatchMaintainEscapes.sh" "grc -c $HOME/conf.df --colour=auto df -H" "$@"

fi
