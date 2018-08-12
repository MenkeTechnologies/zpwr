#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Fri Jun 30 15:18:40 EDT 2017
##### Purpose: file templates for bash, perl, python
##### Notes:
#}}}***********************************************************

executableScriptsProcessing(){
    # then make it executable
    if [[ ! -x "$1" ]]; then
        chmod 744 "$1"
    fi
}

addHeader(){
    #first arg is the interpreter
    #second arg is the absolute path to file
    headerSTRING=$(cat<<EOM
#!/usr/bin/env $1
#{{{ MARK:Header
#**************************************************************
##### Author: $(whoami | tr 'a-z' 'A-Z')
##### Date: $(date)
##### Purpose: $1 script to
##### Notes:
#}}}***********************************************************
EOM
)

#add header to first argument which is the absolute path to file
echo "$headerSTRING" > "$2"
echo >> "$2"
echo >> "$2"
}

createTemplate(){
    addHeader "$1" "$2"
    executableScriptsProcessing "$2"
}

#if no arguments then exit
(( $# < 1 )) && echo "Need one argument." >&2 && exit 1

#file name is the first argument
fileToBeExecuted="$1"

case "$fileToBeExecuted" in
    *.sh ) createTemplate bash "$fileToBeExecuted"
        ;;
    *.pl ) createTemplate perl "$fileToBeExecuted"
        ;;
    *.rb ) createTemplate ruby "$fileToBeExecuted"
        ;;
    *.py ) createTemplate python3 "$fileToBeExecuted"
        ;;
    *.vim )
        echo "Vim template not supported yet." >&2
        exit 1
        ;;
    *.*)
        echo "Templating for this filetype is not supported!" >&2
        exit 1
        ;;
    *)
        echo "Don't know how to create template without file ending!" >&2
        exit 1
        ;;
esac
