
#!/usr/bin/env bash
set -x

os=`uname -s`

printf "\e[1m"


if [[ "$os" = "Darwin" ]]; then
	#must be mac

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










else

	printf "Checking Dependencies for Linux..."

	:
	#must be linux

fi

printf "Installing Powerline..."

echo pip install --user powerline-status

printf "Installing oh-my-zsh..."
#oh-my-zsh
echo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
echo cp agnosterzak.zsh-theme $HOME/.oh-my-zsh/themes/
echo cat zshrc >> $HOME/.zshrc

#install vundle
if [[ ! -d $HOME/.vim/bundle ]]; then
	echo mkdir -p $HOME/.vim/bundle
fi
echo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	
echo cat vimrc >> $HOME/.vimrc
echo vim +PluginInstall +qall





tmuxPowerlineDir=$HOME/.config/powerline/themes/tmux
echo pip install powerline-mem-segment

if [[ ! -d $tmuxPowerlineDir ]]; then
	echo mkdir -p $tmuxPowerlineDir && cat default.json >> $tmuxPowerlineDir/default.json
fi


#add aliases and functions
echo cat ShellAliasesFunctions >> $HOME/.zshrc

echo ch -s "$(which zsh)"


printf "\e[0m"
