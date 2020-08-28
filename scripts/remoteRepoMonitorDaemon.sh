#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Thu Apr 12 00:02:45 EDT 2018
##### Purpose: bash script to keep remote hosts in sync with master
##### Notes: watches 2 repos
#}}}***********************************************************

baseDir="$HOME/.zpwr"
configDir="$HOME/.zpwr"
zshCompDir="$HOME/.oh-my-zsh/custom/plugins/$ZSH_COMP_REPO_NAME"
remoteName=origin

[[ ! -d "$configDir" ]] && echo "no $configDir" >&2 && exit 1
[[ ! -d "$zshCompDir" ]] && echo "no $zshCompDir" >&2 && exit 1

function gittersmaster() {

    git fetch -f --all --prune --tags $remoteName
    git reset --hard $remoteName/master
    git checkout -B master $remoteName/master
    git pull --force
    git reset --hard $remoteName/master
    git fetch -f --all --prune --tags $remoteName
}

function gittersdev() {

    git fetch -f --all --prune --tags $remoteName
    git reset --hard $remoteName/dev
    git checkout -B dev $remoteName/dev
    git pull --force
    git reset --hard $remoteName/dev
    git fetch -f --all --prune --tags $remoteName
}

function main() {

    local dir completionDir

    gittersdev
    #cp .shell_aliases_functions.sh "$HOME/.zpwr"
    #cp .zshrc "$HOME"
    #cp .vimrc "$HOME"
    #cp .minvimrc "$HOME/.zpwr"
    #cp .tmux.conf "$HOME"
    #cp conf.gls "$HOME"
    #cp conf.df "$HOME"
    #cp conf.ifconfig "$HOME"
    #cp grc.zsh "$HOME"
    #cp .inputrc "$HOME"
    #cp -R .tmux/* "$HOME/.zpwr/.tmux"
    #if [[ -n "$ZPWR_SCRIPTS" ]]; then
        #rm -f "$ZPWR_SCRIPTS/"*
        #cp -f scripts/* "$ZPWR_SCRIPTS"
        #cp -Rf scripts/macOnly "$ZPWR_SCRIPTS"
    #else
        #echo "$(date) How is ZPWR_SCRIPTS null?" >&2
        #env
    #fi
    completionDir="$HOME/.oh-my-zsh/custom/plugins"
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
    git fetch -f --all --prune --tags $remoteName
    output=$(git log HEAD..$remoteName/dev --oneline)

    if [[ -n "$output" ]]; then
        echo "$(date) We have change to $(git remote -v)"
        main
    fi

    cd "$zshCompDir" || { echo "$(date) Directory $zshCompDir does not exist" >&2 && exit 1; }
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
