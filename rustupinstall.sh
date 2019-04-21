#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Apr 19 20:33:51 EDT 2019
##### Purpose: bash script to install bat,fd and exa
##### Notes:
#}}}***********************************************************
source common.sh || { echo "Must be in zpwr directory" >&2; exit 1; }
INSTALLER_DIR="$(pwd -P)"

distroName="$1"

while true; do
    if exists curl;then
        break
    fi
    sleep 5
done

exists bat || {
    prettyPrint "Installing Rustup if cargo does not exist"
    exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrint "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrint "Installing Bat (cat replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install bat
    prettyPrint "Installing Fd (find replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install fd-find
}

exists fd-find || {
    prettyPrint "Installing rustup if cargo does not exist"
    exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrint "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrint "Installing Fd (find replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install fd-find
}

exists exa || {
    prettyPrint "Installing rustup if cargo does not exist"
    exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrint "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrint "Installing Exa with Cargo"
    "$HOME/.cargo/bin/cargo" install exa
}

prettyPrint "Installing Pathogen"
#install pathogen
mkdir -p "$HOME/.vim/autoload" "$HOME/.vim/bundle" && curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

prettyPrint "Installing Vim Plugins"
cd "$INSTALLER_DIR"
source  "$INSTALLER_DIR/vim_plugins_install.sh"
cd "$INSTALLER_DIR"
source "$INSTALLER_DIR/pip_install.sh"

prettyPrint "Installing Ultisnips snippets"
cd "$INSTALLER_DIR"
cp -R "$INSTALLER_DIR/UltiSnips" "$HOME/.vim"

case "$distroName" in
    (*suse*|ubuntu|debian|linuxmint|raspbian|Mac)
        needSudo=yes
        ;;
    (fedora)
        needSudo=no
        ;;
    (*)
        needSudo=no
        ;;
esac

if [[ "$needSudo" == yes ]]; then
    prettyPrint "Installing Ruby gem lolcat"
    sudo gem install lolcat
    prettyPrint "Installing Ruby gem rouge"
    sudo gem install rouge
else
    prettyPrint "Installing Ruby gem lolcat"
     gem install lolcat
    prettyPrint "Installing Ruby gem rouge"
     gem install rouge
fi

prettyPrint "Running Vundle"
#run vundle install for ultisnips, supertab
vim -c PluginInstall -c qall

prettyPrint "Installing .vimrc"
cp "$INSTALLER_DIR/.vimrc" "$HOME"

prettyPrint "Installing .ideavimrc"
cp "$INSTALLER_DIR/.ideavimrc" "$HOME"

