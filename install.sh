#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed May 31 22:54:32 EDT 2017
#####   Purpose: bash script for custom terminal setup
#####   Notes: goal - work on mac and linux esp RPi
#####   Notes: this script should a one liner installer
#}}}***********************************************************

#{{{                    MARK:Setup
#**************************************************************

set -x

set -v

OS_TYPE="$(uname -s)"
#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"
exec &> >(tee "$INSTALLER_DIR"/logfile.txt)

#Dependencies
# 1) vim 8.0
# 2) tmux 2.1
# 3) lolcat
# 4) cmatrix
# 5) htop
# 6) cmake
# 7) youcompleteme
# 8) ultisnips
# 9) supertab
# 10) oh-my-zsh
# 11) agnosterzak
# 12) pathogen
# 13) nerdtree
# 14) ctrlp
# 15) powerline
# 16) powerline-mem-segment


dependencies_ary=(vim tmux git wget cowsay cmatrix htop cmake bpython sl \
    screenfetch fortune mailutils ccze htop figlet zsh docker erlang elixir links \
    rlwrap tor node nvm nginx nmap mtr mytop tcpdump redis toilet ysql mongodb postgresql \
    jnettop iotop atop ctags speedtest-cli texinfo lsof weechat gradle ant maven tree mc ocaml groovy \
    ) 

#}}}***********************************************************

#{{{                    MARK:Functions
#**************************************************************

addDependenciesLinux(){
    dependencies_ary+=(reptyr iptraf lib-gnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-devi libbonoboui2-dev \
    libpcap-dev ncurses-dev libevent-dev libncurses5-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev \
    libperl-dev dstat ecryptfs-utils at silversearcher-ag netatalk dnsutils \
    lua5.1 lua5.1-dev rl-dev software-properties-common sysv-rc-conf build-essential afpfs-ng logwatch wireshark \
    samba samba-common scrot syslog-ng sshfs fuse tomcat8 postfix golang xclip strace \
    )
}

addDependenciesDebian(){
    dependencies_ary+=(python3-dev python-dev ruby-dev python-pip python3-pip curl libffi-dev grc)

}

addDependenciesRedHat(){
    dependencies_ary+=(libpcap-devel python-devel python3-devel curses-devel automake the_silver_searcher)
}

addDependenciesMac(){
    dependencies_ary+=(the-silver-searcher fswatch zzz ghc lua python3 python macvim readline reattach-to-user-namespace \
    aalib ncmpcpp mpd ctop hub ncurses tomcat ninvaders kotlin grails go\
    )
}

exists(){
    type "$1" >/dev/null 2>&1
}

prettyPrint(){
    printf "\x1b[32;1m"
    perl -le "print '#'x100"
    printf "\x1b[34;4m"
    printf "$1\n"
    printf "\x1b[0;32;1m"
    perl -le "print '#'x100"
    printf "\x1b[0m"
    printf "\n"
}

update (){
    exists "$1" || {

        if [[ $2 == mac ]]; then
            brew install "$1"
        elif [[ $2 == debian ]];then
            sudo apt-get install -y "$1"
        elif [[ $2 == redhat ]];then
            sudo yum install -y "$1"
        else
            prettyPrint "Error at install with $2." >&2
        fi
    }
}

#}}}***********************************************************

#{{{                    MARK:Mac
#**************************************************************
if [[ "$OS_TYPE" == "Darwin" ]]; then
    prettyPrint "Checking Dependencies for Mac..."

    exists "brew" || {
        #install homebrew
        prettyPrint "Installing HomeBrew..."
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    }

    prettyPrint "We have Homebrew..."

    brew ls python > /dev/null 2>&1
    if [[ $? == 1 ]]; then
        brew install python
        brew install pip
    fi

    prettyPrint "We have Python..."

    prettyPrint "Now The Main Course..."
    
    addDependenciesMac

    for prog in "${dependencies_ary[@]}"; do
        update "$prog" mac
    done

    prettyPrint "Installing Powerline fonts"
    brew cask install font-hack-nerd-font

    #}}}***********************************************************

#{{{                    MARK:Linux
#**************************************************************

