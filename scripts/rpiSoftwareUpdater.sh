#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sat Jul 8 20:57:59 EDT 2017
##### Purpose: bash script to update software on the RPI itself
##### Notes:
#}}}***********************************************************
source="${BASH_SOURCE[0]}"
while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
  dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
  source="$(readlink "$source")"
  [[ $source != /* ]] && source="$dir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

if [[ $ZPWR_REMOTE == false ]]; then
    if ! source "$dir/init.sh"; then
        echo "could not source dir '$dir/init.sh'"
    fi
fi

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

cargo_bin="$HOME/.cargo/bin/cargo"
exists "$cargo_bin" && {
    prettyPrint "Updating cargo packages"
    "$cargo_bin" install cargo-update 2>/dev/null
    "$cargo_bin" install-update -a
}
rustup_bin="$HOME/.cargo/bin/rustup"
exists "$rustup_bin" && {
    prettyPrint "Updating rustup"
    "$rustup_bin" update
}

prettyPrint "Updating Vundle Plugins"
#vim -c VundleUpdate -c quitall

alternatingPrettyPrint "Updating Ruby ${ZPWR_DELIMITER_CHAR}Gems${ZPWR_DELIMITER_CHAR} for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
sudo gem update

exists npm && {
    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}NPM${ZPWR_DELIMITER_CHAR} packages for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4); do
        sudo npm install -g "$package"
    done
    alternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}NPM${ZPWR_DELIMITER_CHAR} itself for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    sudo npm install -g npm
}
