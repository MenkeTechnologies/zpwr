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

OS_TYPE="$(uname -s)"
#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"

#bold
printf "\e[1m"

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
    python3-dev colortail screenfetch fortune postfix mailutils ccze \
    libpcap-dev ncurses-dev iftop htop figlet silversearcher-ag zsh libevent-dev libncurses5-dev libgnome2-dev\
    libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev netatalk dstat \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev at dnsutils fuse afpfs-ng \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev rlwrap tor npm nginx nmap mtr tcpdump \
    jnettop iotop atop software-properties-common ctags speedtest-cli texinfo lsof weechat grc)

#}}}***********************************************************

#{{{                    MARK:Functions
#**************************************************************

exists(){
    type "$1" >/dev/null 2>&1
}

update (){

    exists "$1" || {

        if [[ $2 == mac ]]; then
            brew install "$1"
        else
            sudo apt-get install -y "$1"
        fi
    }
}

#}}}***********************************************************

if [[ "$OS_TYPE" == "Darwin" ]]; then
    #{{{                    MARK:Mac
    #**************************************************************
    printf "Checking Dependencies for Mac...\n"

    exists "brew" || {
        #install homebrew
        printf "Installing HomeBrew...\n"
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    }

    printf "We have Homebrew...\n"

    brew ls python > /dev/null 2>&1
    if [[ $? == 1 ]]; then
        brew install python
        brew install pip
    fi


    printf "We have Python...\n"

    printf "\e[4mNow The Main Course...\n\e[0;1m"

    for prog in ${dependencies_ary[@]}; do
        update $prog mac
    done

    #}}}***********************************************************

else

    #{{{                    MARK:Linux
    #**************************************************************


    distroName=$(lsb_release -a | head -1 | awk '{print $3}')

    case $distroName in
        Raspbian ) printf "Installing Dependencies for $distroName with the Advanced Package Manager...\n"
            ;;
        * )
            printf "Your distro $distroName is unsupported now...cannot proceed!\n" >&2
            exit 1
    esac

    printf "First Build-Essential and Reptyr...\n"

    sudo apt-get -y install build-essential reptyr

    printf "\e[4mNow The Main Course...\n\e[0;1m"

    for prog in ${dependencies_ary[@]}; do
        printf "Installing $prog\n"
        update $prog linux
    done

    #}}}***********************************************************

fi
#{{{                    MARK:vim
#**************************************************************

#printf "Installing Vim8 From Source\n"
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

printf "Installing Pathogen\n"
#install pathogen
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
    curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

printf "Installing Vim Plugins\n"
bash "./vim_plugins_install.sh"

printf "Installing psutil for Python Glances\n"
sudo pip install psutil 
printf "Installing Python Glances\n"
sudo pip install glances

printf "Installing Virtualenv\n"
pip3 install virtualenv
printf "Running Vundle\n"
#run vundle install for ultisnips, supertab
vim -c PluginInstall -c qall

printIf "Installing .vimrc\n"
cp "$INSTALLER_DIR/.vimrc $HOME"

#}}}***********************************************************

################################################################################
## YouCompleteMe
################################################################################

printf "Installing YouCompleteMe\n"

cd $HOME/.vim/bundle/YouCompleteMe
./install.py --clang-completer

################################################################################
## Powerline
################################################################################
printf "Installing Powerline...\n"

sudo pip install powerline-status

printf "Adding Powerline to .vimrc \n"

powerline_dir="$(pip show powerline-status | grep Location | awk '{print $2}')"
echo "set rtp+=$powerline_dir/powerline/bindings/vim" >> .vimrc

#{{{                    MARK:zsh
#**************************************************************
printf "Installing oh-my-zsh...\n"
#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
cp "$INSTALLER_DIR/agnosterzak.zsh-theme" $HOME/.oh-my-zsh/themes/

#add aliases and functions
printf "Adding common shell aliases for Bash and Zsh\n"
cp "$INSTALLER_DIR/.shell_aliases_functions.sh" "$HOME"
#echo "source $HOME/.shell_aliases_functions.sh" >> "$HOME/.zshrc"

printf "Installing .zshrc\n"
cp "$INSTALLER_DIR/.zshrc" "$HOME"

printf "Installing Zsh plugins\n"
bash "$INSTALLER_DIR/zsh_plugins_install.sh"

#}}}***********************************************************
#{{{                    MARK:Tmux
#**************************************************************
#printf "Installing Tmux Powerline\n"

#tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux
#echo pip install powerline-mem-segment

#custom settings for tmux powerline
#if [[ ! -d $tmuxPowerlineDir ]]; then
#    echo mkdir -p $tmuxPowerlineDir && cat default.json >> $tmuxPowerlineDir/default.json
#fi