else

    addDependenciesLinux
    distroName=$(grep "^ID=" /etc/os-release | cut -d= -f2 | tr -d \" | head -n 1)

    case $distroName in
        (debian|ubuntu|raspbian|kali) prettyPrint "Installing Dependencies for $distroName with the Advanced Package Manager..."
            distro=debian
            addDependenciesDebian
            ;;
        (centos|fedora|rhel) prettyPrint "Installing Dependencies for $distroName with the Yellowdog Updater Modified"
            distro=redhat
            addDependenciesRedHat
            ;;
        (*)
            prettyPrint "Your distro $distroName is unsupported now...cannot proceed!" >&2
            exit 1
            ;;
    esac

    prettyPrint "Now The Main Course..."

    for prog in "${dependencies_ary[@]}"; do
        prettyPrint "Installing $prog"
        update "$prog" "$distro"
    done


    prettyPrint "Installing Powerline fonts"
    if [[ -d /usr/share/fonts ]] && [[ -d /etc/fonts/conf.d ]]; then
        wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
        wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
        # move font to valid font path
        sudo mv PowerlineSymbols.otf /usr/share/fonts/
        # Update font cache for the path the font
        sudo fc-cache -vf /usr/share/fonts/
        # Install the fontconfig file
        sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
    else
        printf "/usr/share/fonts and /etc/fonts/conf.d must exist for powerline fonts." >&2
    fi

fi

#}}}***********************************************************

#{{{                    MARK:vim
#**************************************************************


printf "Common Installer Section"

vimV="$(vim --version | head -1 | awk '{print $5}')"
res=$(echo "$vimV >= 8.0" | bc)

[[ $res == 0 ]] && {
    prettyPrint "Vim Version less than 8.0! Installing Vim from Source."
    git clone https://github.com/vim/vim.git vim-master
    cd "vim-master" && {
        ./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
            sudo make install
    }
}


prettyPrint "Installing Pathogen"
#install pathogen
mkdir -p "$HOME/.vim/autoload" "$HOME/.vim/bundle" && curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

prettyPrint "Installing Vim Plugins"
bash "$INSTALLER_DIR/vim_plugins_install.sh"

if [[ "$OS_TYPE" == "Darwin" ]]; then
    prettyPrint "Installing psutil for Python Glances"
    pip install psutil 
    prettyPrint "Installing Python Glances"
    pip install glances
    prettyPrint "Installing Virtualenv"
    pip3 install virtualenv

    prettyPrint "Installing Powerline..."

    pip install powerline-status
    prettyPrint "Installing Tmux Powerline"

    tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux
    pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    pip install pydf

    prettyPrint "Installing MyCLI"
    pip install mycli



    if [[ "$distro" == redhat ]]; then
        prettyPrint "Installing grc with pip"
        git clone https://github.com/garabik/grc.git && cd grc && sudo bash install.sh
    fi

    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        pip install --upgrade youtube_dl
    }
else
    prettyPrint "Installing psutil for Python Glances"
    sudo pip install psutil 
    prettyPrint "Installing Python Glances"
    sudo pip install glances
    prettyPrint "Installing Powerline..."

    sudo pip install powerline-status
    prettyPrint "Installing Tmux Powerline"

    tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
    sudo pip install powerline-mem-segment
    prettyPrint "Installing PyDf"
    sudo pip install pydf

    prettyPrint "Installing MyCLI"
    sudo pip install mycli

    exists youtube_dl || {
        prettyPrint "Installing youtube-dl"
        sudo pip install --upgrade youtube_dl
    }

    exists pip3 && {
        sudo pip3 install bpython
    }

fi
prettyPrint "Done With Python Packages"


prettyPrint "Installing Lolcat"
gem install lolcat

prettyPrint "Running Vundle"
#run vundle install for ultisnips, supertab
vim -c PluginInstall -c qall

prettyPrint "Installing .vimrc"
cp "$INSTALLER_DIR/.vimrc" "$HOME"

#}}}***********************************************************

#{{{                    MARK:Vim Plugs
#**************************************************************
################################################################################
## YouCompleteMe
################################################################################

#prettyPrint "Installing YouCompleteMe"
#cd $HOME/.vim/bundle/YouCompleteMe && ./install.py --clang-completer

#}}}***********************************************************


#{{{                    MARK:Tmux
#**************************************************************

#custom settings for tmux powerline
if [[ -d "$tmuxPowerlineDir" ]]; then
     mkdir -p "$tmuxPowerlineDir" && cat default.json >> "$tmuxPowerlineDir/default.json"
fi

prettyPrint "Installing Tmux Plugin Manager"
if [[ -d "$HOME/.tmux/plugins/tpm"  ]]; then
     mkdir -p $HOME/.tmux/plugins/tpm
     git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

prettyPrint "Copying tmux configuration file to home directory"
cp "$INSTALLER_DIR/.tmux.conf" "$HOME"
prettyPrint "Installing Iftop config..."
ip=$(ifconfig | grep "inet\s" | grep -v 127 | awk '{print $2}' | sed 's/addr://')
iface=$(ifconfig | grep -B3 "inet .*$ip" | grep '^[a-zA-Z0-9].*' | awk '{print $1}' | tr -d ":")
echo "interface:$iface" >> "$INSTALLER_DIR/.iftop.conf"

