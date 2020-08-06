#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep 19 16:36:12 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

source "$ZPWR_SCRIPTS/lib.sh" || {
    echo "cannot access lib.sh" >&2
    exit 1
}

ZPWR_EXA_COMMAND="command exa --git -il -F -H --extended --color-scale -g -a --colour=always"

function clearList() {

    local FOUND out out2 ls_command lib_command rank loc arg

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        if exists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if exists grc; then
                ls_command="grc -c $HOME/conf.gls gls -iFlhAd --color=always"
            else
                ls_command="ls -iFlhAOd"
            fi
        fi
        lib_command="otool -L"
    elif [[ "$ZPWR_OS_TYPE" == linux ]];then

        if exists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if exists grc; then
                ls_command="grc -c $HOME/conf.gls ls -iFlhA --color=always"
            else
                ls_command="ls -iFlhA"
            fi
        fi
        lib_command="ldd"
    else
        if exists grc;then
            ls_command="grc -c $HOME/conf.gls ls -iFlhA"
        else
            ls_command="ls -iFhlA"
        fi
        lib_command="ldd"
    fi

    if [[ -n "$1" ]]; then
        for arg in "$@"; do
            FOUND=false
            prettyPrint "/--------------- $arg --------------/"
            #perl boxPrint.pl "$arg"
            echo
            if exists $arg; then
                FOUND=true
                #exe matching
                while read loc;do
                    lf="$(echo $loc | cut -d' ' -f3-10)"
                    if [[ $(type "$arg") == "$loc" ]]; then
                        rank="Primary"
                    else
                        rank="Secondary"
                    fi
                    if [[ -f "$lf" ]]; then
                        prettyPrint "$lf" &&
                        eval "$ls_command -- $lf" &&
                        prettyPrint "FILE TYPE:" &&
                        eval "file -- $lf" &&
                        prettyPrint "DEPENDENT ON:" &&
                        eval "$lib_command $lf"
                        prettyPrint "SIZE:"
                        du -sh -- "$lf"
                        prettyPrint "STATS:"
                        stat -- "$lf"
                        out=$(man -wa "$(basename $lf)" 2>/dev/null)
                        if [[ -n "$out" ]]; then
                            prettyPrint "MAN:"
                            echo "$out"
                        fi
                        if isZsh; then
                            out="$(hash | command grep "^$arg=")"
                            if [[ -n "$out" ]]; then
                                prettyPrint "HASH TABLE:"
                                echo "$(hash | command grep "^$arg=")"
                            fi
                        fi
                        prettyPrint "PRECEDENCE: "
                        echo "$rank"
                        echo
                        echo
                    else
                        prettyPrint "FILE TYPE:"
                        echo "$loc"
                        echo "$loc" | command grep -sq "function" &&
                        {
                            type -f -- \
                "$(echo "$loc" | awk '{print $1}')" 2>/dev/null |
                            nl -v 0
                        }
                        echo "$loc" | command grep -sq "alias" &&
                    {
                alias -- "$(echo "$loc" | awk '{print $1}')"
                        }
                        prettyPrint "PRECEDENCE: "
                        echo "$rank"
                        echo
                        echo
                    fi
                done < <(type -a "$arg" 2>/dev/null | sort | uniq)
            fi
            #path matching, not exe
            if eval "$ls_command -d -- \"$arg\"" 2>/dev/null; then
                FOUND=true
                prettyPrint "$arg"
                prettyPrint "FILE TYPE:"
                file -- "$arg"
                prettyPrint "SIZE:"
                du -sh -- "$arg"
                prettyPrint "STATS:"
                stat -- "$arg"
                #for readibility
                echo
                echo
            else
                out=$(declare -m "$arg")

                if [[ -n $out ]]; then
                    FOUND=true
                    prettyPrint "DATA TYPE:"
                    print -rl -- ${(tP)arg}
                    prettyPrint "VALUE:"
                    echo $out
                    #for readibility
                    echo
                    echo
                else
                    out2=$(set | command grep "^$arg=")
                    if [[ -n $out2 ]]; then
                        FOUND=true
                        prettyPrint "DATA TYPE:"
                        print -rl -- ${(tP)arg}
                        prettyPrint "ENV:"
                        echo $out2
                        #for readibility
                        echo
                        echo
                    fi
                fi
            fi
            if [[ $FOUND == false ]]; then
                loggErr "NOT FOUND: '"'$arg'"'_____ = ""'$arg'"
            fi
        done
    else
        clear && eval "$ls_command"
    fi
}

if [[ "$1" == "--" ]]; then
    shift
fi

clearList "$@"

