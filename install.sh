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

installPathogenVimPlugin(){
    git clone "https://github/$1.git" $HOME/.vim/bundle
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

dependencies_ary=(vim tmux git wget lolcat cmatrix htop cmake glances bpython python-dev colortail screenfetch libpcap-dev ncurses-dev iftop htop figlet silversearcher-ag zsh)


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
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
    curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


printf "Installing Vundle\n"
#install vundle

vimPlugins=(VundleVim/Vundle.vim.git https://github.com/mileszs/ack.vim.git https://github.com/bkad/CamelCaseMotion.git https://github.com/sjl/clam.vim.git https://github.com/kien/ctrlp.vim.git https://github.com/Raimondi/delimitMate https://github.com/othree/html5.vim.git https://github.com/Shougo/neobundle.vim.git https://github.com/scrooloose/nerdcommenter.git https://github.com/scrooloose/nerdtree https://github.com/luochen1990/rainbow https://github.com/ervandew/supertab https://github.com/vim-syntastic/syntastic https://github.com/tomtom/tlib_vim https://github.com/vim-scripts/ttags https://github.com/SirVer/ultisnips https://github.com/mbbill/undotree https://github.com/tsukkee/unite-tag https://github.com/haya14busa/vim-asterisk https://github.com/vim-scripts/vim-auto-save https://github.com/panozzaj/vim-autocorrect https://github.com/craigemery/vim-autotag https://github.com/MattesGroeger/vim-bookmarks https://github.com/ryanoasis/vim-devicons https://github.com/tpope/vim-dispatch )

vim-dispatch
vim-easymotion
vim-indent-guides
vim-lotr
vim-markology
vim-minimap
vim-misc
vim-multiple-cursors
vim-nerdtree-syntax-highlight
vim-obsession
vim-plugin-random-colorscheme-picker
vim-repeat
vim-session
vim-sexp
vim-sexp-mappings-for-regular-people
vim-slime
vim-snippets
vim-startify
vim-surround
vimux
wildfire.vim

printf "Installing psutil for Python Glances"
sudo pip install psutil 
printf "Installing Python Glances"
sudo pip install glances

printf "Installing all the vim plugins"
cp -R ./.vim $HOME/.vim

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
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
echo cp agnosterzak.zsh-theme $HOME/.oh-my-zsh/themes/

#add aliases and functions
printf "Adding common shell aliases"
cp ".shell_aliases_functions.sh" "$HOME"
echo "source $HOME/.shell_aliases_functions.sh" >> "$HOME/.zshrc"


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



printf "Changing default shell to Zsh\n"
echo ch -s "$(which zsh)"

printf "\e[0m"
