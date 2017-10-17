#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:03:45 EDT 2017
#####   Purpose: bash  script to update all command line packages locally and on servers 
#####   Notes:
#}}}***********************************************************
# clear screen
clear

prettyPrint(){
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

exists(){
    type "$1" >/dev/null 2>&1
}

#start white text on blue background \e44:37m, -e required for escape sequences
#echo -e "\e[44;37m"

if [[ -z "$SCRIPTS" ]]; then
    SCRIPTS="$HOME/Documents/shellScripts"
fi

if [[ -f "$SCRIPTS/printHeader.sh" ]];then
    bash "$SCRIPTS/printHeader.sh"
fi

#python 3.6
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
    pip3 install --upgrade pip setuptools wheel &> /dev/null
}

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
    pip2 install --upgrade pip setuptools wheel &> /dev/null
}
exists rvm && {
    prettyPrint "Updating Ruby Packages"
    rvm get stable
    gem update --system
    gem update
    gem cleanup
    rvm cleanup all
}

exists brew && {
    prettyPrint "Updating Homebrew Packages"
    brew update #&> /dev/null
    brew upgrade #&> /dev/null
    #remove brew cache
    rm -rf "$(brew --cache)"
    #removing old symbolic links
    brew prune
    #remote old programs occupying disk sectors
    brew cleanup
    brew cask cleanup
    brew services cleanup
}

exists npm && {
    prettyPrint "Updating NPM Packages"
    for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4)
    do
        npm install -g "$package"
    done
    #updating npm itself
    npm install -g npm
}

exists yarn && {
    prettyPrint "Updating yarn itself"
    npm install --global yarn
    prettyPrint "Updating yarn modules"
    yarn global upgrade
}

exists cpanm && {

    prettyPrint "Updating Perl Packages"
    perlOutdated=$(cpan-outdated -p)

    if [[ "$perlOutdated" ]]; then
        :
        #echo "$perlOutdated" | cpanm --local-lib "$HOME/perl5" --force 2> /dev/null
    fi
}

exists pio && {
    prettyPrint "Updating PlatformIO"
    pio update
    pio upgrade
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

#first argument is user@host and port number configured in .ssh/config
updatePI(){
    #-t to force pseudoterminal allocation for interactive programs on remote host
    #pipe yes into programs that require confirmation
    #alternatively apt-get has -y option
    #semicolon to chain commands
    # -x option to disable x11 forwarding
    ssh -x "$1" 'yes | sudo apt-get update
    yes | sudo apt-get dist-upgrade
    yes | sudo apt-get autoremove
    yes | sudo apt-get upgrade
    yes | sudo apt-get autoclean'

    #here we will update the Pi's own software and vim plugins (not included in apt-get)
    #avoid sending commmands from stdin into ssh, better to use string after ssh
    ssh -x "$1" "$(< $SCRIPTS/rpiSoftwareUpdater.sh)"
}

arrayOfPI=(r r2)

#for loop through arrayOfPI, each item in array is item is .ssh/config file
for pi in "${arrayOfPI[@]}"; do
    updatePI "$pi"
done


brew tap | grep cask-upgrade 1>/dev/null 2>&1 && {
    # we have brew cu
    prettyPrint "Updating Homebrew Casks!"
    brew cu --all -y --cleanup
} || {
    # we don't have brew cu
    prettyPrint "Installing brew-cask-upgrade"
    brew tap buo/cask-upgrade
    brew update
    prettyPrint "Updating Homebrew Casks!"
    brew cu --all -y --cleanup
}
prettyPrint "Updating Vundle Plugins"

vim -c VundleUpdate -c quitall

#decolorize prompt
echo -e "Done\e[0m"
clear
