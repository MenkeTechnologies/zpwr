#!/usr/bin/env bash

# clear screen
clear

prettyPrint(){
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

#start white text on blue background \e44:37m, -e required for escape sequences
#echo -e "\e[44;37m"
bash "$SCRIPTS/printHeader.sh"

prettyPrint "Updating Python Dependencies"
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

prettyPrint "Updating Ruby Dependencies"
rvm get stable
gem update --system
gem update
gem cleanup
rvm cleanup all

prettyPrint "Updating Homebrew Dependencies"
brew update #&> /dev/null
brew upgrade #&> /dev/null
#remove brew cache
rm -rf "$(brew --cache)"
#removing old symbolic links
brew prune
#remote old programs occupying disk sectors
brew cleanup
brew cask cleanup

prettyPrint "Updating NPM Dependencies"
for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4)
do
    npm install -g "$package"
done
#updating npm itself
npm i -g npm

prettyPrint "Updating yarn modules"
yarn global upgrade

prettyPrint "Updating Perl Dependencies"
perlOutdated=$(cpan-outdated -p)

if [[ ! -z "$perlOutdated" ]]; then
    echo "$perlOutdated" | cpanm --force 2> /dev/null
fi
#have to run expect script to deal with sudo cpan
#expect $SCRIPTS/CPANupdater.tcl

prettyPrint "Updating Pathogen Plugins"
#update pathogen plugins
for pluginRepo in $HOME/.vim/bundle/*; do
    printf "%s: " "$(basename "$pluginRepo")"
    git -C "$pluginRepo" pull
done

prettyPrint "Updating OhMyZsh"
#upgrade_oh_my_zsh

prettyPrint "Updating OhMyZsh Plugins"

for zshPlugin in $HOME/.oh-my-zsh/custom/plugins/*; do
    printf "%s: " "$(basename "$zshPlugin")"
    git -C "$zshPlugin" pull
done

prettyPrint "Updating OhMyZsh Themes"

for zshPlugin in $HOME/.oh-my-zsh/custom/themes/*; do
    printf "%s: " "$(basename "$zshPlugin")"
    git -C "$zshPlugin" pull
done

#first argument is user@host and port number configured in .ssh/config
updatePI(){
    #-t to force pseudoterminal allocation for interactive programs on remote host
    #pipe yes into programs that require confirmation
    #alternatively apt-get has -y option
    #semicolon to chain commands
    ssh -t "$1" <<\EOM
    yes | sudo apt-get update
    yes | sudo apt-get dist-upgrade
    yes | sudo apt-get autoremove
    yes | sudo apt-get upgrade
EOM
    #here we will update the Pi's own software and vim plugins (not included in apt-get)
    cat $SCRIPTS/rpiSoftwareUpdater.sh | ssh -t "$1"
}

arrayOfPI=(r r2)

#for loop through arrayOfPI, each item in array is item is .ssh/config file
for pi in "${arrayOfPI[@]}"; do
    updatePI "$pi"
done

prettyPrint "Updating Vundle Plugins"
vim -c VundleUpdate -c quitall

#decolorize prompt
echo -e "Done\e[0m"
clear
