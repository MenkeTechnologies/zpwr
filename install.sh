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


# highly recommended to run 'sudo visudo' to allow noninteractive install
# <user> ALL=(ALL) NOPASSWD:ALL

OS_TYPE="$(uname -s)"
#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"

source common.sh || { echo "Must be in customTerminalInstaller directory" >&2 && exit 1; }

logfile="$INSTALLER_DIR/escaped_logfile.txt"

clear
# replicate stdout and sterr to logfile
exec > >(tee -a "$logfile")
exec 2>&1

cat<<\EOF
888b     d888                888         88888888888             888
8888b   d8888                888             888                 888
88888b.d88888                888             888                 888
888Y88888P888 .d88b. 88888b. 888  888 .d88b. 888  .d88b.  .d8888b88888b
888 Y888P 888d8P  Y8b888 "88b888 .88Pd8P  Y8b888 d8P  Y8bd88P"   888 "88b
888  Y8P  88888888888888  888888888K 88888888888 88888888888     888  888
888   "   888Y8b.    888  888888 "88bY8b.    888 Y8b.    Y88b.   888  888
888       888 "Y8888 888  888888  888 "Y8888 888  "Y8888  "Y8888P888  888



                888                d8b
                888                Y8P
                888
88888b.  .d88b. 888 .d88b.  .d88b. 888 .d88b. .d8888b
888 "88bd88""88b888d88""88bd88P"88b888d8P  Y8b88K
888  888888  888888888  888888  88888888888888"Y8888b.
888  888Y88..88P888Y88..88PY88b 888888Y8b.         X88
888  888 "Y88P" 888 "Y88P"  "Y88888888 "Y8888  88888P'
                                888
                           Y8b d88P
                            "Y88P"
EOF

sleep 1

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

dependencies_ary=(cargo boxes tal iperf vim tmux chkrootkit wget cowsay cmatrix htop cmake bpython sl mutt \
    screenfetch ccze htop figlet zsh docker erlang elixir links \
    rlwrap tor nvm nginx nmap mtr mytop tcpdump redis toilet mysql \
    mongodb postgresql jnettop iotop fping atop ctags texinfo lsof \
    whois weechat gradle ant maven telnet tree mc ocaml groovy slurm \
    bmon ruby parallel pssh) 

#}}}***********************************************************

#{{{                    MARK:Functions
#**************************************************************

addDependenciesLinux(){
    dependencies_ary+=(mlocate php-bcmath php-mysql php-sockets php-mbstring php-gettext nmon clamav gparted sysstat git reptyr iptraf dstat ecryptfs-utils at netatalk dnsutils ltrace zabbix-agent \
    lua5.1 lua5.1-dev rl-dev software-properties-common sysv-rc-conf build-essential afpfs-ng \
    samba samba-common scrot syslog-ng sshfs fuse tomcat8 golang xclip strace python-pip)
}
addDependenciesArch(){
    dependencies_ary+=(linux-headers net-tools) 
}

addDependenciesSuse(){
    dependencies_ary+=(openldap2-devel mariadb postgresql-server libcurl-devel net-snmp-devel mysql-devel libevent-devel postgresql-devel fortune python3-devel python-devel ruby-devel openssl-devel \
        python3-pip curl libffi-devel grc libpcap-devel the_silver_searcher kernel-devel gcc libxml2-devel libxslt-devel) 

}

addDependenciesDebian(){
    dependencies_ary+=(npm lib-gnome2-dev silversearcher-ag libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev nodejs gcc \
    ncurses-dev libevent-dev libncurses5-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev \
    libperl-dev libpq-dev libpcap-dev fortune python3-dev python-dev ruby-dev \
    python3-pip curl libffi-dev libssl-dev grc automake whatweb)

}

addDependenciesRedHat(){
    if [[ "$distroName" == centos ]]; then
        sudo yum install -y epel-release
    fi
    dependencies_ary+=('fortune-mod.*' clamav-update openldap-devel libcurl-devel net-snmp-devel mysql-devel libevent-devel libffi-devel mysql-server python36-tools ncurses-devel libpcap-devel openssl-devel python-devel python3-devel curses-devel automake the_silver_searcher gcc-c++ kernel-devel postgresql-devel)
}

addDependenciesFreeBSD(){
    dependencies_ary+=(vim python3 gnome3 devel/ruby-gems)
}

addDependenciesMac(){
    dependencies_ary+=("git --without-completions" exa fortune node the-silver-searcher fswatch zzz ghc lua python3 python macvim readline reattach-to-user-namespace speedtest-cli aalib ncmpcpp mpd ctop hub ncurses tomcat ninvaders kotlin grails go)
}

