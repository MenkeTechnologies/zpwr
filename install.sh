#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed May 31 22:54:32 EDT 2017
#####   Purpose: bash script for custom terminal setup
#####   Notes: goal - work on mac and linux
#####   Notes: this script should a one liner installer
#}}}***********************************************************

#{{{                    MARK:Setup
#**************************************************************

OS_TYPE="$(uname -s)"
#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"

install_counter=0

export COLUMNS="$(tput cols)"
source common.sh || { echo "Must be in zpwr directory" >&2; exit 1; }

logfile="$INSTALLER_DIR/escaped_logfile.txt"
logfileCargoYCM="$INSTALLER_DIR/cargoYCM_logfile.txt"

clear
# replicate stdout and sterr to logfile
exec > >(tee -a "$logfile")
exec 2>&1

cat<<\EOF
    ...     ..      ..                                    ..                 
  x*8888x.:*8888: -"888:                            < .z@8"`                 
 X   48888X `8888H  8888                 u.    u.    !@88E                   
X8x.  8888X  8888X  !888>       .u     x@88k u@88c.  '888E   u         .u    
X8888 X8888  88888   "*8%-   ud8888.  ^"8888""8888"   888E u@8NL    ud8888.  
'*888!X8888> X8888  xH8>   :888'8888.   8888  888R    888E`"88*"  :888'8888. 
  `?8 `8888  X888X X888>   d888 '88%"   8888  888R    888E .dN.   d888 '88%" 
  -^  '888"  X888  8888>   8888.+"      8888  888R    888E~8888   8888.+"    
   dx '88~x. !88~  8888>   8888L        8888  888R    888E '888&  8888L      
 .8888Xf.888x:!    X888X.: '8888c. .+  "*88*" 8888"   888E  9888. '8888c. .+ 
:""888":~"888"     `888*"   "88888%      ""   'Y"   '"888*" 4888"  "88888%   
    "~'    "~        ""       "YP'                     ""    ""      "YP'    
                                                                             
                                                                             
                                                                             
    .....                                                                     
 .H8888888h.  ~-.                         .uef^"                              
 888888888888x  `>                      :d88E          u.    u.          u.   
X~     `?888888hx~      .u          .   `888E        x@88k u@88c.  ...ue888b  
'      x8.^"*88*"    ud8888.   .udR88N   888E .z8k  ^"8888""8888"  888R Y888r 
 `-:- X8888x       :888'8888. <888'888k  888E~?888L   8888  888R   888R I888> 
      488888>      d888 '88%" 9888 'Y"   888E  888E   8888  888R   888R I888> 
    .. `"88*       8888.+"    9888       888E  888E   8888  888R   888R I888> 
  x88888nX"      . 8888L      9888       888E  888E   8888  888R  u8888cJ888  
 !"*8888888n..  :  '8888c. .+ ?8888u../  888E  888E  "*88*" 8888"  "*888*P"   
'    "*88888888*    "88888%    "8888P'  m888N= 888>    ""   'Y"      'Y"      
        ^"***"`       "YP'       "P'     `Y"   888                            
                                              J88"                            
                                              @%                              
                                            :"                                
      ..                            .                  .x+=:.   
x .d88"                            @88>               z`    ^%  
 5888R          u.                 %8P                   .   <k 
 '888R    ...ue888b       uL        .         .u       .@8Ned8" 
  888R    888R Y888r  .ue888Nc..  .@88u    ud8888.   .@^%8888"  
  888R    888R I888> d88E`"888E` ''888E` :888'8888. x88:  `)8b. 
  888R    888R I888> 888E  888E    888E  d888 '88%" 8888N=*8888 
  888R    888R I888> 888E  888E    888E  8888.+"     %8"    R88 
  888R   u8888cJ888  888E  888E    888E  8888L        @8Wou 9%  
 .888B .  "*888*P"   888& .888E    888&  '8888c. .+ .888888P`   
 ^*888%     'Y"      *888" 888&    R888"  "88888%   `   ^"F     
   "%                 `"   "888E    ""      "YP'                
                     .dWi   `88E                                
                     4888~  J8%                                 
                      ^"===*"`                                  
EOF

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

dependencies_ary=(moreutils cmake tig hexedit boxes tal iperf vim tmux chkrootkit wget cowsay cmatrix htop bpython sl mutt \
    screenfetch ccze htop figlet zsh docker erlang elixir links \
    rlwrap tor nvm nginx nmap mtr mytop tcpdump redis toilet mysql \
    mongodb postgresql jnettop iotop fping ctags texinfo lsof \
    whois weechat gradle ant maven telnet tree mc ocaml groovy slurm \
    bmon ruby parallel pssh shfmt)

