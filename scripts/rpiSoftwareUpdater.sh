#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sat Jul 8 20:57:59 EDT 2017
##### Purpose: bash script to update software on the RPI itself
##### Notes:
#}}}***********************************************************

#no complaining about no glob results for * from zsh
#setopt null_glob

prettyPrint() {
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

exists() {
    type "$1" >/dev/null 2>&1
}
export ZPWR_DELIMITER_CHAR='%'

alternatingPrettyPrint() {
    counter=0
    :
    if [[ -z $1 ]]; then
        cat | perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$arg\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$arg\x1b[0m"
            }
        ++$counter;
        };print "\x1b[0m"'
    else
        perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$arg\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$arg\x1b[0m"
            }
        ++$counter;
        }; print "\x1b[0m"' <<<"$@"

    fi
}

gitRepoUpdater() {
    enclosing_dir="$1"

    if [[ -d "$enclosing_dir" ]]; then
        for generic_git_repo_plugin in "$enclosing_dir/"*; do
            if [[ -d "$generic_git_repo_plugin" ]]; then
                if [[ -d "$generic_git_repo_plugin"/.git ]]; then
                    printf "%s: " "$(basename "$generic_git_repo_plugin")"
                    (
                        builtin cd "$generic_git_repo_plugin" &&
                            git fetch --all --prune &&
                            git pull --all
                        )
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
