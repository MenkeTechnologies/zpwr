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

#set -x
set -v

OS_TYPE="$(uname -s)"
#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"

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

dependencies_ary=(vim tmux git wget lolcat cowsay cmatrix htop cmake glances bpython python-dev \
    python3-dev colortail screenfetch fortune postfix mailutils ccze ecryptfs-utils \
    libpcap-dev ncurses-dev iftop htop figlet silversearcher-ag zsh libevent-dev libncurses5-dev libgnome2-dev\
    libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev netatalk dstat \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev at dnsutils fuse afpfs-ng \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev rlwrap tor npm nginx nmap mtr mytop tcpdump \
    jnettop iotop atop software-properties-common ctags speedtest-cli texinfo lsof weechat grc gradle sysv-rc-conf \
    build-essential reptyr python-pip python3-pip)

#}}}***********************************************************

#{{{                    MARK:Functions
#**************************************************************

exists(){
    type "$1" >/dev/null 2>&1
}

prettyPrint(){
    printf "\x1b[4;1m"
    perl -le "print '#'x100"
    printf "$1\n"
    perl -le "print '#'x100"
    printf "\x1b[0m"
}

update (){

    exists "$1" || {

        if [[ $2 == mac ]]; then
            brew install "$1"
        elif [[ $2 == debian ]];then
            sudo apt-get install -y "$1"
        elif [[ $2 == redhat ]];then
            yum install -y "$1"
        else
            prettyPrint "Error at install with $2." >&2; exit 1
        fi
    }
}

#}}}***********************************************************

if [[ "$OS_TYPE" == "Darwin" ]]; then
    #{{{                    MARK:Mac
    #**************************************************************
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

    for prog in ${dependencies_ary[@]}; do
        update $prog mac
    done

    #}}}***********************************************************

else

    #{{{                    MARK:Linux
    #**************************************************************


    distroName=$(cat /etc/os-release | grep "^ID=" | cut -d= -f2 | tr -d \")

    case $distroName in
        (debian|ubuntu|raspbian|kali) prettyPrint "Installing Dependencies for $distroName with the Advanced Package Manager..."
           distro=debian
            ;;
        (centos) prettyPrint "Installing Dependencies for $distroName with the Advanced Package Manager..."
            distro=redhat
            ;;
        * )
            prettyPrint "Your distro $distroName is unsupported now...cannot proceed!" >&2
            exit 1
    esac

    prettyPrint "Now The Main Course..."

    for prog in ${dependencies_ary[@]}; do
        prettyPrint "Installing $prog"
        update $prog $distro
    done

    #}}}***********************************************************

fi
#{{{                    MARK:vim
#**************************************************************

#prettyPrint "Installing Vim8 From Source"
#git clone https://github.com/vim/vim.git vim-master
#cd vim-master
#./configure --with-features=huge \
    #--enable-multibyte \
    #--enable-rubyinterp=yes \
    #--enable-pythoninterp=yes \
    #--with-python-config-dir=/usr/lib/python2.7/config \
    #--enable-python3interp=yes \
    #--with-python3-config-dir=/usr/lib/python3.5/config \
    #--enable-perlinterp=yes \
    #--enable-luainterp=yes \
    #--enable-gui=gtk2 --enable-cscope --prefix=/usr
#sudo make install

prettyPrint "Installing Pathogen"
#install pathogen
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
    curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

prettyPrint "Installing Vim Plugins"
bash "$INSTALLER_DIR/vim_plugins_install.sh"

prettyPrint "Installing psutil for Python Glances"
sudo pip install psutil 
prettyPrint "Installing Python Glances"
sudo pip install glances

prettyPrint "Installing Virtualenv"
pip3 install virtualenv
prettyPrint "Running Vundle"
#run vundle install for ultisnips, supertab
vim -c PluginInstall -c qall

prettyPrint "Installing .vimrc"
cp "$INSTALLER_DIR/.vimrc" "$HOME"

#}}}***********************************************************

################################################################################
## YouCompleteMe
################################################################################

prettyPrint "Installing YouCompleteMe"

