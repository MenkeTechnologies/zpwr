source common.sh || { echo "Must be in zpwr directory" >&2; exit 1; }
INSTALLER_DIR="$(pwd -P)"
OS_TYPE="$(uname -s)"

if [[ "$OS_TYPE" == "Darwin" ]]; then
    distroName=Mac
elif [[ "$OS_TYPE" == "Linux" ]]; then
    distroName=$(grep "^ID=" /etc/os-release | cut -d= -f2 | tr -d \" | head -n 1)
else
    if [[ "$OS_TYPE" == FreeBSD ]]; then
        distroName=FreeBSD
    fi
fi

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

#custom settings for tmux powerline
tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
[[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"

prettyPrint "Installing Tmux Powerline Config"
cat "$INSTALLER_DIR"/default.json > "$tmuxPowerlineDir/default.json"

prettyPrint "Installing Tmux Plugin Manager"
[[ ! -d "$HOME/.tmux/plugins/tpm"  ]] && mkdir -p "$HOME/.tmux/plugins/tpm"

git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"

prettyPrint "Copying tmux configuration file to home directory"
cp "$INSTALLER_DIR/.tmux.conf" "$HOME"

prettyPrint "Installing Iftop config..."
ip=$(ifconfig | grep "inet\s" | grep -v 127 | awk '{print $2}' | sed 's@addr:@@')
iface=$(ifconfig | grep -B3 "inet .*$ip" | grep '^[a-zA-Z0-9].*' | awk '{print $1}' | tr -d ":")
prettyPrint "IPv4: $ip and interface: $iface"
echo "interface:$iface" >> "$INSTALLER_DIR/.iftop.conf"

cp "$INSTALLER_DIR/.iftop.conf" "$HOME"

prettyPrint "Installing Iftop colors to $HOME"
cp "$INSTALLER_DIR/.iftopcolors" "$HOME"

if [[ "$distroName" == raspbian ]]; then
    prettyPrint "Installing custom motd for RPI..."
    cp "$INSTALLER_DIR/motd.sh" "$HOME"
fi

prettyPrint "Installing Custom Tmux Commands"
cp -R "$INSTALLER_DIR/.tmux" "$HOME"

cd "$INSTALLER_DIR"
prettyPrint "Installing Tmux plugins"
. "$INSTALLER_DIR/tmux_plugins_install.sh"

