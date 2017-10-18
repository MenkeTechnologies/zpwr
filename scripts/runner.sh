#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENK
#####   Date: Mon Jul 10 12:37:10 EDT 2017
#####   Purpose: bash script to help exec of script from vim
#####   Notes: 
#}}}***********************************************************

executableScriptsProcessing(){
    # then make it executable
    if [[ ! -x "$1" ]]; then
        chmod 744 "$1"
    fi
}

executeTheFile(){
    executableScriptsProcessing "$2"
    #execute the file with the proper interpreter or compiler
    eval "$1 $2"
    sleep 1000
}

executeFileFirstArgIsCommand(){
    executableScriptsProcessing "$2"
    eval "$1"
    sleep 1000
}

#if no arguments then exit
if (( $# < 1 )); then
    printf "I need an argument ...\n" >&2
    exit 1
fi

#file name is the first argument
clear
fileToBeExecuted="$1"

case "$fileToBeExecuted" in
    *.sh ) executeTheFile bash "$fileToBeExecuted"
        ;;
    *.pl ) executeTheFile perl "$fileToBeExecuted"
        ;;
    *.rb ) executeTheFile ruby "$fileToBeExecuted"
        ;;
    *.coffee ) executeTheFile coffee "$fileToBeExecuted"
        ;;
    *.vim )
        command="vim -i NONE -V1 -Nes -c 'so""$fileToBeExecuted""' -c'echo""|q!' 2>&1 | tail +4"
        executeFileFirstArgIsCommand "$command" "$fileToBeExecuted" 
        ;;
    *.py ) executeTheFile python3 "$fileToBeExecuted"
        ;;
    *.lisp ) executeTheFile clisp "$fileToBeExecuted"
        ;;
    *.hs ) executeFileFirstArgIsCommand "ghc -e ':script $fileToBeExecuted'" "$fileToBeExecuted"
        ;;
    *.java ) executeTheFile java "$fileToBeExecuted"

        ;;
    *.clj ) executeTheFile clojure "$fileToBeExecuted"
        ;;
    *.*)
        echo "Don't know what the run with. File ending is not recognized!" >&2
        exit 1
        ;;
    *)
        echo "Don't know what the run with! No File ending." >&2
        exit 1
        ;;
esac
