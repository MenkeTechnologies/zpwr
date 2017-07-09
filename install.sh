#!/usr/bin/env bash

#Created by jacobmenke at Wed May 31 22:54:32 EDT 2017

#{{{                    MARK:Setup
#**************************************************************

set -x

os=`uname -s`

INSTALLER_DIR="$(pwd -P)"

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

dependencies_ary=(vim tmux git wget lolcat cmatrix htop cmake glances bpython python-dev colortail screenfetch \
    libpcap-dev ncurses-dev iftop htop figlet silversearcher-ag zsh libevent-dev libncurses5-dev libgnome2-dev\
    libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev rlwrap tor npm)

#}}}***********************************************************

#{{{                    MARK:Functions
#**************************************************************

update (){

    if [[ -z "$(which $1)" ]]; then
        if [[ $2 == mac ]]; then
            echo brew install "$1"
        else
            echo sudo apt-get install -y "$1"
        fi
    else
        printf "Already have $1\n"
    fi
}
#}}}***********************************************************

if [[ "$os" == "Darwin" ]]; then
    #{{{                    MARK:Mac
    #**************************************************************
    printf "Checking Dependencies for Mac...\n"

    if [[ -z "$(which brew)" ]]; then
        #install homebrew
        echo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi


    echo brew ls python > /dev/null 2>&1
    if [[ $? == 1 ]]; then
        echo brew install python
        echo brew install pip
    fi


    for prog in ${dependencies_ary[@]}; do
        update $prog mac
    done

    #}}}***********************************************************

else

    #{{{                    MARK:Linux
    #**************************************************************

    printf "Checking Dependencies for Linux...\n"

    echo sudo apt-get install build-essential

    echo sudo apt-get install python-dev python3-dev

    for prog in ${dependencies_ary[@]}; do
        update $prog linux
    done

    #}}}***********************************************************

fi

printf "Installing Vim8\n"
git clone https://github.com/vim/vim.git vim-master
cd vim-master
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

printf "Installing Pathogen\n"
#install pathogen
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
    curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

printf "Installing Vim Plugins\n"
bash "./vim_plugins_install.sh"

printf "Installing Vim Colors\n"
cp "$INSTALLER_DIR/colors" "$HOME/.vim"
printf "Installing psutil for Python Glances\n"
sudo pip install psutil 
printf "Installing Python Glances\n"
sudo pip install glances

printf "Running Vundle\n"
#run vundle install for ultisnips, supertab
cp "$INSTALLER_DIR/.vimrc $HOME"
echo vim +PluginInstall +qall

################################################################################
## YouCompleteMe
################################################################################

printf "Installing YouCompleteMe\n"

echo cd $HOME/.vim/bundle/YouCompleteMe
echo ./install.py --clang-completer


################################################################################
## Powerline
################################################################################
printf "Installing Powerline...\n"

sudo pip install powerline-status

printf "Adding Powerline to .vimrc \n"

powerline_dir="$(pip show powerline-status | grep Location | awk '{print $2}')"
echo "set rtp+=$powerline_dir/powerline/bindings/vim" >> .vimrc


################################################################################
## Zsh
################################################################################

printf "Installing oh-my-zsh...\n"
#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
cp agnosterzak.zsh-theme $HOME/.oh-my-zsh/themes/

#add aliases and functions
printf "Adding common shell aliases"
cp ".shell_aliases_functions.sh" "$HOME"
echo "source $HOME/.shell_aliases_functions.sh" >> "$HOME/.zshrc"

printf "Instpalling zsh plguins"
bash "./zsh_plugins_install.sh"

################################################################################
## Tmux
################################################################################
printf "Installing Tmux Powerline\n"


tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux
echo pip install powerline-mem-segment



#custom settings for tmux powerline
if [[ ! -d $tmuxPowerlineDir ]]; then
    echo mkdir -p $tmuxPowerlineDir && cat default.json >> $tmuxPowerlineDir/default.json
fi


printf "Installing Tmux Plugin Manager\n"
if [[ ! -d ~/.tmux/plugins/tpm  ]]; then
    echo mkdir -p ~/.tmux/plugins/tpm
    echo git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

printf "Adding Powerline to .tmux.conf\n"
# add powerline to .tmux.conf
echo "source $powerline_dir/powerline/bindings/tmux/powerline.conf >> tmux/.tmux.conf"
echo "run '~/.tmux/plugins/tpm/tpm' >> tmux/.tmux.conf"


printf "Copying tmux config"
cp "./.tmux.conf" "$HOME"

printf "Installing Custom Tmux Commands\n"
cp -R "$INSTALLER_DIR/.tmux" "$HOME"

printf "Installing Tmux plugins"
bash "$INSTALLER_DIR/tmux_plugins_install.sh"

printf "Installing Colotail Config"
cp "./.colortailconf" "$HOME"

#printf "Installing IFTOP-color"
#if [[ ! -d "$HOME/ForkedRepos" ]]; then
#mkdir "$HOME/ForkedRepos" && cd "$HOME/ForkedRepos"
#git clone https://github.com/MenkeTechnologies/iftopcolor
#sudo ./configure && make
#fi

printf "Installing PyDf"
sudo pip install pydf

printf "Installing MyCLI"
sudo pip install mycli
printf "Changing default shell to Zsh\n"
echo ch -s "$(which zsh)"

if [[ ! -f "$HOME/.token.sh" ]]; then
    touch "$HOME/.tokens.sh"
fi

printf "\e[0m"