#}}}***********************************************************

#{{{                    MARK:Functions
#**************************************************************

addDependenciesLinux(){
    dependencies_ary=(neovim pkg-config libclang1 llvm ${dependencies_ary[@]})
    dependencies_ary+=(build-essential traceroute proxychains atop tcl mlocate php-bcmath php-mysql php-sockets \
        php-mbstring php-gettext nmon clamav gparted sysstat git reptyr iptraf dstat ecryptfs-utils at netatalk dnsutils ltrace zabbix-agent \
    lua5.1 lua5.1-dev rl-dev software-properties-common sysv-rc-conf afpfs-ng \
    samba samba-common scrot syslog-ng sshfs fuse tomcat8 golang xclip strace)
}
addDependenciesArch(){
    dependencies_ary+=(linux-headers net-tools)
}

addDependenciesSuse(){
    dependencies_ary=(python3-devel llvm llvm-devel ${dependencies_ary[@]})
    dependencies_ary+=(gcc-c++ makeinfo autoconf openldap2-devel mariadb postgresql-server libcurl-devel net-snmp-devel \
        mysql-devel libevent-devel postgresql-devel fortune ruby-devel openssl-devel net-tools-deprecated \
        python3-pip curl libffi-devel grc libpcap-devel the_silver_searcher kernel-devel gcc libxml2-devel libxslt-devel)
}

addDependenciesDebian(){
    dependencies_ary=(python3-dev ${dependencies_ary[@]})
    dependencies_ary+=(mysql-server gcc bc npm lib-gnome2-dev silversearcher-ag libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev nodejs \
    ncurses-dev libevent-dev libncurses5-dev libcairo2-dev libx11-dev \
    libxpm-dev libxt-dev \
    libperl-dev libpq-dev libpcap-dev fortunes ruby-dev \
    python3-pip libffi-dev libssl-dev grc automake whatweb)

}

addDependenciesRedHat(){
    if [[ "$distroName" == centos ]]; then
        sudo yum install -y epel-release
    fi
    dependencies_ary=(python3-devel clang llvm llvm-devel ${dependencies_ary[@]})
    dependencies_ary+=(gcc-c++ 'fortune-mod.*' mariadb-server clamav-update openldap-devel libcurl-devel net-snmp-devel mysql-devel libevent-devel libffi-devel mysql-server \
        python36-tools ncurses-devel libpcap-devel openssl-devel curses-devel automake the_silver_searcher kernel-devel postgresql-devel)
}

addDependenciesFreeBSD(){
    dependencies_ary+=(the_silver_searcher vim python3 gnome3 devel/ruby-gems)
}

addDependenciesMac(){
    dependencies_ary=(neovim macvim ${dependencies_ary[@]})
    dependencies_ary+=(ripgrep httpie proxychains-ng s-search git ag automake autoconf fortune node the_silver_searcher \
        fswatch zzz ghc lua python readline reattach-to-user-namespace speedtest-cli aalib ncmpcpp mpd ctop hub ncurses tomcat ninvaders kotlin grails go)
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
            prettyPrint "Error at install of $1 on $2." >&2
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
            sudo pkg upgrade -y
        else
            prettyPrint "Error with upgrade with $1." >&2
        fi
}

refresh(){
        if [[ $1 == mac ]]; then
            brew update
        elif [[ $1 == debian ]];then
            sudo apt-get update -y
            sudo apt-get autoremove -y
        elif [[ $1 == suse ]];then
            sudo zypper refresh
        elif [[ $1 == arch ]];then
            sudo pacman -Syy
        elif [[ $1 == freebsd ]];then
            sudo pkg update
        elif [[ $1 == redhat ]];then
            sudo yum update -y
        else
            prettyPrint "Error with refresh with $1." >&2
        fi

}


__ScriptVersion="1.0.1"

usage(){
    echo "Usage :  $0 [options] [--]

    Options:
    -h|help       Display this message
    -s|skip       Skip main section
    -v|version    Display script version"

}

while getopts ":hvs" opt
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

showDeps(){
    {
        printf "Installing ${#dependencies_ary[@]} packages on $distroName: "
        for dep in "${dependencies_ary[@]}" ; do
                printf "$dep "
        done
    } | prettyPrintStdin
    proceed
}

