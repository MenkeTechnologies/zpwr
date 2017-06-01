#!/usr/bin/env bash
#Created by jacobmenke at Wed May 31 22:54:32 EDT 2017
set -x

os=`uname -s`

printf "\e[1m"

################################################################################
## Dependencies
################################################################################



if [[ "$os" = "Darwin" ]]; then
################################################################################
## Mac
################################################################################

	printf "Checking Dependencies for Mac..."

	if [[ -z "$(which brew)" ]]; then
		#install homebrew
		echo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi


	echo brew ls python > /dev/null 2>&1
	if [[ $? == 1 ]]; then
		echo brew install python
		echo brew install pip
	fi


	if [[ -z "$(which vim)" ]]; then
		echo brew install vim
	fi

	if [[ -z "$(which tmux)" ]]; then
		echo brew install tmux
	fi

	if [[ -z "$(which git)" ]]; then
		echo brew install git
	fi

	if [[ -z "$(which wget)" ]]; then
		echo brew install wget
	fi

	if [[ -z "$(which lolcat)" ]]; then
		echo brew install lolcat
	fi

	if [[ -z "$(which cmatrix)" ]]; then
		echo brew install cmatrix
	fi

	if [[ -z "$(which htop)" ]]; then
		echo brew install htop
	fi

	if [[ -z "$(which cmake)" ]]; then
		echo brew install cmake
	fi



################################################################################
## YouCompleteMe
################################################################################

	echo cd ~/.vim/bundle/YouCompleteMe
	echo ./install.py --clang-completer










else

################################################################################
## Linux
################################################################################



	printf "Checking Dependencies for Linux..."

	echo sudo apt-get install build-essential cmake

	echo sudo apt-get install python-dev python3-dev


################################################################################
## YouCompleteMe
################################################################################

	echo cd ~/.vim/bundle/YouCompleteMe
	echo ./install.py --clang-completer


fi



printf "Installing Powerline..."


################################################################################
## Zsh
################################################################################
echo pip install --user powerline-status

printf "Installing oh-my-zsh..."
#oh-my-zsh
echo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
echo cp agnosterzak.zsh-theme $HOME/.oh-my-zsh/themes/
echo cat zshrc >> $HOME/.zshrc

#add aliases and functions
echo cat ShellAliasesFunctions >> $HOME/.zshrc

################################################################################
## Vim
################################################################################
#install vundle
if [[ ! -d $HOME/.vim/bundle ]]; then
	echo mkdir -p $HOME/.vim/bundle
fi
echo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#youcompleteme, ultisnips, supertab
echo cat vimrc >> $HOME/.vimrc
echo vim +PluginInstall +qall

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

#install ctrl p
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim



################################################################################
## Tmux
################################################################################
printf "Installing Tmux Config"


tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux
echo pip install powerline-mem-segment

if [[ ! -d $tmuxPowerlineDir ]]; then
	echo mkdir -p $tmuxPowerlineDir && cat default.json >> $tmuxPowerlineDir/default.json
fi



if [[ ! -d ~/.tmux/plugins/tpm  ]]; then
	echo mkdir -p ~/.tmux/plugins/tpm
	echo git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
echo "cat tmux/tmux.conf >> $HOME/.tmux.conf"
echo "cat tmux/four-panes >> $HOME/.tmux/four-panes"
echo "cat tmux/control-window >> $HOME/.tmux/control-window"



echo ch -s "$(which zsh)"


printf "\e[0m"