printf "Installing Tmux Plugin Manager\n"
if [[ ! -d $HOME/.tmux/plugins/tpm  ]]; then
    echo mkdir -p $HOME/.tmux/plugins/tpm
    echo git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

printf "Adding Powerline to .tmux.conf\n"
# add powerline to .tmux.conf
#echo "source $powerline_dir/powerline/bindings/tmux/powerline.conf >> tmux/.tmux.conf"
#echo "run '~/.tmux/plugins/tpm/tpm' >> tmux/.tmux.conf"

printf "Copying tmux configuration file to home directory\n"
if [[ "$(uname)" == Linux ]]; then
    #statements
    cp "$INSTALLER_DIR/.tmux.conf.rpi" "$HOME"
    mv "$HOME/.tmux.conf.rpi" "$HOME/.tmux.conf"
    printf "Installing Iftop config...\n"
    cp "$INSTALLER_DIR/.iftop.conf" "$HOME" 
else
    cp "./.tmux.conf" "$HOME"
    printf "Installing Iftop config...\n"
    cp "$INSTALLER_DIR/.iftop.conf.mac" "$HOME" 
    mv "$HOME/.iftop.conf.mac" "$HOME/.iftop.conf"
fi

printf "Installing Custom Tmux Commands\n"
cp -R "$INSTALLER_DIR/.tmux" "$HOME"

printf "Installing Tmux plugins\n"
bash "$INSTALLER_DIR/tmux_plugins_install.sh"

#}}}***********************************************************

#printf "Installing IFTOP-color"
#if [[ ! -d "$HOME/ForkedRepos" ]]; then
#mkdir "$HOME/ForkedRepos" && cd "$HOME/ForkedRepos"
#git clone https://github.com/MenkeTechnologies/iftopcolor
#sudo ./configure && make
#fi

printf "Installing PyDf\n"
sudo pip install pydf

printf "Installing MyCLI\n"
sudo pip install mycli

if [[ ! -f "$HOME/.token.sh" ]]; then
    touch "$HOME/.tokens.sh"
fi

printf "HushLogin\n"
if [[ ! -f "$HOME/.hushlogin" ]]; then
    touch "$HOME/.hushlogin"
fi

if [[ ! -f "$HOME/.my.cnf" ]]; then
    touch "$HOME/.my.cnf"
fi

printf "Changing pager to cat for MySQL Clients such as MyCLI\n"
echo "[client]" >> "$HOME/.my.cnf"
echo "pager=cat" >> "$HOME/.my.cnf"

echo "Copying all Shell Scripts..."
if [[ ! -d "$HOME/Documents/shellScripts" ]]; then
    mkdir -p "$HOME/Documents/shellScripts"
fi
cp $INSTALLER_DIR/scripts/*.sh "$HOME/Documents/shellScripts"
cp -R "$INSTALLER_DIR/scripts/macOnly" "$HOME/Documents/shellScripts"

printf "Installing ponysay from source\n"
git clone https://github.com/erkin/ponysay.git && {
cd ponysay && sudo ./setup.py --freedom=partial install && \
    cd .. && sudo rm -rf ponysay
}

printf "Installing Pipes.sh from source\n"
git clone https://github.com/pipeseroni/pipes.sh.git
cd pipes.sh && {
sudo make install
cd ..
rm -rf pipe.sh
}

printf "Installing htoprc file....\n"
htopDIR="$HOME/.config/htop"
if [[ ! -f "$htopDIR/htoprfc" ]]; then
    if [[ ! -d "$htopDIR" ]]; then
        mkdir -P "$htopDIR"
    fi
    mv "$INSTALLER_DIR/htoprc" "$htopDIR"
fi

type youtube-dl >/dev/null 2>&1 || {
printf "Installing youtube-dl\n"
sudo pip install --upgrade youtube_dl
}


type chsh >/dev/null 2>&1 && {
printf "Changing default shell to Zsh\n"
chsh -s "$(which zsh)"
}

printf "Installing grc configuration for colorization and grc.zsh for auto aliasing...asking for passwd with sudo\n"
if [[ "$(uname)" == Darwin ]]; then
    GRC_DIR=/usr/local/share/grc
else
    GRC_DIR=/usr/share/grc
fi
cp "$INSTALLER_DIR/grc.zsh" "$HOME"
sudo cp "$INSTALLER_DIR/conf.gls" "$GRC_DIR"

printf "Changing current shell to Zsh\n"
exec zsh

printf "Starting Tmux...\n"
printf "Matrix time...\n"
tmux
tmux source-file "$HOME/.tmux/control-window"
tmux select-pane -t right
tmux send-keys "matr" C-m

printf "Done\n\e[0m"