files=(.zshrc .tmux.conf .vimrc .ideavimrc .iftopcolors .iftop.conf .shell_aliases_functions.sh \
    conf.gls conf.df conf.ifconfig conf.mount grc.zsh .inputrc .powerlevel9kconfig.sh .my.cnf motd.sh)
dirs=(Documents/shellScripts .config/htop .config/powerline/themes/tmux)


backupdir="$HOME/.$USER.rc.bak.$(date +'%m.%d.%Y')"

backup(){
    test -d "$backupdir" || mkdir -p "$backupdir"
    for file in ${files[@]} ; do
       test -f "$HOME/$file" && cp "$HOME/$file" "$backupdir"
    done
    for dir in ${dirs[@]} ; do
       test -d "$HOME/$dir" && cp -R "$HOME/$dir" "$backupdir"
    done
}

warnOverwrite(){
    prettyPrint "The following will be overwritten: .zshrc, .tmux.conf, .inputrc, .vimrc, .ideavimrc, .iftop.conf, .shell_aliases_functions.sh in $HOME"
    prettyPrint "These files if they exist will be backed to $backupdir"
    prettyPrintStdin <<EOF
The following directories if they exist will be backed to $backupdir: 
$HOME/${dirs[0]}, 
$HOME/${dirs[1]}, 
$HOME/${dirs[2]} 

EOF
    proceed
    backup

}

warnSudo(){
    prettyPrint "It is highly recommended to run 'sudo visudo' to allow noninteractive install.  This allows running sudo without a password.  The following line would be added to /etc/sudoers: <Your Username> ALL=(ALL) NOPASSWD:ALL"
    proceed

}

pluginsinstall(){
    builtin cd "$INSTALLER_DIR"
    test -f plugins_install.sh || { echo "Where is plugins_install.sh in zpwr base directory?" >&2; exit 1; }
    bash plugins_install.sh >> "$logfileCargoYCM" 2>&1 &
    PLUGIN_PID=$!
    prettyPrint "Installing vim and tmux plugins in background @ $PLUGIN_PID"
}

ycminstall(){
    builtin cd "$INSTALLER_DIR"
    test -f ycm_install.sh || { echo "Where is ycm_install.sh in zpwr base directory?" >&2; exit 1; }
    bash ycm_install.sh >> "$logfileCargoYCM" 2>&1 &
    YCM_PID=$!
    prettyPrint "Installing YouCompleteMe in background @ $YCM_PID"
}

cargoinstall(){
    test -f rustupinstall.sh || { echo "Where is rustupinstall.sh in zpwr base directory?" >&2; exit 1; }
    bash rustupinstall.sh >> "$logfileCargoYCM" 2>&1 &
    CARGO_PID=$!
    echo $CARGO_PID
    prettyPrint "Installing rustup for exa, fd and bat in background @ $CARGO_PID"
}

trap 'echo kill $YCM_PID $PLUGIN_PID $CARGO_PID; kill $YCM_PID $PLUGIN_PID $CARGO_PID 2>/dev/null;echo bye;exit' INT TERM HUP QUIT

#}}}***********************************************************

