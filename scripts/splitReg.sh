#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Wed Nov 8 23:57:19 EST 2017
##### Purpose: bash script to
##### Notes:
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

if [[ $ZPWR_TRACE == true ]]; then
    set -x
fi
trap 'rm "$file"' INT

function usage() {

    echo -e "\e[34mUsage : $0 [options] [--]

    Options:
    -i|inverse set filter to after regex
    -h|help Display this message
    -v|version Display script version\e[0m"

} # ---------- end of function usage  ----------

#-----------------------------------------------------------------------
# Handle command line arguments
#-----------------------------------------------------------------------

__ScriptVersion=1.0.0

level=1

while getopts "hvil:" opt; do
    case $opt in

    h | help)
        usage
        exit 0
        ;;

    v | version)
        echo "$0 -- Version $__ScriptVersion"
        exit 0
        ;;

    i | inverse) inverse=true ;;

    l | level) level=$OPTARG ;;

    *)
        echo -e "\n Option does not exist : $OPTARG\n"
        usage
        exit 1
        ;;

    esac # --- end of case ---
done
shift $(($OPTIND - 1))

(($# < 2)) && echo "Need a regex and filter.." >&2 && exit 1

regex="$1"
filter="$2"

commandExists $filter || filter='cat'

file="$ZPWR_TEMPFILE"
command cat > "$file"
output=$(cat $file)
demarcatingLineNum=$(echo "$output" | command grep -n -- "$regex" | tail -$level | head -1 | cut -d: -f1)


if [[ -z $demarcatingLineNum ]] || (( $demarcatingLineNum != 0 )); then
    if [[ $ZPWR_DEBUG == true ]]; then
        echo 'non 0 => $demarcatingLineNum= '"$demarcatingLineNum" \
            >> "$ZPWR_LOGFILE"
    fi

    if [[ -z "$inverse" ]]; then
        if [[ $ZPWR_DEBUG == true ]]; then
            echo sed -n "1,$demarcatingLineNum"p "$file" >> "$ZPWR_LOGFILE"
        fi

        perl -ne "print if 1 .. $demarcatingLineNum" "$file" | "$filter"

        ((++demarcatingLineNum))

        if [[ $ZPWR_DEBUG == true ]]; then
            echo sed -n "$demarcatingLineNum,$"p "$file" >> "$ZPWR_LOGFILE"
        fi

        perl -ne "print if $demarcatingLineNum .. eof" "$file"

    else
        if [[ $ZPWR_DEBUG == true ]]; then
            echo sed -n "$demarcatingLineNum,$"p "$file" >> "$ZPWR_LOGFILE"
        fi

        perl -ne "print if 1 .. $demarcatingLineNum" "$file"

        ((++demarcatingLineNum))

        if [[ $ZPWR_DEBUG == true ]]; then
            echo sed -n "$demarcatingLineNum,$"p "$file" >> "$ZPWR_LOGFILE"
        fi

        perl -ne "print if $demarcatingLineNum .. eof" "$file" | "$filter"
    fi
else
    perl -ne "print if 1 .. eof" "$file"
fi

rm "$file"

#alternatively

#cat | tee >(sed -n "1,/$regex"p) >(sed -n "/$regex/,$p" | "$filter" ) >/dev/null
#however possibly issues with ordering of output to screen
if [[ $ZPWR_TRACE == true ]]; then
    set +x
fi
