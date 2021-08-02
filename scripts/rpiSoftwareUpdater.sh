#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Jul 8 20:57:59 EDT 2017
##### Purpose: bash script to update software on the RPI itself
##### Notes:
#}}}***********************************************************
if [[ -n "$ZPWR" && -n "$ZPWR_LIB_INIT" ]]; then
    if ! source "$ZPWR_LIB_INIT" ""; then
        echo "Could not source dir '$ZPWR_LIB_INIT'."
        exit 1
    fi
else
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$zpwrBaseDir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

    while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
        zpwrBaseDir="$(dirname "$zpwrBaseDir")"
        if [[ "$zpwrBaseDir" == / ]]; then
            echo "Could not find .zpwr_root file up the directory tree." >&2
            exit 1
        fi
    done
    if [[ $ZPWR_REMOTE != true ]]; then
        if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
            echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
            exit 1
        fi
    fi

    unset zpwrBaseDir
fi

zpwrPrettyPrint "Updating Tmux Plugins"
zpwrGitRepoUpdater "$HOME/.tmux/plugins"

zpwrPrettyPrint "Updating Pathogen Plugins"
#update pathogen plugins
zpwrGitRepoUpdater "$HOME/.vim/bundle"

if [[ $ZPWR_PLUGIN_MANAGER == oh-my-zsh ]]; then
        zpwrPrettyPrint "Updating OhMyZsh"
        builtin cd "$ZSH/tools" && bash "$ZSH/tools/upgrade.sh"

        zpwrPrettyPrint "Updating OhMyZsh Plugins"
        zpwrGitRepoUpdater "$ZSH_CUSTOM/plugins"

        zpwrPrettyPrint "Updating OhMyZsh Themes"
        zpwrGitRepoUpdater "$ZSH_CUSTOM/themes"
elif [[ $ZPWR_PLUGIN_MANAGER == zinit ]]; then
    zpwrPrettyPrint "Updating Zinit"
    zpwrGitRepoUpdater "$ZSH_CUSTOM/plugins"
fi

cargo_bin="$HOME/.cargo/bin/cargo"
zpwrCommandExists "$cargo_bin" && {
    zpwrPrettyPrint "Updating cargo packages"
    "$cargo_bin" install cargo-update 2>/dev/null
    "$cargo_bin" install-update -a
}
rustup_bin="$HOME/.cargo/bin/rustup"
zpwrCommandExists "$rustup_bin" && {
    zpwrPrettyPrint "Updating rustup"
    "$rustup_bin" update
}

zpwrPrettyPrint "Updating Vundle Plugins"
#vim -c VundleUpdate -c quitall

zpwrAlternatingPrettyPrint "Updating Ruby ${ZPWR_DELIMITER_CHAR}Gems${ZPWR_DELIMITER_CHAR} for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
sudo gem update

zpwrCommandExists npm && {
    zpwrAlternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}NPM${ZPWR_DELIMITER_CHAR} packages for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4); do
        sudo npm install -g "$package"
    done
    zpwrAlternatingPrettyPrint "Updating ${ZPWR_DELIMITER_CHAR}NPM${ZPWR_DELIMITER_CHAR} itself for ${ZPWR_DELIMITER_CHAR}$(whoami)${ZPWR_DELIMITER_CHAR} on ${ZPWR_DELIMITER_CHAR}$(hostname)${ZPWR_DELIMITER_CHAR}"
    sudo npm install -g npm
}
