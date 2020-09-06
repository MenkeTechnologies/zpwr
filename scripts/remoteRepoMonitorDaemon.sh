#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Thu Apr 12 00:02:45 EDT 2018
##### Purpose: bash script to keep remote hosts in sync with master
##### Notes: watches 2 repos
#}}}***********************************************************

baseDir="$ZPWR"
configDir="$ZPWR"
zshPluginDir="$ZSH_CUSTOM/plugins"
remoteName=origin

[[ ! -d "$configDir" ]] && echo "no config dir '$configDir'" >&2 && exit 1
[[ ! -d "$zshPluginDir" ]] && echo "no zshPluginDir '$zshPluginDir'" >&2 && exit 1

function gittersmaster() {

    git fetch -f --all --prune --tags
    git reset --hard $remoteName/master
    git checkout -B master $remoteName/master
    git pull --force
    git reset --hard $remoteName/master
    git fetch -f --all --prune --tags
}

function gittersdev() {

    git fetch -f --all --prune --tags
    git reset --hard $remoteName/dev
    git checkout -B dev $remoteName/dev
    git pull --force
    git reset --hard $remoteName/dev
    git fetch -f --all --prune --tags
}

function main() {

    local dir completionDir

    gittersdev
    completionDir="$zshPluginDir"
    for dir in "$completionDir/"*; do
        printf "$dir: "
        test -d "$dir" && ( builtin cd "$dir" && git pull; )
    done
    refreshers
}

function refreshers() {

    #create new zsh in right pane
    #space for safety as C-c tends to cut off first character
    tmux send-keys -t right C-c C-c C-c " tmux source-file ~/.tmux.conf; exec zsh" C-m
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
    output=$(git log HEAD..$remoteName/master --oneline)

    if [[ -n "$output" ]]; then
        echo "$(date) We have change to $(git remote -v)" >&2
        gittersmaster
        refreshers
    fi

    sleep 10

done
