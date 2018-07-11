#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Thu Apr 12 00:02:45 EDT 2018
#####   Purpose: bash script to keep remote hosts in sync with master
#####   Notes: watches 2 repos
#}}}***********************************************************

CONFIG_DIR="$HOME/forkedRepos/customTerminalInstaller"
ZSH_COMP_DIR="$HOME/.oh-my-zsh/custom/plugins/zsh-more-completions"

gitters(){
    git reset --hard origin/master
    git checkout -B master origin/master
    git pull --force
    git reset --hard origin/master
}

main(){
    gitters
    cp .shell_aliases_functions.sh "$HOME"
    cp .zshrc "$HOME"
    cp .vimrc "$HOME"
    cp .tmux.conf "$HOME"
    cp conf.gls "$HOME"
    cp conf.df "$HOME"
    cp conf.ifconfig "$HOME"
    cp grc.zsh "$HOME"
    cp .inputrc "$HOME"
    cp -R .tmux/* "$HOME/.tmux"
    rm -f "$SCRIPTS/"*
    cp -f scripts/* "$SCRIPTS"
    refreshers
}

refreshers(){
    #create new zsh in right pane
    #space for safety as C-c tends to cut off first character
    tmux send-keys -t right C-c C-c C-c " tmux source-file ~/.tmux.conf; nz" C-m
    #tmux kill-server
    #pid="$(ps -ef | grep sshd | grep @pts | awk '{print $2}')"
    #sudo kill "$pid"
}

while true; do

    cd "$CONFIG_DIR" || { echo "Directory $CONFIG_DIR does not exist" >&2 && exit 1; }
    git fetch origin
    output=$(git log HEAD..origin/master --oneline)

    if [[  ! -z "$output" ]] ; then
        echo "We have change to $(git remote -v)"
        main
    fi

    cd "$ZSH_COMP_DIR" || { echo "Directory $ZSH_COMP_DIR does not exist" >&2 && exit 1; }
    git fetch origin
    output=$(git log HEAD..origin/master --oneline)

    if [[  ! -z "$output" ]] ; then
        echo "We have change to $(git remote -v)"
        gitters
        refreshers
    fi

    sleep 5

done

