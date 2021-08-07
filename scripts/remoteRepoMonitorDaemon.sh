#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Thu Apr 12 00:02:45 EDT 2018
##### Purpose: bash script to keep remote hosts in sync with master
##### Notes: watches 2 repos
#}}}***********************************************************

REPO_NAME='zpwr'
ZPWR_COMP_REPO_NAME='zsh-more-completions'

function zsh-gacp-mainBranch() {

    command git rev-parse --git-dir &>/dev/null || return 1

    local branch remote

    if [[ -z "$1" ]]; then
        remote=origin
    else
        remote="$1"
    fi

    for branch in master main; do
        if command git show-ref -q --verify refs/remotes/$remote/$branch; then
            echo "$branch"
            return
        fi
    done
    echo master
}

function zsh-gacp-devBranch() {

    command git rev-parse --git-dir &>/dev/null || return 1

    local branch remote

    if [[ -z "$1" ]]; then
        remote=origin
    else
        remote="$1"
    fi

    for branch in development develop devel; do
        if command git show-ref -q --verify refs/remotes/$remote/$branch; then
            echo "$branch"
            return
        fi
    done

    echo dev
}

baseDir="$ZPWR"
configDir="$ZPWR"
zshPluginDir="$ZSH_CUSTOM/plugins"
remoteName=origin

[[ ! -d "$configDir" ]] && echo "no config dir '$configDir'" >&2 && exit 1
[[ ! -d "$zshPluginDir" ]] && echo "no zshPluginDir '$zshPluginDir'" >&2 && exit 1

function resetToMaster() {

    git fetch -f --all --prune --tags
    git reset --hard $remoteName/$(zsh-gacp-mainBranch "$remote")
    git checkout -B master $remoteName/$(zsh-gacp-mainBranch "$remote")
    git pull --force
    git reset --hard $remoteName/$(zsh-gacp-mainBranch "$remote")
    git fetch -f --all --prune --tags
}

function resetToDev() {

    git fetch -f --all --prune --tags
    git reset --hard $remoteName/$(zsh-gacp-devBranch "$remote")
    git checkout -B dev $remoteName/$(zsh-gacp-devBranch "$remote")
    git pull --force
    git reset --hard $remoteName/$(zsh-gacp-devBranch "$remote")
    git fetch -f --all --prune --tags
}

function zpwrIsGitDir(){

    command git rev-parse --git-dir 2> /dev/null 1>&2
}

function main() {

    local dir completionDir

    resetToDev
    completionDir="$zshPluginDir"
    for dir in "$completionDir/"*; do
        test -d "$dir" && (

            builtin cd "$dir" &&
            zpwrIsGitDir &&
            printf "$dir: " &&
            resetToMaster
        )
    done
    refreshers
}

function refreshers() {

    #create new zsh in right pane
    #space for safety as C-c tends to cut off first character
    tmux send-keys -t right C-c C-c C-c " tmux source-file \"\$ZPWR_TMUX/init.conf\" 2>> \"\$ZPWR_LOGFILE\" 1>&2; exec zsh" C-m
    tmux display-message "Got the latest code!"
    #tmux kill-server
    #pid="$(ps -ef | grep sshd | grep @pts | awk '{print $2}')"
    #sudo kill "$pid"
}

while true; do

    cd "$configDir" || {
        echo "$(date) Directory $configDir does not exist" >&2
        if [[ ! -d "$baseDir" ]]; then
            mkdir -pv "baseDir"
            cd "$baseDir" || exit 1
            echo "$(date) Created $configDir and exiting." >&2
            exit 1
        fi
    }

    #echo "$(date) git poll in $(pwd)" >&2
    git fetch -f --all --prune --tags
    output=$(git log HEAD..$remoteName/dev --oneline)

    if [[ -n "$output" ]]; then
        echo "$(date) We have change to $(git remote -v)"
        main
    fi

    if ! cd -- "$zshPluginDir/"*$ZPWR_COMP_REPO_NAME; then
        echo "$(date) Directory $zshPluginDir does not exist" >&2
        exit 1
    fi

    #echo "$(date) git poll in $(pwd)" >&2
    git fetch $remoteName
    output=$(git log HEAD..$remoteName/$(zsh-gacp-mainBranch "$remote"))

    if [[ -n "$output" ]]; then
        echo "$(date) We have change to $(git remote -v)" >&2
        resetToMaster
        refreshers
    fi

    sleep 10

done
