source common.sh || { echo "Must be in .zpwr/install directory" >&2; exit 1; }

INSTALLER_DIR="$(pwd -P)"
ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"
ZPWR_INSTALLER_OUTPUT="$INSTALLER_DIR/../local/installer"
export ZPWR_HIDDEN_DIR="$HOME/.zpwr/local"

if [[ ! -d $ZPWR_HIDDEN_DIR ]]; then
    mkdir -p $ZPWR_HIDDEN_DIR
fi

if [[ -n $ZPWR ]]; then
    export ZPWR="$HOME/.zpwr"
fi


if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then
    distroName=Mac
elif [[ "$ZPWR_OS_TYPE" == "linux" ]]; then
    distroName=$(perl -lne 'do{($_=$1)=~s@"@@g;print;exit0}if m{^ID=(.*)}' /etc/os-release)
else
    if [[ "$ZPWR_OS_TYPE" == freebsd ]]; then
        distroName=FreeBSD
    fi
fi

prettyPrint "Installing Pathogen"
#install pathogen
mkdir -p "$HOME/.vim/autoload" "$HOME/.vim/bundle" && curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

prettyPrint "Installing Vim Plugins"
if ! builtin cd "$INSTALLER_DIR"; then
    echo "where is $INSTALLER_DIR" >&2
    exit 1
fi

source  "$INSTALLER_DIR/vim_plugins_install.sh"

prettyPrint "Installing Ultisnips snippets"
if ! builtin cd "$INSTALLER_DIR"; then
    echo "where is $INSTALLER_DIR" >&2
    exit 1
fi
cp -R "$INSTALLER_DIR/UltiSnips" "$HOME/.vim"


prettyPrint "Installing .powerlevel9k"
cp "$INSTALLER_DIR/.powerlevel9kconfig.sh" "$ZPWR"


prettyPrint "Installing .vimrc"
cp "$INSTALLER_DIR/.vimrc" "$HOME"

prettyPrint "Installing minimal .minvimrc"
cp "$INSTALLER_DIR/.minvimrc" "$ZPWR"

prettyPrint "Installing .ideavimrc"
cp "$INSTALLER_DIR/.ideavimrc" "$HOME"

nvimDir="$HOME/.config/nvim"
[[ ! -d "$nvimDir" ]] && mkdir -p "$nvimDir"

prettyPrint "Installing neovim config"
cp "$INSTALLER_DIR"/init.vim "$nvimDir"

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

prettyPrint "Copying iftop.conf to home directory"
cp "$INSTALLER_DIR/.iftop.conf" "$HOME"

if [[ ! -f "$HOME/.ctags" ]]; then
    prettyPrint "Copying .ctags to home directory"
    cp "$INSTALLER_DIR/.ctags" "$HOME"
fi

prettyPrint "Installing Iftop colors to $HOME"
cp "$INSTALLER_DIR/.iftopcolors" "$HOME"

if [[ "$distroName" == raspbian ]]; then
    prettyPrint "Installing custom motd for RPI..."
    cp "$INSTALLER_DIR/motd.sh" "$ZPWR"
fi

prettyPrint "Installing Custom Tmux Commands"
cp -R "$INSTALLER_DIR/.tmux" "$ZPWR"

if ! builtin cd "$INSTALLER_DIR"; then
    echo "where is $INSTALLER_DIR" >&2
    exit 1
fi

prettyPrint "Installing Tmux plugins"
source "$INSTALLER_DIR/tmux_plugins_install.sh"

[[ ! -f "$ZPWR_HIDDEN_DIR/.tokens.sh" ]] && touch "$ZPWR_HIDDEN_DIR/.tokens.sh"

prettyPrint "HushLogin to $HOME"
[[ ! -f "$HOME/.hushlogin" ]] && touch "$HOME/.hushlogin"

prettyPrint "Installing my.cnf to $HOME"
[[ ! -f "$HOME/.my.cnf" ]] && touch "$HOME/.my.cnf"

prettyPrint "Changing pager to cat for MySQL Clients such as MyCLI"
echo "[client]" >> "$HOME/.my.cnf"
echo "pager=cat" >> "$HOME/.my.cnf"

prettyPrint "Copying all Shell Scripts to $HOME/Documents"
[[ ! -d "$ZPWR/scripts" ]] && mkdir -p "$ZPWR/scripts"

cp "$INSTALLER_DIR/scripts/"*.{sh,pl,py,zsh} "$ZPWR/scripts"
cp -R "$INSTALLER_DIR/scripts/macOnly" "$ZPWR/scripts"

prettyPrint "Copying grc config files"
cp "$INSTALLER_DIR/grc.zsh" "$HOME"
cp "$INSTALLER_DIR/conf.gls" "$HOME"
cp "$INSTALLER_DIR/conf.df" "$HOME"
cp "$INSTALLER_DIR/conf.ifconfig" "$HOME"
cp "$INSTALLER_DIR/conf.mount" "$HOME"
cp "$INSTALLER_DIR/conf.whois" "$HOME"


prettyPrint "Installing inputrc for REPLs using GNU readline library and rlwrap."
cp "$INSTALLER_DIR/.inputrc" "$HOME"


prettyPrint "Installing htoprc file...."
htopDIR="$HOME/.config/htop"
if [[ ! -f "$htopDIR/htoprc" ]]; then
    if [[ ! -d "$htopDIR" ]]; then
        mkdir -p "$htopDIR"
    fi
    cp "$INSTALLER_DIR/htoprc" "$htopDIR"
fi

#add aliases and functions
prettyPrint "Adding common shell aliases for Bash and Zsh"
cp "$INSTALLER_DIR/.shell_aliases_functions.sh" "$ZPWR"

