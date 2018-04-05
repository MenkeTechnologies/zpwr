#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Jul  8 20:57:59 EDT 2017
#####   Purpose: bash script to update software on the RPI itself
#####   Notes: 
#}}}***********************************************************

#no complaining about no glob results for * from zsh
#setopt null_glob

prettyPrint(){
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

exists(){
    type "$1" >/dev/null 2>&1
}
alternatingPrettyPrint(){
    counter=0
    lines="$(echo "$@" | perl -F\\. -lanE 'say foreach @F')"
    while IFS='\n' read arg ; do
       if [[ $((counter % 2 )) == 0 ]]; then
             printf "\x1b[36m${arg//\\n/ }\x1b[0m"
       else
             printf "\x1b[1;4;34m${arg//\\n/ }\x1b[0m"
        fi
       ((counter++))
    done <<< "$lines"
    printf "\n"
}

gitRepoUpdater(){
    enclosing_dir="$1"

    if [[ -d "$enclosing_dir" ]]; then
        for generic_git_repo_plugin in "$enclosing_dir/"*; do
            if [[ -d "$generic_git_repo_plugin" ]]; then
                if [[ -d "$generic_git_repo_plugin"/.git ]]; then
                    printf "%s: " "$(basename "$generic_git_repo_plugin")"
                    git -C "$generic_git_repo_plugin" pull
                fi
            fi
        done
    fi
}

prettyPrint "Updating Tmux Plugins"
gitRepoUpdater "$HOME/.tmux/plugins"

prettyPrint "Updating Pathogen Plugins"
#update pathogen plugins
gitRepoUpdater "$HOME/.vim/bundle"

prettyPrint "Updating OhMyZsh"
cd "$HOME/.oh-my-zsh/tools" && bash "$HOME/.oh-my-zsh/tools/upgrade.sh"

prettyPrint "Updating OhMyZsh Plugins"
gitRepoUpdater "$HOME/.oh-my-zsh/custom/plugins"

prettyPrint "Updating OhMyZsh Themes"
gitRepoUpdater "$HOME/.oh-my-zsh/custom/themes"

prettyPrint "Updating Vundle Plugins"
#vim -c VundleUpdate -c quitall

prettyPrint "Updating Ruby Gems for $(whoami))"
sudo gem update

prettyPrint "Updating NPM packages for $(whoami))"
exists npm && {
    prettyPrint "Updating NPM packages"
    for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4)
    do
        npm install -g "$package"
    done
    prettyPrint "Updating NPM itself"
    npm install -g npm
}


alternatingPrettyPrint "Updating .Pip3. packages for .$(whoami)."
exists pip3 && {
    prettyPrint "Updating Python3.6 Packages"
    #pip lists outdated programs and get first column with awk
    #store in outdated
    outdated=$(pip3 list --outdated | awk '{print $1}')

    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        pip3 install --upgrade "$i" #&> /dev/null
    done

    #update pip itself
    pip3 install --upgrade pip setuptools wheel #&> /dev/null
}

alternatingPrettyPrint "Updating .Pip2. packages for .$(whoami)."
#python 2.7 (non system)
exists pip2 && {
    prettyPrint "Updating Python2.7 Packages"
    #pip lists outdated programs and get first column with awk
    #store in outdated
    outdated=$(pip2 list --outdated | awk '{print $1}')

    #install outdated pip modules 
    #split on space
    for i in $outdated; do
        pip2 install --upgrade "$i" #&> /dev/null
    done

    #update pip itself
    pip2 install --upgrade pip setuptools wheel #&> /dev/null
}
