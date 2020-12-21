#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:03:02 EDT 2017
##### Purpose: bash script to facilitate text messaging from command line
##### Notes: high complexity
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

if [[ -z "$1" ]]; then
    echo "usage: textmessage.sh <subject>" >&2
    exit 1
else

    member_1="5551113333"
    default_recipent="555111333"

    family_phone_numbers=("$member_1")
    declare -A names_from_phone_numbers
    names_from_phone_numbers["$member_1"]=Member1Name

    if [[ -z "$3" ]]; then
        #read from stdin
        if [[ -z "$2" ]]; then
            #one arg
            #pass stdin from fxn directly into mutt as body
            if [[ -p /dev/stdin ]]; then
                zpwrPrettyPrint "Texting default recipient..."
                mutt -s "$1" "$default_recipient@txt.att.net" <&0 2>$ZPWR_LOGFILE
            else
                zpwrPrettyPrint "Need stdin for the body of the message if you want to text to me." >&2
                exit 1
            fi
        else
            #two args
            #first possibility is no phone number
            if [[ -p /dev/stdin ]]; then
                #we have stdin
                if [[ "$2" == "family" ]]; then
                    for person in "${family_phone_numbers[@]}"; do
                        zpwrPrettyPrint "${names_from_phone_numbers[$person]} ..."
                        mutt -s "$1" "$person"@txt.att.net <&0 2>$ZPWR_LOGFILE
                    done
                else
                    #loop through indices which are phone numbers of associative array
                    for number in "${!names_from_phone_numbers[@]}"; do
                        #checking for name in the associative array based on number key
                        if [[ "$2" == ${names_from_phone_numbers[$number]} ]]; then
                            zpwrPrettyPrint "${names_from_phone_numbers[$number]}..."
                            mutt -s "$1" "$number@txt.att.net" <&0 2>$ZPWR_LOGFILE
                            exit 0
                        fi
                        #checking for number in keys of associative array
                        if [[ "$2" == "$number" ]]; then
                            zpwrPrettyPrint "${names_from_phone_numbers[$number]}..."
                            mutt -s "$1" "$2"@txt.att.net <&0 2>$ZPWR_LOGFILE
                            exit 0
                        fi

                    done

                    #numeric number
                    if [[ $2 =~ ^[0-9]+$ ]]; then
                        if [[ "$2" == $default_recipient ]]; then
                            zpwrPrettyPrint "Texting default recipient..."
                        else
                            zpwrPrettyPrint "Texting '$2'..."
                        fi
                        mutt -s "$1" "$2"@txt.att.net <&0 2>$ZPWR_LOGFILE
                        exit 0
                    else
                        zpwrPrettyPrint "Couldn't find name '$2'...Need number..." >&2
                    fi

                fi
            else
                #no stdin
                zpwrPrettyPrint "Texting default recipient..."
                mutt -s "$1" $default_recipient@txt.att.net <<<"$2" 2>$ZPWR_LOGFILE
            fi

        fi

    else
        #there are 3 args
        if [[ "$3" == "family" ]]; then
            for person in ${family_phone_numbers[@]}; do
                zpwrPrettyPrint "${names_from_phone_numbers[$person]} ..."
                mutt -s "$1" "$person@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
            done
        else
            #third arg is phone number
            #pass text from here string as body
            for number in "${!names_from_phone_numbers[@]}"; do
                #third argument is a string name
                if [[ "$3" == ${names_from_phone_numbers[$number]} ]]; then
                    zpwrPrettyPrint "${names_from_phone_numbers[$number]}..."
                    mutt -s "$1" "$number@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
                    exit 0

                fi
                #third argument is a number
                if [[ "$3" == $number ]]; then
                    zpwrPrettyPrint "${names_from_phone_numbers[$number]}..."
                    mutt -s "$1" "$3@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
                    exit 0
                fi
            done
            #numeric number
            if [[ $3 =~ ^[0-9]+$ ]]; then
                if [[ "$3" == $default_recipient ]]; then
                    zpwrPrettyPrint "Texting default recipient..."
                else
                    zpwrPrettyPrint "Texting $3..."
                fi

                mutt -s "$1" "$3@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
                exit 0
            else
                zpwrPrettyPrint "Couldn't find name '$3'...Need number..." >&2
                exit 1
            fi

        fi
    fi
fi