update(){
    exists "$1" || {

        if [[ $2 == mac ]]; then
            brew install "$1"
        elif [[ $2 == debian ]];then
            sudo apt-get install -y "$1"
        elif [[ $2 == suse ]];then
            sudo zypper --non-interactive install "$1"
        elif [[ $2 == arch ]];then
            sudo pacman -S --noconfirm "$1"
        elif [[ $2 == redhat ]];then
            sudo yum install -y "$1"
        elif [[ $2 == freebsd ]];then
            sudo pkg install -y "$1"
        else
            prettyPrint "Error at install with $2." >&2
        fi
    }
}

upgrade(){
        if [[ $1 == mac ]]; then
            brew update
            brew upgrade
        elif [[ $1 == debian ]];then
            sudo apt-get update -y
            sudo apt-get upgrade -y
        elif [[ $1 == suse ]];then
            sudo zypper --non-interactive update
        elif [[ $1 == arch ]];then
            sudo pacman -Suy
        elif [[ $1 == redhat ]];then
            sudo yum upgrade -y
        elif [[ $1 == freebsd ]];then
            sudo pkg upgrade
        else
            prettyPrint "Error with upgrade with $2." >&2
        fi
}

refresh(){
        if [[ $1 == mac ]]; then
            brew update
        elif [[ $1 == debian ]];then
            sudo apt-get update -y
        elif [[ $1 == suse ]];then
            sudo zypper refresh
        elif [[ $1 == arch ]];then
            sudo pacman -Syy
        elif [[ $1 == freebsd ]];then
            sudo pkg update
        elif [[ $1 == redhat ]];then
            sudo yum update -y
        else
            prettyPrint "Error with refresh with $2." >&2
        fi

}


__ScriptVersion="1.0.0"

#===  FUNCTION  ================================================================
#         NAME:  usage
#  DESCRIPTION:  Display usage information.
#===============================================================================
usage(){
    echo "Usage :  $0 [options] [--]

    Options:
    -h|help       Display this message
    -s|skip       Skip main section
    -v|version    Display script version"

}    # ----------  end of function usage  ----------

#-----------------------------------------------------------------------
#  Handle command line arguments
#-----------------------------------------------------------------------

while getopts ":hv" opt
do
  case $opt in

    h|help     )  usage; exit 0   ;;

    v|version  )  echo "$0 -- Version $__ScriptVersion"; exit 0   ;;

    s|skip     )  skip=true ;;

    * )  echo -e "\n  Option does not exist : $OPTARG\n"
          usage; exit 1   ;;

  esac    # --- end of case ---
done
shift $(($OPTIND-1))


#}}}***********************************************************

#{{{                    MARK:Mac
#**************************************************************
if [[ "$OS_TYPE" == "Darwin" ]]; then
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

    if [[ $skip != true ]]; then
        prettyPrint "Now The Main Course..."
        sleep 1
        
        prettyPrint "Updating repos"
        refresh mac

        addDependenciesMac

        for prog in "${dependencies_ary[@]}"; do
            update "$prog" mac
        done

        prettyPrint "Upgrading packages"
        upgrade mac
    fi

    prettyPrint "Installing Powerline fonts"
    brew cask install font-hack-nerd-font

    prettyPrint "Installing meteor"
    curl https://install.meteor.com/ | sh


    # system sed breaks extended regex
    ln -s /usr/local/bin/gsed /usr/local/bin/sed

    #}}}***********************************************************