cp "$INSTALLER_DIR/.iftop.conf" "$HOME"

if [[ "$distroName" == raspbian ]]; then
    prettyPrint "Installing custom motd for RPI..."
    cp "$INSTALLER_DIR/motd.sh" "$HOME"
fi

prettyPrint "Installing Custom Tmux Commands"
cp -R "$INSTALLER_DIR/.tmux" "$HOME"

prettyPrint "Installing Tmux plugins"
bash "$INSTALLER_DIR/tmux_plugins_install.sh"

#}}}***********************************************************

#{{{                    MARK:Utilities
#**************************************************************
prettyPrint "Installing IFTOP-color by MenkeTechnologies"
if [[ -d "$HOME/ForkedRepos" ]]; then
    mkdir "$HOME/ForkedRepos" && cd "$HOME/ForkedRepos" && {
        git clone https://github.com/MenkeTechnologies/iftopcolor
        cd iftopcolor && {
        ./configure && make && sudo make install
        }
    }
fi

if [[ -f "$HOME/.token.sh" ]]; then
    touch "$HOME/.tokens.sh"
fi

prettyPrint "HushLogin"
if [[ -f "$HOME/.hushlogin" ]]; then
    touch "$HOME/.hushlogin"
fi

if [[ -f "$HOME/.my.cnf" ]]; then
    touch "$HOME/.my.cnf"
fi

prettyPrint "Changing pager to cat for MySQL Clients such as MyCLI"
echo "[client]" >> "$HOME/.my.cnf"
echo "pager=cat" >> "$HOME/.my.cnf"

prettyPrint "Copying all Shell Scripts..."
if [[ ! -d "$HOME/Documents/shellScripts" ]]; then
    mkdir -p "$HOME/Documents/shellScripts"
fi

cp "$INSTALLER_DIR/scripts/"*.sh "$HOME/Documents/shellScripts"
cp -R "$INSTALLER_DIR/scripts/macOnly" "$HOME/Documents/shellScripts"

prettyPrint "Installing ponysay from source"
git clone https://github.com/erkin/ponysay.git && {
cd ponysay && sudo ./setup.py --freedom=partial install && \
    cd .. && sudo rm -rf ponysay
}

prettyPrint "Installing Pipes.sh from source"
git clone https://github.com/pipeseroni/pipes.sh.git
cd pipes.sh && {
    sudo make install
    cd ..
    rm -rf pipe.sh
}

prettyPrint "Installing htoprc file...."
htopDIR="$HOME/.config/htop"
if [[ -f "$htopDIR/htoprfc" ]]; then
    if [[ -d "$htopDIR" ]]; then
        mkdir -P "$htopDIR"
    fi
    mv "$INSTALLER_DIR/htoprc" "$htopDIR"
fi

type chsh >/dev/null 2>&1 && {
    prettyPrint "Changing default shell to Zsh"
    chsh -s "$(which zsh)"
}

prettyPrint "Installing grc configuration for colorization and grc.zsh for auto aliasing...asking for passwd with sudo"
if [[ "$(uname)" == Darwin ]]; then
    GRC_DIR=/usr/local/share/grc
else
    GRC_DIR=/usr/share/grc
fi
prettyPrint "Copying grc config files"
cp "$INSTALLER_DIR/grc.zsh" "$HOME"
cp "$INSTALLER_DIR/conf.gls" "$HOME"
cp "$INSTALLER_DIR/conf.df" "$HOME"
cp "$INSTALLER_DIR/conf.ifconfig" "$HOME"
cp "$INSTALLER_DIR/conf.mount" "$HOME"


#}}}***********************************************************

#{{{                    MARK:zsh
#**************************************************************

#add aliases and functions
prettyPrint "Adding common shell aliases for Bash and Zsh"
cp "$INSTALLER_DIR/.shell_aliases_functions.sh" "$HOME"

prettyPrint "Installing .zshrc"
cp "$INSTALLER_DIR/.zshrc" "$HOME"

prettyPrint "Installing oh-my-zsh..."
#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
cp "$INSTALLER_DIR/agnosterzak.zsh-theme" "$HOME/.oh-my-zsh/themes/"

prettyPrint "Installing Zsh plugins"
bash "$INSTALLER_DIR/zsh_plugins_install.sh"

#}}}***********************************************************

#{{{                    MARK:Final
#**************************************************************
cd "$INSTALLER_DIR"
cd
rm -rf "$INSTALLER_DIR"
prettyPrint "Done!!!!!!"

prettyPrint "Starting Tmux..."
prettyPrint "Starting the matrix"
tmux
tmux source-file "$HOME/.tmux/control-window"
tmux select-pane -t right
tmux send-keys "matr" C-m

#}}}***********************************************************
