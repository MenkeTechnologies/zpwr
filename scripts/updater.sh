#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:03:45 EDT 2017
##### Purpose: bash script to update all command line packages locally and on servers
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
    if ! source "$zpwrBaseDir/scripts/init.sh" "$zpwrBaseDir"; then
        echo "Could not source zpwrBaseDir '$zpwrBaseDir/scripts/init.sh'."
        exit 1
    fi

    unset zpwrBaseDir
fi

__ScriptVersion="1.0.0"

#=== FUNCTION ================================================================
# NAME: usage
# DESCRIPTION: Display usage information.
#===============================================================================
function usage() {

    echo "Usage : $0 [options] [--]

    Options:
    -h|help Display this message
    -s|skip Skip the main
    -e|end Skip the end
    -v|version Display script version"

} # ---------- end of function usage  ----------

#-----------------------------------------------------------------------
# Handle command line arguments
#-----------------------------------------------------------------------

while getopts ":hvse" opt; do
    case $opt in

    h | help)
        usage
        exit 0
        ;;
    s | skip) skip=true ;;
    e | end) end=true ;;
    v | version)
        echo "$0 -- Version $__ScriptVersion"
        exit 0
        ;;
    *)
        echo -e "\n Option does not exist : $OPTARG\n"
        usage
        exit 1
        ;;

    esac # --- end of case ---
done
shift $((OPTIND - 1))

# clear screen
if [[ "$ZPWR_BANNER_TYPE" == ponies ]]; then
    if type figletRandomFontOnce.sh 2>/dev/null 1>&2; then
        trap 'echo bye | figletRandomFontOnce.sh| ponysay -Wn | splitReg.sh -- ------------------ lolcat ; exit 0' INT
    fi
fi
clear

[[ -z "$ZPWR_SCRIPTS" ]] && ZPWR_SCRIPTS="$HOME/.zpwr/scripts"

if [[ -f "$ZPWR_SCRIPTS/printHeader.sh" ]]; then
    width=80
    perl -le "print '_'x$width" | lolcat
    if [[ "$ZPWR_BANNER_TYPE" == ponies ]]; then
        zpwrCommandExists catme && zpwrCommandExists cowsay && zpwrCommandExists shelobsay && echo "UPDATER" | "$ZPWR_SCRIPTS/macOnly/combo.sh"
    fi
    perl -le "print '_'x$width" | lolcat
fi

if [[ $skip != true ]]; then

    zpwrPrettyPrint "Updating Tmux Plugins"
    zpwrGitRepoUpdater "$HOME/.tmux/plugins"

    zpwrPrettyPrint "Updating Pathogen Plugins"
    #update pathogen plugins
    zpwrGitRepoUpdater "$HOME/.vim/bundle"

    if [[ $ZPWR_PLUGIN_MANAGER == zinit ]]; then
        zpwrPrettyPrint "Updating Zinit"
        zpwrGitRepoUpdater "$ZSH_CUSTOM/plugins"
    elif [[ $ZPWR_PLUGIN_MANAGER == oh-my-zsh ]]; then
        zpwrPrettyPrint "Updating OhMyZsh"
        builtin cd "$ZSH/tools" && bash "$ZSH/tools/upgrade.sh"

        zpwrPrettyPrint "Updating OhMyZsh Plugins"
        zpwrGitRepoUpdater "$ZSH_CUSTOM/plugins"

        zpwrPrettyPrint "Updating OhMyZsh Themes"
        zpwrGitRepoUpdater "$ZSH_CUSTOM/themes"
    fi

    zpwrCommandExists ruby && {
        zpwrPrettyPrint "Updating Ruby Packages"
        yes | gem update --system
        yes | gem update
        yes | gem cleanup
    }

    zpwrCommandExists brew && {
        zpwrPrettyPrint "Updating Homebrew Packages"
        brew update  #&> /dev/null
        brew upgrade #&> /dev/null
        #remove brew cache
        rm -rf "$(brew --cache)"
        #remote old programs occupying disk sectors
        brew cleanup
        brew services cleanup
    }

    zpwrCommandExists pnpm && {
        zpwrPrettyPrint "Updating PNPM packages"
        installDir=$(pnpm root -g | head -n 1)
        if [[ ! -w "$installDir" ]]; then
            zpwrNeedSudo=yes
        else
            zpwrNeedSudo=no
        fi
        for package in $(pnpm -g outdated --parseable --depth=0 | cut -d: -f4); do
            if [[ $zpwrNeedSudo == yes ]]; then
                sudo pnpm add -g "$package"
            else
                pnpm add -g "$package"
            fi
        done
        zpwrPrettyPrint "Updating PNPM itself"
        pnpm add -g pnpm
    }

    zpwrCommandExists npm && {
        zpwrPrettyPrint "Updating NPM packages"
        installDir=$(npm root -g | head -n 1)
        if [[ ! -w "$installDir" ]]; then
            zpwrNeedSudo=yes
        else
            zpwrNeedSudo=no
        fi
        for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4); do
            if [[ $zpwrNeedSudo == yes ]]; then
                sudo npm install -g "$package"
            else
                npm install -g "$package"
            fi
        done
        zpwrPrettyPrint "Updating NPM itself"
        if [[ $zpwrNeedSudo == yes ]]; then
            sudo npm install -g npm
        else
            npm install -g npm
        fi
    }

    zpwrCommandExists rustup && {
        zpwrPrettyPrint "Updating rustup"
        rustup update
    }

    zpwrCommandExists cargo && {
        zpwrPrettyPrint "Updating cargo packages"
        cargo install cargo-update 2>/dev/null
        cargo install-update -a
    }

    zpwrCommandExists yarn && {
        zpwrPrettyPrint "Updating yarn packages"
        yarn global upgrade
        # zpwrPrettyPrint "Updating yarn itself"
        # npm install -g yarn
    }


    zpwrCommandExists emacs && {
        if [[ -f "$HOME/.emacs.d/init.el" ]]; then
            zpwrPrettyPrint "Updating spacemacs packages"
            emacs --batch -l "$HOME/.emacs.d/init.el" --eval="(progn (configuration-layer/update-packages t)(spacemacs/kill-emacs))"
        fi
    }

    zpwrPrettyPrint "Updating Vundle Plugins"

    if [[ $end != true ]]; then
        if [[ $ZPWR_USE_NEOVIM == true ]]; then
            if zpwrCommandExists nvim; then
                nvim -c VundleUpdate -c quitall
            else
                vim -c VundleUpdate -c quitall
            fi
        else
            vim -c VundleUpdate -c quitall
        fi
    fi

    zpwrCommandExists pio && {
        zpwrPrettyPrint "Updating PlatformIO"
        pio upgrade
        pio pkg update -g
    }

    zsh "$ZPWR_SCRIPTS/updaterPip.zsh"

    zpwrCommandExists snap && {
        zpwrPrettyPrint "Updating Snap Packages"
        sudo -E snap refresh
    }

    zpwrCommandExists cpanm && zpwrCommandExists cpan-outdated && {
        zpwrPrettyPrint "Updating Perl Packages"
        perlOutdated=$(cpan-outdated -p -L "$PERL5LIB")
        if [[ -n "$perlOutdated" ]]; then
            echo "$perlOutdated" | cpanm --local-lib "$HOME/perl5" --force 2>/dev/null
        fi
    }

