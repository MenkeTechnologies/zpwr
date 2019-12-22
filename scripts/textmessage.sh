#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:03:02 EDT 2017
##### Purpose: bash script to facilitate text messaging from command line
##### Notes: high complexity
#}}}***********************************************************

prettyPrint() {
    test -n "$1" && printf "\e[1m$1\e[0m\n" || { echo "Need one arg" >&2 && return 1; }
}

if [[ -z "$1" ]]; then
    prettyPrint "need a subject" >&2
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
                prettyPrint "Texting default recipient..."
                mutt -s "$1" "$default_recipient@txt.att.net" <&0 2>$ZPWR_LOGFILE
            else
                prettyPrint "Need stdin for the body of the message if you want to text to me." >&2
                exit 1
            fi
        else
            #two args
            #first possibility is no phone number
            if [[ -p /dev/stdin ]]; then
                #we have stdin
                if [[ "$2" == "family" ]]; then
                    for person in "${family_phone_numbers[@]}"; do
                        prettyPrint "${names_from_phone_numbers[$person]} ..."
                        mutt -s "$1" "$person"@txt.att.net <&0 2>$ZPWR_LOGFILE
                    done
                else
                    #loop through indices which are phone numbers of associative array
                    for number in "${!names_from_phone_numbers[@]}"; do
                        #checking for name in the associative array based on number key
                        if [[ "$2" == ${names_from_phone_numbers[$number]} ]]; then
                            prettyPrint "${names_from_phone_numbers[$number]}..."
                            mutt -s "$1" "$number@txt.att.net" <&0 2>$ZPWR_LOGFILE
                            exit 0
                        fi
                        #checking for number in keys of associative array
                        if [[ "$2" == "$number" ]]; then
                            prettyPrint "${names_from_phone_numbers[$number]}..."
                            mutt -s "$1" "$2"@txt.att.net <&0 2>$ZPWR_LOGFILE
                            exit 0
                        fi

                    done

                    #numeric number
                    if [[ $2 =~ ^[0-9]+$ ]]; then
                        if [[ "$2" == $default_recipient ]]; then
                            prettyPrint "Texting default recipient..."
                        else
                            prettyPrint "Texting '$2'..."
                        fi
                        mutt -s "$1" "$2"@txt.att.net <&0 2>$ZPWR_LOGFILE
                        exit 0
                    else
                        prettyPrint "Couldn't find name '$2'...Need number..." >&2
                    fi

                fi
            else
                #no stdin
                prettyPrint "Texting default recipient..."
                mutt -s "$1" $default_recipient@txt.att.net <<<"$2" 2>$ZPWR_LOGFILE
            fi

        fi

    else
        #there are 3 args
        if [[ "$3" == "family" ]]; then
            for person in ${family_phone_numbers[@]}; do
                prettyPrint "${names_from_phone_numbers[$person]} ..."
                mutt -s "$1" "$person@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
            done
        else
            #third arg is phone number
            #pass text from here string as body
            for number in "${!names_from_phone_numbers[@]}"; do
                #third argument is a string name
                if [[ "$3" == ${names_from_phone_numbers[$number]} ]]; then
                    prettyPrint "${names_from_phone_numbers[$number]}..."
                    mutt -s "$1" "$number@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
                    exit 0

                fi
                #third argument is a number
                if [[ "$3" == $number ]]; then
                    prettyPrint "${names_from_phone_numbers[$number]}..."
                    mutt -s "$1" "$3@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
                    exit 0
                fi
            done
            #numeric number
            if [[ $3 =~ ^[0-9]+$ ]]; then
                if [[ "$3" == $default_recipient ]]; then
                    prettyPrint "Texting default recipient..."
                else
                    prettyPrint "Texting $3..."
                fi

                mutt -s "$1" "$3@txt.att.net" <<<"$2" 2>$ZPWR_LOGFILE
                exit 0
            else
                prettyPrint "Couldn't find name '$3'...Need number..." >&2
                exit 1
            fi

        fi
    fi
fi