cd $HOME/.vim/bundle/YouCompleteMe && ./install.py --clang-completer

################################################################################
## Powerline
################################################################################
prettyPrint "Installing Powerline..."

sudo pip install powerline-status

prettyPrint "Adding Powerline to .vimrc"


#{{{                    MARK:zsh
#**************************************************************
prettyPrint "Installing oh-my-zsh..."
#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
cp "$INSTALLER_DIR/agnosterzak.zsh-theme" $HOME/.oh-my-zsh/themes/

#add aliases and functions
prettyPrint "Adding common shell aliases for Bash and Zsh"
cp "$INSTALLER_DIR/.shell_aliases_functions.sh" "$HOME"
#echo "source $HOME/.shell_aliases_functions.sh" >> "$HOME/.zshrc"

prettyPrint "Installing .zshrc"
cp "$INSTALLER_DIR/.zshrc" "$HOME"

prettyPrint "Installing Zsh plugins"
bash "$INSTALLER_DIR/zsh_plugins_install.sh"

#}}}***********************************************************
#{{{                    MARK:Tmux
#**************************************************************
#prettyPrint "Installing Tmux Powerline"

#tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux
#echo pip install powerline-mem-segment

#custom settings for tmux powerline
#if [[ d $tmuxPowerlineDir ]]; then
#    echo mkdir -p $tmuxPowerlineDir && cat default.json >> $tmuxPowerlineDir/default.json
#fi

prettyPrint "Installing Tmux Plugin Manager"
if [[ -d $HOME/.tmux/plugins/tpm  ]]; then
    echo mkdir -p $HOME/.tmux/plugins/tpm
    echo git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

prettyPrint "Adding Powerline to .tmux.conf"
# add powerline to .tmux.conf
#echo "source $powerline_dir/powerline/bindings/tmux/powerline.conf >> tmux/.tmux.conf"
#echo "run '~/.tmux/plugins/tpm/tpm' >> tmux/.tmux.conf"

prettyPrint "Copying tmux configuration file to home directory"
if [[ "$(uname)" == Linux ]]; then
    #statements
    cp "$INSTALLER_DIR/.tmux.conf.rpi" "$HOME"
    mv "$HOME/.tmux.conf.rpi" "$HOME/.tmux.conf"
    prettyPrint "Installing Iftop config..."
    cp "$INSTALLER_DIR/.iftop.conf" "$HOME"
    prettyPrint "Installing custom motd for RPI..."
    cp "$INSTALLER_DIR/motd.sh" "$HOME"
else
    cp "./.tmux.conf" "$HOME"
    prettyPrint "Installing Iftop config..."
    cp "$INSTALLER_DIR/.iftop.conf.mac" "$HOME" 
    mv "$HOME/.iftop.conf.mac" "$HOME/.iftop.conf"
fi

prettyPrint "Installing Custom Tmux Commands"
cp -R "$INSTALLER_DIR/.tmux" "$HOME"

prettyPrint "Installing Tmux plugins"
bash "$INSTALLER_DIR/tmux_plugins_install.sh"

#}}}***********************************************************

#prettyPrint "Installing IFTOP-color"
#if [[ d "$HOME/ForkedRepos" ]]; then
#mkdir "$HOME/ForkedRepos" && cd "$HOME/ForkedRepos"
#git clone https://github.com/MenkeTechnologies/iftopcolor
#sudo ./configure && make && sudo make install
#fi

prettyPrint "Installing PyDf"
sudo pip install pydf

prettyPrint "Installing MyCLI"
sudo pip install mycli

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
cp $INSTALLER_DIR/scripts/*.sh "$HOME/Documents/shellScripts"
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

type youtube-dl >/dev/null 2>&1 || {
    prettyPrint "Installing youtube-dl"
    sudo pip install --upgrade youtube_dl
}

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

prettyPrint "Starting Tmux..."
prettyPrint "Matrix time..."
tmux
tmux source-file "$HOME/.tmux/control-window"
tmux select-pane -t right
prettyPrint "Starting the matrix"
tmux send-keys "matr" C-m

prettyPrint "Changing current shell to Zsh"

prettyPrint "Done\e[0m"