#{{{                    MARK:Linux
#**************************************************************
elif [[ "$OS_TYPE" == "Linux" ]]; then

    addDependenciesLinux
    distroName=$(grep "^ID=" /etc/os-release | cut -d= -f2 | tr -d \" | head -n 1)


    prettyPrint "Updating repos for $distroName"
    case $distroName in
        (debian|ubuntu|raspbian|kali|linuxmint) prettyPrint "Installing Dependencies for $distroName with the Advanced Package Manager..."
            distroFamily=debian
            refresh "$distroFamily"
            addDependenciesDebian
            ;;
        (arch) prettyPrint "Installing Dependencies for $distroName with zypper"
            distroFamily=arch
            refresh "$distroFamily"
            addDependenciesArch
            ;;
        (*suse*) prettyPrint "Installing Dependencies for $distroName with zypper"
            distroFamily=suse
            refresh "$distroFamily"
            addDependenciesSuse
            ;;
        (centos|fedora|rhel) prettyPrint "Installing Dependencies for $distroName with the Yellowdog Updater Modified"
            distroFamily=redhat
            refresh "$distroFamily"
            addDependenciesRedHat
            ;;
        (*)
            prettyPrint "Your distroFamily $distroName is unsupported!" >&2
            exit 1
            ;;
    esac

    if [[ $skip != true ]]; then
        prettyPrint "Now The Main Course..."
        sleep 1

        for prog in "${dependencies_ary[@]}"; do
            prettyPrint "Installing $prog"
            update "$prog" "$distroFamily"
        done

        prettyPrint "Upgrading $distroFamily"

        upgrade "$distroFamily"
    fi

    prettyPrint "Installing Powerline fonts"
    if [[ -d /usr/share/fonts ]] && [[ -d /etc/fonts/conf.d ]]; then
        wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
        wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
        # move font to valid font path
        sudo mv PowerlineSymbols.otf /usr/share/fonts/
        # Update font cache for the path the font
        sudo fc-cache -vf /usr/share/fonts/
        # Install the fontconfig file
        sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
    else
        prettyPrint "/usr/share/fonts and /etc/fonts/conf.d must exist for powerline fonts." >&2
    fi

    exists exa || {
        exists cargo || curl https://sh.rustup.rs -sSf | sh
        prettyPrint "Installing Exa with Cargo"
        cargo install exa
    }

else
    #unix
    if [[ "$OS_TYPE" == FreeBSD ]]; then
        distroFamily=freebsd
        refresh "$distroFamily"

        addDependenciesFreeBSD

        if [[ $skip != true ]]; then
            prettyPrint "Now The Main Course..."
            sleep 1

            for prog in "${dependencies_ary[@]}"; do
                prettyPrint "Installing $prog"
                update "$prog" "$distroFamily"
            done

            prettyPrint "Upgrading $distroFamily"

            upgrade "$distroFamily"
        fi

        prettyPrint "Installing Powerline fonts"
        if [[ -d /usr/share/fonts ]] && [[ -d /etc/fonts/conf.d ]]; then
            wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
            wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
            # move font to valid font path
            sudo mv PowerlineSymbols.otf /usr/share/fonts/
            # Update font cache for the path the font
            sudo fc-cache -vf /usr/share/fonts/
            # Install the fontconfig file
            sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
        else
            prettyPrint "/usr/share/fonts and /etc/fonts/conf.d must exist for powerline fonts." >&2
        fi
    else
        prettyPrint "Your OS $OS_TYPE is unsupported!" >&2 && exit 1
    fi

fi

#}}}***********************************************************

#{{{                    MARK:vim
#**************************************************************

prettyPrint "Common Installer Section"

vimV="$(vim --version | head -1 | awk '{print $5}')"
res=$(echo "$vimV >= 8.0" | bc)

[[ $res == 0 ]] && {
    prettyPrint "Vim Version less than 8.0! Installing Vim from Source."
    git clone https://github.com/vim/vim.git vim-master
    cd "vim-master" && {
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
    }
}


prettyPrint "Installing Pathogen"
#install pathogen
mkdir -p "$HOME/.vim/autoload" "$HOME/.vim/bundle" && curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

prettyPrint "Installing Vim Plugins"
cd "$INSTALLER_DIR"
source  "$INSTALLER_DIR/vim_plugins_install.sh"
cd "$INSTALLER_DIR"
source "$INSTALLER_DIR/pip_install.sh"


case "$distroName" in
    (*suse*|ubuntu|debian|linuxmint|raspbian)
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
#}}}***********************************************************

#{{{                    MARK:Vim Plugs
#**************************************************************
################################################################################
## YouCompleteMe
################################################################################

prettyPrint "Installing YouCompleteMe"
cd $HOME/.vim/bundle/YouCompleteMe && {
    git submodule update --init --recursive
    #need greater than 3GB RAM for compiling
    YCM_CORES=1 ./install.py --clang-completer
}

#}}}***********************************************************


#{{{                    MARK:Tmux
#**************************************************************

#custom settings for tmux powerline
tmuxPowerlineDir="$HOME/.config/powerline/themes/tmux"
[[ ! -d "$tmuxPowerlineDir" ]] && mkdir -p "$tmuxPowerlineDir"

prettyPrint "Installing Tmux Powerline Config"
cat "$INSTALLER_DIR"/default.json > "$tmuxPowerlineDir/default.json"

prettyPrint "Installing Tmux Plugin Manager"
[[ ! -d "$HOME/.tmux/plugins/tpm"  ]] && mkdir -p $HOME/.tmux/plugins/tpm

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

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

#}}}***********************************************************

#{{{                    MARK:Utilities
#**************************************************************
prettyPrint "Installing IFTOP-color by MenkeTechnologies"

cd "$INSTALLER_DIR"
automake --version 2>&1 | grep -q '16' || {
    wget https://ftp.gnu.org/gnu/automake/automake-1.16.tar.gz
    tar xvfz automake-1.16.tar.gz
    cd automake-1.16 && ./configure && make && sudo make install
}

[[ ! -d "$HOME/forkedRepos" ]] && mkdir "$HOME/forkedRepos"
cd "$HOME/forkedRepos" && {
    git clone https://github.com/MenkeTechnologies/iftopcolor
    cd iftopcolor && {
        aclocal
        automake --add-missing
        ./configure && make && sudo make install
    }
}

[[ ! -f "$HOME/.token.sh" ]] && touch "$HOME/.tokens.sh"

prettyPrint "HushLogin to $HOME"
[[ ! -f "$HOME/.hushlogin" ]] && touch "$HOME/.hushlogin"

prettyPrint "Installing my.cnf to $HOME"
[[ ! -f "$HOME/.my.cnf" ]] && touch "$HOME/.my.cnf"

prettyPrint "Changing pager to cat for MySQL Clients such as MyCLI"
echo "[client]" >> "$HOME/.my.cnf"
echo "pager=cat" >> "$HOME/.my.cnf"

prettyPrint "Copying all Shell Scripts to $HOME/Documents"
[[ ! -d "$HOME/Documents/shellScripts" ]] && mkdir -p "$HOME/Documents/shellScripts"

cp "$INSTALLER_DIR/scripts/"*.sh "$INSTALLER_DIR/scripts/"*.pl "$HOME/Documents/shellScripts"
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
    rm -rf pipes.sh
}

