#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Thu Apr 12 00:02:45 EDT 2018
##### Purpose: bash script to keep remote hosts in sync with master
##### Notes: watches 2 repos
#}}}***********************************************************

BASE_DIR="$HOME/.zpwr"
CONFIG_DIR="$HOME/.zpwr"
ZSH_COMP_DIR="$HOME/.oh-my-zsh/custom/plugins/$ZSH_COMP_REPO_NAME"

[[ ! -d "$CONFIG_DIR" ]] && echo "no $CONFIG_DIR" >&2 && exit 1
[[ ! -d "$ZSH_COMP_DIR" ]] && echo "no $ZSH_COMP_DIR" >&2 && exit 1

gittersmaster() {
    git fetch -f --all --prune --tags
    git reset --hard origin/master
    git checkout -B master origin/master
    git pull --force
    git reset --hard origin/master
}

gittersdev() {
    git fetch -f --all --prune --tags
    git reset --hard origin/dev
    git checkout -B dev origin/dev
    git pull --force
    git reset --hard origin/dev
}

main() {
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
    COMPLETION_DIR="$HOME/.oh-my-zsh/custom/plugins"
    for dir in "$COMPLETION_DIR/"*; do
        printf "$dir: "
        test -d "$dir" && ( builtin cd "$dir" && git pull; )
    done
    refreshers
}

refreshers() {
    #create new zsh in right pane
    #space for safety as C-c tends to cut off first character
    tmux send-keys -t right C-c C-c C-c " tmux source-file ~/.tmux.conf; exec zsh" C-m
    tmux display-message "Got the latest code!"
    #tmux kill-server
    #pid="$(ps -ef | grep sshd | grep @pts | awk '{print $2}')"
    #sudo kill "$pid"
}

while true; do

    cd "$CONFIG_DIR" || {
        echo "$(date) Directory $CONFIG_DIR does not exist" >&2
        if [[ ! -d "$BASE_DIR" ]]; then
            mkdir -pv "BASE_DIR"
            cd "$BASE_DIR" || exit 1
            echo "$(date) Created $CONFIG_DIR and exiting." >&2
            exit 1
        fi
    }

    #echo "$(date) git poll in $(pwd)" >&2
    git fetch origin
    output=$(git log HEAD..origin/dev --oneline)

    if [[ -n "$output" ]]; then
        echo "$(date) We have change to $(git remote -v)"
        main
    fi

    cd "$ZSH_COMP_DIR" || { echo "$(date) Directory $ZSH_COMP_DIR does not exist" >&2 && exit 1; }
    #echo "$(date) git poll in $(pwd)" >&2
    git fetch origin
    output=$(git log HEAD..origin/master --oneline)

    if [[ -n "$output" ]]; then
        echo "$(date) We have change to $(git remote -v)" >&2
        gittersmaster
        refreshers
    fi

    sleep 10

done
