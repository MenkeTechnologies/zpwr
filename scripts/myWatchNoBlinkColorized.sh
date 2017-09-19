#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:18:41 EDT 2017
#####   Purpose: bash script to watch output of an command with color
#####   Notes: 
#}}}***********************************************************

set -x

#make cursor visible and get rid of bold
trap 'tput cnorm; printf "\e[0m"; exit' INT
usage(){

cat <<EOM
usage:
    -h  help
    -b  display bold
EOM
exit 1
}

optstring=bh
while getopts $optstring opt
do
  case $opt in
    h) usage >&2; break;;
    b)boldflag=true;break;;
    *) usage >&2;;
esac
done

shift $((OPTIND-1))

if [[ -z "$1" ]]; then
    echo "need an arg" >&2
    exit 1
fi

if [[ -z $2 ]]; then
    timeToSleep=0.5
else
    timeToSleep=$2
fi

clear
if [[ $boldflag == true ]]; then
    printf "\e[1m"
fi

watchCommand() {
    home=$(tput cup 0 0)
    #tput ed clears to end of screen
    ed=$(tput ed)
    #tput el clears to end of line
    el=$(tput el)
    #position cursor at 0,0
    printf '%s%s' "$home" "$ed"
    while true; do
	#adapts to resizing of screen
        ROWS=$(tput lines)
        COLS=$(tput cols)
        CMD="$@"
        eval "$CMD" | head -n $ROWS | while IFS= read LINE; do
	#prints %-30.5s = 30 spaces for left justificationa and five characters
	    	concat="$(java parser $LINE)"
	    	#concat="$first\e[35m$pid  \e[32m$pname\e[0m"
            printf '%-*.*b%s\n' $COLS $COLS "$concat" "$el"
			
        done
	#position cursor back to 0,0
        printf '%s%s' "$ed" "$home"
        sleep $timeToSleep
    done

    if [[ $boldflag == true ]]; then
        printf "\e[0m"
    fi
}

#make cursor invisible
tput civis
#call function with first positional parameter
watchCommand $1