fi

#first argument is user@host and port number configured in .ssh/config
updatePI() { #-t to force pseudoterminal allocation for interactive programs on remote host
    #pipe yes into programs that require confirmation
    #alternatively apt-get has -y option
    # -x option to disable x11 forwarding
    local hostname manager

    hostname="$(echo "$1" | awk -F: '{print $1}')"
    manager="$(echo "$1" | awk -F: '{print $2}')"
    zpwrPrettyPrint "Updating $hostname with $manager"

    if [[ "$manager" == "apt" ]]; then
        ssh -x "$hostname" '
        yes | sudo apt-get update
        yes | sudo apt-get upgrade
        yes | sudo apt-get autoremove
        yes | sudo apt-get clean'
        #yes | sudo apt-get dist-upgrade
    elif [[ "$manager" == zypper ]]; then
        ssh -x "$hostname" 'sudo zypper --non-interactive refresh
        sudo zypper --non-interactive update
        sudo zypper --non-interactive clean -a'
        #sudo zypper --non-interactive dist-upgrade
    elif [[ "$manager" == pacman ]]; then
        ssh -x "$hostname" 'sudo pacman -Syyu --noconfirm --overwrite="*"
        sudo paccache --remove'
     elif [[ "$manager" == apk ]]; then
        ssh -x "$hostname" 'sudo apk -U upgrade'
     elif [[ "$manager" == dnf ]]; then
        ssh -x "$hostname" 'yes | sudo dnf upgrade
        yes | sudo dnf clean all'
    else
        :
    fi

    #update python packages
    ssh -x "$hostname" zsh < <(echo "export ZPWR_REMOTE=true"; cat "$ZPWR_LIB" "$ZPWR_ENV_FILE" "$ZPWR_RE_ENV_FILE" "$ZPWR_TOKEN_PRE"  "$ZPWR_TOKEN_POST" "$ZPWR_SCRIPTS/updaterPip.zsh" 2> /dev/null)
    #here we will update the Pi's own software and vim plugins (not included in apt-get)
    #avoid sending commmands from stdin into ssh, better to send stdin script into bash
    ssh -x "$hostname" bash < <(echo "export ZPWR_REMOTE=true"; cat "$ZPWR_LIB" "$ZPWR_ENV_FILE" "$ZPWR_RE_ENV_FILE" "$ZPWR_TOKEN_PRE" "$ZPWR_TOKEN_POST" "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh" 2> /dev/null)
}

#for loop through arrayOfPI, each item in array is item is .ssh/config file for
for pi in "${PI_ARRAY[@]}"; do
    updatePI "$pi"
done

zpwrCommandExists brew && {
    if brew tap | grep cask-upgrade 1>/dev/null 2>&1; then
        # we have brew cu
        zpwrPrettyPrint "Updating Homebrew Casks!"
        brew cu -ay --cleanup
    else
        # we don't have brew cu
        zpwrPrettyPrint "Installing brew-cask-upgrade"
        brew tap buo/cask-upgrade
        brew update
        zpwrPrettyPrint "Updating Homebrew Casks!"
        brew cu -ay --cleanup
    fi
}

#decolorize prompt
zpwrPrettyPrint "Done"

zpwrExists zpwrClearList && zpwrClearList
