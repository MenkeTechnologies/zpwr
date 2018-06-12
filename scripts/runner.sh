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
    if [[ "$1" == "java" ]];then
        dir="$(dirname "$2")"
        file="$(basename "$2")"
        cd "$dir" && {
            javac "$file"
            java "${file%.*}"
        }
    else
        eval "$1 \"$2\""
    fi

    sleep 1000
}

executeFileFirstArgIsCommand(){
    executableScriptsProcessing "$2"
    eval "$1"
    sleep 1000
}

#if no arguments then exit

(( $# < 1 )) && echo "Need one argument." >&2 && exit 1


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
        command="vim -i NONE -V1 -Nes -c 'so""$fileToBeExecuted""' -c'echo""|q!' 2>&1 | sed -n '4,$p'"
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
    *.lua ) executeTheFile lua "$fileToBeExecuted"
        ;;
    *.groovy ) executeTheFile groovy "$fileToBeExecuted"
        ;;
    *.tcl ) executeTheFile tclsh "$fileToBeExecuted"
        ;;
    *.ml ) executeTheFile ocaml "$fileToBeExecuted"
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
