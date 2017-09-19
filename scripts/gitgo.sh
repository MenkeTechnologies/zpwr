#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:19:26 EDT 2017
#####   Purpose: bash script to facilitate github repo creation and committing
#####   Notes: 
#}}}***********************************************************

#for debugging uncomment next line
# set -x

#GITHUB_ACCOUNT environment variable needed for the script to create a remote repository
##########################################
###############  functions  ##############
##########################################

prettyPrint(){
    #print white text 37m on blue qbackground 44m
    printf "\e[37;44m"
    printf "$1"
    printf "\e[0m\n"
}

initializeGitDirectory(){
    #there is no .git directory
    if [[ ! -d ".git" ]]; then
        prettyPrint "Do you want to initialize this diqrectory with Git?"
        #read one character
        read -n1
        echo
        case "$REPLY" in
            #if yes then create .git and call getReqmoteDetails
            [yY] ) git init; getRemoteDetails ;;
            #exit if command executed by accident for example
            *) exit 1
    esac
else
    if [[ -z "$(git remote)" ]]; then
        #there is a .git directory but no setup for remote so call getRemoteDetails
        getRemoteDetails
    else
        #there is a .git directory and there is setup for remote so exit
        prettyPrint "Already initialized."
        exit 1

    fi

fi
}

#create remote repository on Github

getRemoteDetails(){

    #if function was called with no arguments
    if [[ -z "$1" ]]; then
        prettyPrint "What is the name of your Repository to create?"
        read REPO_NAME_TO_CREATE
        #function called with at least one argument
    else
        prettyPrint "Remaking Deleted Repository."
        local REPO_NAME_TO_CREATE="$1"
    fi

    #use environment variable GITHUB_ACCOUNT to create remote repository from script
    curl -u "$GITHUB_ACCOUNT" https://api.github.com/user/repos -d {\"name\":\"$REPO_NAME_TO_CREATE\"}
    #clear output from curl request
    clear

    #get origin from git remote -v if the origin has been established
    #awk to print first column, tail for last line and tr to delete any spaces
    local ORGIN_NAME="$(git remote -v | awk '{print $1}' | tail -1 | tr -d ' ')"
    if [[ -z "$ORGIN_NAME" ]]; then
        #no origin so prompt for it
        prettyPrint "What is your origin?"
        read ORGIN_NAME
    fi
    #concat url from variables
    local URL="https://github.com/$GITHUB_ACCOUNT/$REPO_NAME_TO_CREATE"
    #add the remote repository
    git remote add "$ORGIN_NAME" "$URL" 2> /dev/null
    getInitialCommit
}

getInitialCommit(){
    prettyPrint "What is your commit message?"
    read commitMessage
    commitTheDirectory "$commitMessage"
}

usage(){
    #prettyPrint format
    printf "\e[37;44m"
    #if argument passed in then print it
    if [[ ! -z "$1" ]]; then
        printf "$1\n"
    fi
    #here doc for printing multiline
    cat <<EOM
    usage:
    -h	help
    -l 	pull from Repo
    -p 	<COMMIT_MESSAGE> push to Repo
    -c 	init Repo
EOM
printf "\e[0m"
exit 1
}

gitPull(){
    #if .git directory exists and remote repository established
    if [[ -d ".git" && ! -z "$(git remote)" ]]; then
        local PULL_URL="$(git remote -v | \
        awk '{print $2}' | tail -1 | tr -d ' ')"
        git pull "$PULL_URL"
    else
        usage "No Remote Repository established."
        exit 1
    fi

}

gitPush(){
    #check for argument
    if [[ -z "$1" ]]; then
        usage "Need a commit message."
        exit 1
    fi
    #if .git directory exists and remote repository established
    if [[ -d ".git" && ! -z "$(git remote)" ]]; then
        commitTheDirectory "$1"
    else
        usage "No Remote Repository established."
        exit 1
    fi
}

commitTheDirectory(){
    #commitMessage is first argument
    local commitMessage="$1"
    local ORIGIN="$(git remote -v | awk '{print $1}' | tail -1 | tr -d ' ')"
    prettyPrint "Commiting to $ORIGIN with message $commitMessage"
    git add .
    git commit -m "$commitMessage"
    git push "$ORIGIN" master
    #if error then need to establish remote repository
    if [[ $? > 0 ]]; then
        local REPO_NAME="$(git remote -v | awk '{print $2}' | tail -1 | tr -d ' ')"
        getRemoteDetails "${REPO_NAME##*/}"
    fi	
}

##########################################
###############    MAIN     ##############
##########################################

#possible options to script= -h for help, -p with argument to push with commit,
#-l to pull from github, and -c to create repo
#only one option at a time forced with break
optstring=p:hcl
while getopts $optstring opt
do
    case $opt in
        h) usage >&2; break;;
        c) initializeGitDirectory;break;;
        l) gitPull;break;;
        p) gitPush "$OPTARG";break;;
        *) usage >&2;;
    esac
done

#if no options and no arguments passed to script then commit with "default-commit"
#if no options and 1 argument then commit with 1 argument
#gitPush function checks for presence of .git directory
if [[ $OPTIND == 1 ]]; then
    if [[ -z "$1" ]]; then
        gitPush "default-commit"
    else
        gitPush "$1"
    fi
fi
