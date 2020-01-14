#!/usr/bin/env bash

#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Mon Jul 10 12:03:45 EDT 2017
##### Purpose: bash script to update all command line packages locally and on servers
##### Notes:
#}}}***********************************************************

__ScriptVersion="1.0.0"

#=== FUNCTION ================================================================
# NAME: usage
# DESCRIPTION: Display usage information.
#===============================================================================
usage() {
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
if [[ "$MYBANNER" == ponies ]]; then
    trap 'echo bye | figletRandomFontOnce.sh| ponysay -Wn | splitReg.sh -- ------------------ lolcat ; exit 0' INT
fi
clear

prettyPrint() {
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

alternatingPrettyPrint() {

    if [[ -z "$1" ]]; then
        cat | perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                print "\x1b[36m$arg\x1b[0m"
            } else {
            print "\x1b[1;4;34m$arg\x1b[0m"
        }
        $counter++;
        };print "\x1b[0m"'
    else
        perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        $counter++;
        for my $arg (@F){
            if ($counter % 2 == 0){
                print "\x1b[36m$arg\x1b[0m"
            } else {
            print "\x1b[1;4;34m$arg\x1b[0m"
        }
        }; print "\x1b[0m"' <<<"$@"
    fi
}

exists() {
    type "$1" >/dev/null 2>&1
}

gitRepoUpdater() {
    enclosing_dir="$1"

    if [[ -d "$enclosing_dir" ]]; then
        for generic_git_repo_plugin in "$enclosing_dir/"*; do
            if [[ -d "$generic_git_repo_plugin" ]]; then
                if [[ -d "$generic_git_repo_plugin"/.git ]]; then
                    printf "%s: " "$(basename "$generic_git_repo_plugin")"
                    ( builtin cd "$generic_git_repo_plugin" && git pull )
                fi
            fi
        done
    fi
}

[[ -z "$ZPWR_SCRIPTS" ]] && ZPWR_SCRIPTS="$HOME/.zpwr/scripts"

