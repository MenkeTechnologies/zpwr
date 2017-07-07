#!/usr/bin/env bash
#Created by jacobmenke at Wed May 31 22:54:32 EDT 2017
set -x

os=`uname -s`

printf "\e[1m"

################################################################################
## Dependencies
################################################################################


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

declare -a dependencies_ary = (vim tmux git wget lolcat cmatrix htop cmake glances bpython python-dev)


if [[ "$os" == "Darwin" ]]; then
    ################################################################################
    ## Mac
    ################################################################################

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


else

    ################################################################################
    ## Linux
    ################################################################################

    printf "Checking Dependencies for Linux...\n"

    echo sudo apt-get install build-essential

    echo sudo apt-get install python-dev python3-dev

    for prog in ${dependencies_ary[@]}; do
        update $prog linux
    done

fi

################################################################################
## Vim
################################################################################

printf "Installing Pathogen\n"
#install pathogen
echo mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
    echo curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


printf "Installing Vundle\n"
#install vundle

printf "Installing psutil for Python Glances"
sudo pip install psutil 
printf "Installing Python Glances"
sudo pip install glances

echo git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim


printf "Installing Nerdtree\n"
#install nerdtree
echo git clone https://github.com/scrooloose/nerdtree.git $HOME/.vim/bundle/nerdtree

printf "Installing CtrlP\n"
#install ctrl p
echo git clone https://github.com/kien/ctrlp.vim.git $HOME/.vim/bundle/ctrlp.vim

printf "Running Vundle\n"
#run vundle install for ultisnips, supertab
echo "cat .vimrc >> $HOME/.vimrc"
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

echo pip install --user powerline-status

printf "Adding Powerline to .vimrc \n"

powerline_dir="$(pip show powerline-status | grep Location | awk '{print $2}')"
echo "set rtp+=$powerline_dir/powerline/bindings/vim" >> .vimrc


################################################################################
## Zsh
################################################################################

printf "Installing oh-my-zsh...\n"
#oh-my-zsh
echo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
echo cp agnosterzak.zsh-theme $HOME/.oh-my-zsh/themes/
echo "cat .zshrc >> $HOME/.zshrc"

#add aliases and functions
echo cat ShellAliasesFunctions >> $HOME/.zshrc


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


echo "cat tmux/.tmux.conf >> $HOME/.tmux.conf"


printf "Installing Custom Tmux Commands\n"
if [[ ! -d $HOME/.tmux ]]; then
    mkdir -p $HOME/.tmux
fi
echo "cat tmux/four-panes >> $HOME/.tmux/four-panes"
echo "cat tmux/control-window >> $HOME/.tmux/control-window"


printf "Changing default shell to Zsh\n"
echo ch -s "$(which zsh)"

printf "\e[0m"
