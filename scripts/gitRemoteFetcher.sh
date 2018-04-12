#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Thu Apr 12 00:02:45 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

dir="$HOME/forkedRepos/customTerminalInstaller"

cd "$dir" || { echo "Directory $dir does not exist" >&2 && exit 1; }

while [[ 1 ]]; do

    git fetch origin
    output=$(git log HEAD..origin/master --oneline)

    if [[  ! -z "$output" ]] ; then
        echo "We have change to $(git remote -v)"
        git merge origin/master

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
		cp -f scripts/* "$SCRIPTS"
    else
        echo "No change to $(git remote -v)"
    fi

    sleep 10
done