if [[ $skip != true ]]; then
    if [[ -f "$ZPWR_SCRIPTS/printHeader.sh" ]]; then
        width=80
        perl -le "print '_'x$width" | lolcat
        if [[ "$MYBANNER" == ponies ]]; then
            exists catme && exists cowsay && exists shelobsay && echo "UPDATER" | "$ZPWR_SCRIPTS/macOnly/combo.sh"
        fi
        perl -le "print '_'x$width" | lolcat
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

    #python 3.6
    python3 -c 'import pip' && {
        prettyPrint "Updating Python3.6 Packages"
        outdated=$(python3 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')

        #get last package
        last=$(python3 -m pip list | tail -1 | awk '{print $1}')
        installDir=$(python3 -m pip show "$last" | \perl -ne 'print $1 if /^Location: (.*)/')
        if [[ ! -w "$installDir" ]]; then
            needSudo=yes
        else
            needSudo=no
        fi

        if [[ -n "$needSudo" ]]; then
            prettyPrint "sudo needed: $needSudo for pip3 at $installDir"
        else
            prettyPrint "no sudo needed: $needSudo for pip3 at $installDir"
        fi

        if [[ "$needSudo" == yes ]]; then
            for i in $outdated; do
                sudo python3 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
            done
            prettyPrint "Updating Pip3"
            #update pip itself
            sudo python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
        else
            for i in $outdated; do
                python3 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
            done
            prettyPrint "Updating Pip3"
            #update pip itself
            python3 -m pip install --upgrade pip setuptools wheel #&> /dev/null
        fi

    }

    #python 2.7 (non system)
    python2 -c 'import pip' && {
        prettyPrint "Updating Python2.7 Packages"
        outdated=$(python2 -m pip list --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')

        last=$(python2 -m pip list | tail -1 | awk '{print $1}')
        installDir=$(python2 -m pip show "$last" | \perl -ne 'print $1 if /^Location: (.*)/')
        if [[ ! -w "$installDir" ]]; then
            needSudo=yes
        else
            needSudo=no
        fi

        if [[ -n "$needSudo" ]]; then
            prettyPrint "sudo needed: $needSudo for pip2 at $installDir"
        else
            prettyPrint "no sudo needed: $needSudo for pip2 at $installDir"
        fi

        if [[ "$needSudo" == yes ]]; then
            for i in $outdated; do
                sudo python2 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
            done
            prettyPrint "Updating Pip2"
            #update pip itself
            sudo python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
        else
            for i in $outdated; do
                python2 -m pip install --upgrade --ignore-installed -- "$i" #&> /dev/null
            done
            prettyPrint "Updating Pip2"
            #update pip itself
            python2 -m pip install --upgrade pip setuptools wheel #&> /dev/null
        fi
    }

    exists /usr/local/bin/ruby && {
        prettyPrint "Updating Ruby Packages"
        yes | /usr/local/bin/gem update --system
        yes | /usr/local/bin/gem update
        yes | /usr/local/bin/gem cleanup
    }

    exists brew && {
        prettyPrint "Updating Homebrew Packages"
        brew update  #&> /dev/null
        brew upgrade #&> /dev/null
        #remove brew cache
        rm -rf "$(brew --cache)"
        #remote old programs occupying disk sectors
        brew cleanup
        brew services cleanup
    }

    exists npm && {
        prettyPrint "Updating NPM packages"
        installDir=$(npm root -g | head -n 1)
        if [[ ! -w "$installDir" ]]; then
            needSudo=yes
        else
            needSudo=no
        fi
        for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4); do
            if [[ $needSudo == yes ]]; then
                sudo npm install -g "$package"
            else
                npm install -g "$package"
            fi
        done
        prettyPrint "Updating NPM itself"
        if [[ $needSudo == yes ]]; then
            sudo npm install -g npm
        else
            npm install -g npm
        fi
    }

    exists rustup && {
        prettyPrint "Updating rustup"
        rustup update
    }

    exists cargo && {
        prettyPrint "Updating cargo packages"
        cargo install cargo-update 2>/dev/null
        cargo install-update -a
    }

    exists yarn && {
        prettyPrint "Updating yarn packages"
        yarn global upgrade
        # prettyPrint "Updating yarn itself"
        # npm install -g yarn
    }

    exists cpanm && {
        prettyPrint "Updating Perl Packages"
        perlOutdated=$(cpan-outdated -p -L "$PERL5LIB")
        if [[ -n "$perlOutdated" ]]; then
            echo "$perlOutdated" | cpanm --local-lib "$HOME/perl5" --force 2>/dev/null
        fi
    }

    exists pio && {
        prettyPrint "Updating PlatformIO"
        pio update
        pio upgrade
    }
fi

#first argument is user@host and port number configured in .ssh/config
updatePI() { #-t to force pseudoterminal allocation for interactive programs on remote host
    #pipe yes into programs that require confirmation
    #alternatively apt-get has -y option
    # -x option to disable x11 forwarding
    hostname="$(echo "$1" | awk -F: '{print $1}')"
    manager="$(echo "$1" | awk -F: '{print $2}')"
    prettyPrint "Updating $hostname with $manager"

    if [[ "$manager" == "apt" ]]; then
        ssh -x "$hostname" '
        yes | sudo apt update
        yes | sudo apt dist-upgrade
        yes | sudo apt-get autoremove
        yes | sudo apt-get autoclean'
    elif [[ "$manager" == zypper ]]; then
        ssh -x "$hostname" 'sudo zypper --non-interactive refresh
        sudo zypper --non-interactive update
        sudo zypper --non-interactive dist-upgrade
        sudo zypper --non-interactive clean -a'
    elif [[ "$manager" == dnf ]]; then
        ssh -x "$hostname" 'yes | sudo dnf upgrade
        yes | sudo dnf clean all'
    else
        :
    fi

    #update python packages
    ssh -x "$hostname" bash <"$ZPWR_SCRIPTS/pipUpdater.sh"
    #here we will update the Pi's own software and vim plugins (not included in apt-get)
    #avoid sending commmands from stdin into ssh, better to send stdin script into bash
    ssh -x "$hostname" bash <"$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh"
}

#for loop through arrayOfPI, each item in array is item is .ssh/config file for
for pi in "${PI_ARRAY[@]}"; do
    updatePI "$pi"
done

exists brew && {
    if brew tap | grep cask-upgrade 1>/dev/null 2>&1; then
        # we have brew cu
        prettyPrint "Updating Homebrew Casks!"
        brew cu -ay --cleanup
    else
        # we don't have brew cu
        prettyPrint "Installing brew-cask-upgrade"
        brew tap buo/cask-upgrade
        brew update
        prettyPrint "Updating Homebrew Casks!"
        brew cu -ay --cleanup
    fi
}
prettyPrint "Updating Vundle Plugins"

if [[ $end != true ]]; then
    if [[ $ZPWR_USE_NEOVIM == true ]]; then
        if exists nvim; then
            nvim -c VundleUpdate -c quitall
        else
            vim -c VundleUpdate -c quitall
        fi
    else
        vim -c VundleUpdate -c quitall
    fi
fi

#decolorize prompt
printf "Done\n\x1b[0m"

exists clearList && clearList
