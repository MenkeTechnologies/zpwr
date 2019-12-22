#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Thu Sep 19 16:36:12 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

exists(){
    #alternative is command -v
    type "$1" >/dev/null 2>&1
}

prettyPrint(){
    if [[ -n "$1" ]];then
        printf "\x1b[1m"
        printf "%s " "$@"
        printf "\x1b[0m\n"
    else
        echo "Need one arg" >&2
        return 1
    fi
}

EXA_COMMAND="command exa --git -il -F -H --extended --color-scale -g -a --colour=always"

clearList() {
    if [[ "$(uname)" == "Darwin" ]]; then
        if exists exa;then
            ls_command="$EXA_COMMAND"
        else
            if exists grc; then
                ls_command="grc -c $HOME/conf.gls gls -iFlhAd --color=always"
            else
                ls_command="ls -iFlhAOd"
            fi
        fi
        lib_command="otool -L"
    elif [[ "$(uname)" == Linux ]];then

        if exists exa;then
            ls_command="$EXA_COMMAND"
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
            if exists $arg; then
                #exe matching
                while read loc;do
                    lf="$(echo $loc|cut -d' ' -f3-10)"
                    if [[ -f "$lf" ]]; then
                        prettyPrint "$lf" && \
                        eval "$ls_command" -- $lf \
                        && prettyPrint "FILE TYPE:" && \
                        eval "file -- $lf" && \
                        prettyPrint "DEPENDENT ON:" && \
                        eval "$lib_command $lf"
                        prettyPrint "SIZE:"
                        du -sh -- "$lf"
                        prettyPrint "STATS:"
                        stat -- "$lf"
                        prettyPrint "MAN:"
                        man -wa "$(basename -- $lf)" 2>/dev/null
                        echo
                        echo
                    else
                        echo "$loc"
                        echo "$loc" | command grep -q \
                            "function" && {
                            type -f "$(echo "$loc" | \
                            awk '{print $1}')" 2>/dev/null | nl -v 0
                        }
                        echo "$loc" | command grep -q \
                            "alias" && {
                            alias -- "$(echo "$loc" \
                            | awk '{print $1}')"
                        }
                        echo
                        echo
                    fi
                done < <(type -a "$arg" 2>/dev/null | sort | uniq)
            else
                #path matching, not exe
                prettyPrint "$arg"
                eval "$ls_command -d -- \"$arg\"" \
                        || { echo; continue; }
                echo
                prettyPrint "FILE TYPE:"
                file -- "$arg"
                prettyPrint "SIZE:"
                du -sh -- "$arg"
                prettyPrint "STATS:"
                stat -- "$arg"
                #for readibility
                echo
                echo
            fi
        done
    else
        clear && eval "$ls_command"
    fi
}

clearList "$@"