#{{{                    MARK:Mac
#**************************************************************
if [[ "$OS_TYPE" == "Darwin" ]]; then
    warnOverwrite
    warnSudo

    prettyPrint "Checking Dependencies for Mac..."
    addDependenciesMac
    distroName=Mac
    distroFamily=mac
    showDeps

    exists "brew" || {
        #install homebrew
        prettyPrint "Installing HomeBrew..."
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    }

    exists "brew" || {
        prettyPrint "Need Homebrew"
        exit 1
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
        refresh "$distroFamily"
        prettyPrint "Installing java"
        brew cask install java
        prettyPrint "Checking for curl before rustup install"
        exists curl || update curl mac
        cargoinstall
        pluginsinstall
        for prog in "${dependencies_ary[@]}"; do
            prettyPrint "Installing $prog"
            update "$prog" mac
        done

        prettyPrint "Upgrading packages"
        upgrade mac
    fi

    prettyPrint "Tapping Homebrew fonts"
    brew tap homebrew/cask-fonts
    prettyPrint "Installing hack nerd font"
    brew cask install font-hack-nerd-font

    prettyPrint "Installing meteor"
    curl https://install.meteor.com/ | sh

    # system sed breaks extended regex
    ln -s /usr/local/bin/gsed /usr/local/bin/sed

    test -f '/usr/local/share/zsh/site-functions/_git' && {
        prettyPrint "Removing homebrew installed git zsh completion at /usr/local/share/zsh/site-functions/_git because conflicts with zsh's git completion"
        rm '/usr/local/share/zsh/site-functions/_git'
    }

    #}}}***********************************************************

#{{{                    MARK:Linux
#**************************************************************
elif [[ "$OS_TYPE" == "Linux" ]]; then

    addDependenciesLinux
    distroName=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)


    warnOverwrite
    warnSudo

    case $distroName in
        (debian|ubuntu|elementary|raspbian|kali|linuxmint|zorin|parrot)
            distroFamily=debian
            prettyPrint "Fetching Dependencies for $distroName with the Advanced Package Manager..."
            addDependenciesDebian
            ;;
        (arch)
            distroFamily=arch
            prettyPrint "Fetching Dependencies for $distroName with zypper"
            addDependenciesArch
            ;;
        (*suse*)
            distroFamily=suse
            prettyPrint "Fetching Dependencies for $distroName with zypper"
            addDependenciesSuse
            ;;
        (centos|fedora|rhel)
            distroFamily=redhat
            prettyPrint "Fetching Dependencies for $distroName with the Yellowdog Updater Modified"
            addDependenciesRedHat
            ;;
        (*)
            prettyPrint "Your distroFamily $distroName is unsupported!" >&2
            exit 1
            ;;
    esac

    showDeps
    refresh "$distroFamily"

    if [[ $skip != true ]]; then
        prettyPrint "Now The Main Course..."
        sleep 1
        prettyPrint "Checking for curl before rustup install"
        exists curl || update curl "$distroFamily"
        cargoinstall
        pluginsinstall
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
    #unix
    if [[ "$OS_TYPE" == FreeBSD ]]; then
        distroFamily=freebsd
        distroName=FreeBSD

        warnOverwrite
        warnSudo


        prettyPrint "Fetching Dependencies for $distroName with pkg"
        addDependenciesFreeBSD
        showDeps
        refresh "$distroFamily"

        if [[ $skip != true ]]; then
            prettyPrint "Now The Main Course..."
            sleep 1
            prettyPrint "Checking for curl before rustup install"
            exists curl || update curl "$distroFamily"
            cargoinstall
            pluginsinstall
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
        prettyPrint "Your OS $OS_TYPE is unsupported!" >&2; exit 1
    fi

fi

#}}}***********************************************************

#{{{                    MARK:vim
#**************************************************************

prettyPrint "Common Installer Section"

vimV="$(vim --version | head -1 | awk '{print $5}')"

if echo "$vimV >= 8.0" | bc | grep -q 1 || vim --version 2>&1 | grep -q '\-python3';then
    prettyPrint "Vim Version less than 8.0 or without python! Installing Vim from Source."

    builtin cd "$INSTALLER_DIR"
    source "vim_install.sh"
fi

exists diff-so-fancy || {
    sudo npm i -g diff-so-fancy
}

exists nvim || {
    builtin cd "$INSTALLER_DIR"
    source "neovim_install.sh"
}

#}}}***********************************************************

#{{{                    MARK:Tmux
#**************************************************************
ycminstall

builtin cd "$INSTALLER_DIR"
source "$INSTALLER_DIR/pip_install.sh"

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

prettyPrint "Installing Iftop config..."
ip=$(ifconfig | grep "inet\s" | grep -v 127 | awk '{print $2}' | sed 's@addr:@@')
iface=$(ifconfig | grep -B3 "inet .*$ip" | grep '^[a-zA-Z0-9].*' | awk '{print $1}' | tr -d ":")
prettyPrint "IPv4: $ip and interface: $iface"
echo "interface:$iface" >> "$INSTALLER_DIR/.iftop.conf"

builtin cd "$INSTALLER_DIR"
prettyPrint "Installing Pipes.sh from source"
git clone https://github.com/pipeseroni/pipes.sh.git
builtin cd pipes.sh && {
    sudo make install
    builtin cd ..
    rm -rf pipes.sh
}

#}}}***********************************************************

#{{{                    MARK:Utilities
#**************************************************************
prettyPrint "Installing IFTOP-color by MenkeTechnologies"

builtin cd "$INSTALLER_DIR"
automake --version 2>&1 | grep -q '16' || {
    wget https://ftp.gnu.org/gnu/automake/automake-1.16.tar.gz
    tar xvfz automake-1.16.tar.gz
    builtin cd automake-1.16 && ./configure && make && sudo make install
    make clean
}

