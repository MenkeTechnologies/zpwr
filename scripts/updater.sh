#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 12:03:45 EDT 2017
#####   Purpose: bash  script to update all command line packages locally and on servers
#####   Notes:
#}}}***********************************************************

__ScriptVersion="1.0.0"

#===  FUNCTION  ================================================================
#         NAME:  usage
#  DESCRIPTION:  Display usage information.
#===============================================================================
function usage ()
{
    echo "Usage :  $0 [options] [--]

    Options:
    -h|help       Display this message
    -s|skip       Skip the main
    -v|version    Display script version"

}    # ----------  end of function usage  ----------

#-----------------------------------------------------------------------
#  Handle command line arguments
#-----------------------------------------------------------------------

while getopts ":hvs" opt
do
  case $opt in

    h|help     )  usage; exit 0   ;;
    s|skip ) skip=true ;;

    v|version  )  echo "$0 -- Version $__ScriptVersion"; exit 0   ;;

    * )  echo -e "\n  Option does not exist : $OPTARG\n"
          usage; exit 1   ;;

  esac    # --- end of case ---
done
shift $(($OPTIND-1))


# clear screen
trap 'echo bye | figletRandomFontOnce.sh| ponysay -Wn | splitReg.sh -- ------------------ lolcat ; exit 0' INT
clear

prettyPrint(){
    printf "\e[1;4m"
    printf "$1"
    printf "\n\e[0m"
}

alternatingPrettyPrint(){
    counter=0

    if [[ -z "$1" ]]; then
        cat | perl -F"$DELIMITER_CHAR" -anE '
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
        perl -F"$DELIMITER_CHAR" -anE '
        my $counter=0;
        for my $arg (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$arg\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$arg\x1b[0m"
            }
        $counter++;
        }; print "\x1b[0m"' <<< "$@"

    fi

}


exists(){
    type "$1" >/dev/null 2>&1
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

[[ -z "$SCRIPTS" ]] && SCRIPTS="$HOME/Documents/shellScripts"

if [[ $skip != true ]]; then
    [[ -f "$SCRIPTS/printHeader.sh" ]] && {
        w=80
        perl -le "print '_'x$w" | lolcat
        echo "UPDATER" | "$SCRIPTS/macOnly/combo.sh"
        perl -le "print '_'x$w" | lolcat
    }
    #python 3.6
    exists pip3 && {
        prettyPrint "Updating Python3.6 Packages"
        #pip lists outdated programs and get first column with awk
        #store in outdated
        outdated=$(pip3 list --outdated --format=columns | awk '{print $1}')

        #install outdated pip modules
        #split on space
        for i in $outdated; do
            pip3 install --upgrade "$i" #&> /dev/null
        done

        prettyPrint "Updating Pip3 Packages"
        #update pip itself
        pip3 install --upgrade pip setuptools wheel #&> /dev/null
    }

    #python 2.7 (non system)
    exists pip2 && {
        prettyPrint "Updating Python2.7 Packages"
        #pip lists outdated programs and get first column with awk
        #store in outdated
        outdated=$(pip2 list --outdated --format=columns | awk '{print $1}')

        #install outdated pip modules
        #split on space
        for i in $outdated; do
            pip2 install --upgrade "$i" #&> /dev/null
        done

        #update pip itself
        prettyPrint "Updating Pip2 Packages"
        pip2 install --upgrade pip setuptools wheel #&> /dev/null
    }

    exists /usr/local/bin/ruby && {
        prettyPrint "Updating Ruby Packages"
        /usr/local/bin/gem update --system
        /usr/local/bin/gem update
        /usr/local/bin/gem cleanup
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
        prettyPrint "Updating NPM packages"
        for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f4)
        do
            npm install -g "$package"
        done
        prettyPrint "Updating NPM itself"
        npm install -g npm
    }

    exists yarn && {
        prettyPrint "Updating yarn packages"
        yarn global upgrade
    #    prettyPrint "Updating yarn itself"
    #    npm install -g yarn
    }

    exists cpanm && {
        prettyPrint "Updating Perl Packages"
        perlOutdated=$(cpan-outdated -p -L "$PERL5LIB")
        if [[ ! -z "$perlOutdated" ]]; then
            echo "$perlOutdated" | cpanm --local-lib "$HOME/perl5" --force 2> /dev/null
        fi
    }

    exists pio && {
        prettyPrint "Updating PlatformIO"
        pio update
        pio upgrade
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
fi


#first argument is user@host and port number configured in .ssh/config
updatePI(){ #-t to force pseudoterminal allocation for interactive programs on remote host
    #pipe yes into programs that require confirmation
    #alternatively apt-get has -y option
    # -x option to disable x11 forwarding
    hostname="$(echo "$1" | awk -F: '{print $1}')"
    manager="$(echo "$1" | awk -F: '{print $2}')"

    if [[ "$manager" == "apt" ]]; then
        ssh -x "$hostname" 'yes | sudo apt-get update
        yes | sudo apt-get upgrade
        yes | sudo apt-get dist-upgrade
        yes | sudo apt-get autoremove
        yes | sudo apt-get autoclean'
    elif [[ "$manager" == zypper ]]; then
        ssh -x "$hostname" 'sudo zypper --non-interactive refresh
        sudo zypper --non-interactive update
        sudo zypper --non-interactive dist-upgrade
        sudo zypper --non-interactive clean -a'
        cat "$SCRIPTS/pipUpdater.sh" | ssh -x "$hostname" "cat | bash"
    elif [[ "$manager" == dnf ]]; then
        ssh -x "$hostname" 'yes | sudo dnf upgrade
        yes | sudo dnf clean all'
        cat "$SCRIPTS/pipUpdater.sh" | ssh -x "$hostname" "cat | bash"
    else
        :
    fi

    #here we will update the Pi's own software and vim plugins (not included in apt-get)
    #avoid sending commmands from stdin into ssh, better to use string after ssh
    cat "$SCRIPTS/rpiSoftwareUpdater.sh" | ssh -x "$hostname" "cat | bash "
}

#for loop through arrayOfPI, each item in array is item is .ssh/config file for
for pi in "${PI_ARRAY[@]}"; do
    updatePI "$pi"
done

brew tap | grep cask-upgrade 1>/dev/null 2>&1 && {
    # we have brew cu
    prettyPrint "Updating Homebrew Casks!"
    brew cu -fay --cleanup
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

clear && cd ~/Desktop
