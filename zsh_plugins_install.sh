#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:01:10 EDT 2017
#####   Purpose: bash script to install zsh plugins
#####   Notes: 
#}}}***********************************************************

installOhMyZshPlugin(){
    git clone "https://github.com/$1.git" 
}

cd "$HOME/.oh-my-zsh/custom/plugins" && {
installOhMyZshPlugin "zsh-users/zsh-completions"
installOhMyZshPlugin "zsh-users/zsh-autosuggestions"
installOhMyZshPlugin "zsh-users/zsh-syntax-highlighting"
}