[[ ! -d "$HOME/forkedRepos" ]] && mkdir "$HOME/forkedRepos"
builtin cd "$HOME/forkedRepos" && {
    git clone https://github.com/MenkeTechnologies/iftopcolor
    builtin cd iftopcolor && {
        aclocal
        automake --add-missing
        ./configure && make && sudo make install
    }
}

exists grc || {
    git clone https://github.com/garabik/grc.git
    builtin cd grc
    sudo bash install.sh
}

if [[ "$(uname)" == Darwin ]]; then
    prettyPrint "Try again for ponysay and lolcat on mac"
    exists ponysay || brew install ponysay
fi

prettyPrint "Installing grc configuration for colorization and grc.zsh for auto aliasing...asking for passwd with sudo"
if [[ "$(uname)" == Darwin ]]; then
    GRC_DIR=/usr/local/share/grc
else
    GRC_DIR=/usr/share/grc
fi
cd "$INSTALLER_DIR"
prettyPrint "Installing ponysay from source"
git clone https://github.com/erkin/ponysay.git && {
builtin cd ponysay && sudo ./setup.py --freedom=partial install && \
    builtin cd .. && sudo rm -rf ponysay
}

prettyPrint "Installing Go deps"
builtin cd "$INSTALLER_DIR" || { echo "where is $INSTALLER_DIR" >&2; exit 1; }
source "$INSTALLER_DIR/go_install.sh"

test -f /usr/local/sbin/iftop || {
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

prettyPrint "Installing .zshrc"
cp "$INSTALLER_DIR/.zshrc" "$HOME"

prettyPrint "Installing Zsh plugins"
builtin cd "$INSTALLER_DIR" || { echo "where is $INSTALLER_DIR" >&2; exit 1; }
source "$INSTALLER_DIR/zsh_plugins_install.sh"

prettyPrint "Running Vundle"
#run vundle install for ultisnips, supertab
vim -c PluginInstall -c qall

prettyPrint "Installing Powerlevel9k"
git clone https://github.com/MenkeTechnologies/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
cp "$INSTALLER_DIR/.powerlevel9kconfig.sh" "$HOME"

prettyPrint "Installing fzf"
"$HOME/.oh-my-zsh/custom/plugins/fzf/install" --bin

prettyPrint "Final refreshing of dependencies"
refresh "$distroFamily"

#}}}***********************************************************

#{{{                    MARK:Final
#**************************************************************
builtin cd "$INSTALLER_DIR/.." || { echo "what happened to $INSTALLER_DIR ?" >&2; exit 1; }

escapeRemover="$INSTALLER_DIR/scripts/escapeRemover.pl"

test -f "$escapeRemover" && \
    "$escapeRemover" "$logfile" > "$INSTALLER_DIR/log.txt"

#rm -rf "$INSTALLER_DIR"
prettyPrint "Waiting for cargo installer to finish"
wait $CARGO_PID
wait $YCM_PID
wait $PLUGIN_PID

prettyPrint "Done!!!!!!"
prettyPrint "Starting Tmux..."
prettyPrint "Starting the matrix"
export SHELL="$(which zsh)"
export SCRIPTS="$HOME/Documents/shellScripts"
dir="$(sudo python3 -m pip show powerline-status | \grep --color=always '^Location' | awk '{print $2}')/powerline"
prettyPrint "linking $dir to ~/.tmux/powerline"

if [[ ! -d "$HOME/.tmux" ]]; then
    prettyPrint "$HOME/.tmux does not exist"
fi

if [[ ! -d "$dir" ]]; then
    prettyPrint "$dir does not exist"
else
    if needSudo "dir"; then
        prettyPrint "linking $dir to $TMUX_HOME/powerline with sudo"
        echo sudo ln -sf "$dir" "$HOME/.tmux/powerline"
        sudo ln -sf "$dir" "$TMUX_HOME/powerline"
    else
        prettyPrint "linking $dir to $TMUX_HOME/powerline"
        echo ln -sf "$dir" "$HOME/.tmux/powerline"
        ln -sf "$dir" "$TMUX_HOME/powerline"
    fi
fi

command tmux source-file "$HOME/.tmux.conf"


zsh -c 'tmux new-session -d -s main'
tmux send-keys -t "main" 'tmux source-file "$HOME/.tmux/control-window"; tmux select-pane -t right; tmux send-keys "matr" C-m' C-m
tmux attach -t main

#}}}***********************************************************