prettyPrint "Installing htoprc file...."
htopDIR="$HOME/.config/htop"
if [[ ! -f "$htopDIR/htoprc" ]]; then
    if [[ ! -d "$htopDIR" ]]; then
        mkdir -p "$htopDIR"
    fi
    mv "$INSTALLER_DIR/htoprc" "$htopDIR"
fi

exists grc || {
    git clone https://github.com/garabik/grc.git
    cd grc
    sudo bash install.sh
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
cp "$INSTALLER_DIR/conf.ifconfig" "$HOME"
cp "$INSTALLER_DIR/conf.mount" "$HOME"


prettyPrint "Installing inputrc for REPLs using GNU readline library and rlwrap."
cp "$INSTALLER_DIR/.inputrc" "$HOME"

prettyPrint "Installing mylg"
go get github.com/mehrdadrad/mylg
cd "$HOME/go/src/github.com/mehrdadrad/mylg/"
go build mylg.go

exists iftop || {
    prettyPrint "No iftop so installing"
    update iftop "$distroFamily"
}
if [[ "$OS_TYPE" != Darwin ]]; then
    prettyPrint "Installing snort"
    update snort "$distroFamily"
    prettyPrint "Installing logwatch"
    update logwatch "$distroFamily"
    prettyPrint "Installing postfix"
    update postfix "$distroFamily"
fi

prettyPrint "Installing wireshark"
update wireshark "$distroFamily"
prettyPrint "Installing mailutils"
update mailutils "$distroFamily"

#}}}***********************************************************

#{{{                    MARK:zsh
#**************************************************************
prettyPrint "Installing oh-my-zsh..."
#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
cp "$INSTALLER_DIR/agnosterzak.zsh-theme" "$HOME/.oh-my-zsh/themes/"

#add aliases and functions
prettyPrint "Adding common shell aliases for Bash and Zsh"
cp "$INSTALLER_DIR/.shell_aliases_functions.sh" "$HOME"

prettyPrint "Installing .zshrc"
cp "$INSTALLER_DIR/.zshrc" "$HOME"

prettyPrint "Installing Zsh plugins"
cd "$INSTALLER_DIR"
source "$INSTALLER_DIR/zsh_plugins_install.sh"

prettyPrint "Installing Powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
cp "$INSTALLER_DIR/.powerlevel9kconfig.sh" "$HOME"

prettyPrint "Installing fzf"
"$HOME/.oh-my-zsh/custom/plugins/fzf/install" --bin

#}}}***********************************************************

#{{{                    MARK:Final
#**************************************************************
cd "$INSTALLER_DIR"
cd ..

escapeRemover="$INSTALLER_DIR/scripts/escapeRemover.pl"

test -f "$escapeRemover" && \
    "$escapeRemover" "$logfile" > "$INSTALLER_DIR/log.txt"

#rm -rf "$INSTALLER_DIR"
prettyPrint "Done!!!!!!"

prettyPrint "Starting Tmux..."
prettyPrint "Starting the matrix"
export SHELL="$(which zsh)"
export SCRIPTS="$HOME/Documents/shellScripts"

zsh -c 'tmux new-session -d -s main'
tmux send-keys -t "main" 'tmux source-file "$HOME/.tmux/control-window"; tmux select-pane -t right; tmux send-keys "matr" C-m' C-m
tmux attach -t main

#}}}***********************************************************
