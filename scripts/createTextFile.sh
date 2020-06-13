#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:14:31 EDT 2017
##### Purpose: bash script to create new script and edit it with SublimeText
##### Notes:
#}}}***********************************************************

function executableScriptsProcessing() {
    # then make it executable
    chmod 700 "$newfile"
    #add header that can be extracted with grep ^#:

    openTextEditor

}

function openTextEditor() {
    open -t "$newfile"
    #run python3 script with pyautogi commands for keyboard shortcuts
    python3 "$HOME/PycharmProjects/fromShell/textEditorTwoColumns.py"
}

function addHeader() {
    #first arg is the interpreter
    #second arg is the absolute path to file
    firstString="$(
        cat <<EOM
#!/usr/bin/env $1
#{{{                    MARK:Header
#**************************************************************
##### Author: $(whoami | tr 'a-z' 'A-Z')
##### Date: $(date)
##### Purpose: $1 script to
##### Notes:
#}}}***********************************************************
EOM
    )"

    echo "$firstString" >"$2"
    echo >>"$2"

    executableScriptsProcessing

}

function createTheFile() {
    #create newfile
    touch "$newfile"

    #echo shebang line into newfile
    case "$1" in
    .sh) addHeader bash "$newfile" ;;
    .pl) addHeader perl "$newfile" ;;
    .rb) addHeader ruby "$newfile" ;;
    .py) addHeader python "$newfile" ;;
    #if .txt or some other file ending then just open the file, no processing
    #exit so do not call executableScriptsProcessing
    *)
        open -t "$newfile"
        exit
        ;;
    esac

    executableScriptsProcessing

}

#if no arguments then exit
[[ -z "$1" ]] && echo "${0##*/} needs an argument ..." && exit 1

#file name is the first argument
newfile="$1"

if [[ -s "$newfile" ]]; then
    openTextEditor
    exit
fi

#check ending on file name and call createTheFile passing in argument for file ending
if [[ "$newfile" =~ .*\.sh ]]; then
    createTheFile .sh
elif [[ "$newfile" =~ .*\.pl ]]; then
    createTheFile .pl
elif [[ "$newfile" =~ .*\.rb ]]; then
    createTheFile .rb
elif [[ "$newfile" =~ .*\.py ]]; then
    createTheFile .py
elif [[ "$newfile" =~ .*\.txt ]]; then #.txt
    createTheFile .txt
elif [[ "$newfile" =~ .*\..* ]]; then # a file ending that we do not want to process
    createTheFile
else
    #if no file ending default to text file
    #construct file with ending of .txt
    newfile="$newfile".txt

    createTheFile .txt
fi
