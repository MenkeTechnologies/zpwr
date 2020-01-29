#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed May 31 22:54:32 EDT 2017
#####   Purpose: bash script for custom terminal setup
#####   Notes: goal - work on mac and linux
#####   Notes: this script should a one liner installer
#}}}***********************************************************

#{{{                    MARK:Env vars
#**************************************************************
unset CDPATH

#get operating system type
ZPWR_OS_TYPE="$(uname -s | tr A-Z a-z)"
#resolve all symlinks
ZPWR_INSTALLER_DIR="$(pwd -P)"
#normally ~/.zpwr
ZPWR_BASE_DIR="$(dirname $ZPWR_INSTALLER_DIR)"
ZPWR_BASE_SCRIPTS="$ZPWR_BASE_DIR/scripts"
ZPWR_INSTALLER_LOCAL="$ZPWR_BASE_DIR/local"
ZPWR_INSTALLER_OUTPUT="$ZPWR_INSTALLER_LOCAL/installer"

export ZPWR_HIDDEN_DIR="$HOME/.zpwr/local"
#the destination directory for zpwr specific temp files
export ZPWR_HIDDEN_DIR_TEMP="$ZPWR_HIDDEN_DIR/.temp"

ESCAPE_REMOVER="$ZPWR_BASE_SCRIPTS/escapeRemover.pl"
#the destination directory for zpwr specific installed files
logfile="$ZPWR_INSTALLER_OUTPUT/escaped_logfile.txt"
logfileCargoYCM="$ZPWR_INSTALLER_OUTPUT/cargoYCM_logfile.txt"

INSTALL_VIM_SRC=false

vimV="$(vim --version | head -n 1 | awk '{print $5}')"
if [[ -n $vimV ]]; then
    if echo "$vimV >= 8.0" | bc 2>/dev/null | grep -q 1 || vim --version 2>&1 | grep -q '\-python3';then
        INSTALL_VIM_SRC=true
    fi
fi

#}}}***********************************************************

#{{{                    MARK:sanity
#**************************************************************
if [[ $ZPWR_BASE_DIR == "$ZPWR_INSTALLER_DIR" ]]; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

if [[ ! -d $ZPWR_BASE_SCRIPTS ]]; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

if [[ ! -d $ZPWR_BASE_DIR ]]; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

if [[ ! -d $ZPWR_INSTALLER_LOCAL ]]; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

if ! test -f "$ESCAPE_REMOVER"; then
    echo "where is $ESCAPE_REMOVER?" >&2
    exit 1
fi

if ! test -x "$ESCAPE_REMOVER"; then
    echo "why $ESCAPE_REMOVER not exe?" >&2
    exit 1
fi

#shows count of steps in installer
install_counter=0
#for the width of the install messages
export COLUMNS="$(tput cols)"
#source common functions
if ! source common.sh; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi
#}}}***********************************************************

#{{{                    MARK:mkdir if needed
#**************************************************************
if [[ ! -d $ZPWR_INSTALLER_OUTPUT ]]; then
    mkdir -p $ZPWR_INSTALLER_OUTPUT
fi

if [[ ! -d $ZPWR_HIDDEN_DIR ]]; then
    mkdir -p $ZPWR_HIDDEN_DIR
fi

if [[ ! -d $ZPWR_HIDDEN_DIR_TEMP ]]; then
    mkdir -p $ZPWR_HIDDEN_DIR_TEMP
fi
#}}}***********************************************************

#{{{                    MARK:Stream tee to logfile
#**************************************************************
clear
# replicate stdout and sterr to logfile
exec > >(tee -a "$logfile")
exec 2>&1
#}}}***********************************************************

#{{{                    MARK:Banner
#**************************************************************
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

#}}}***********************************************************

#{{{                    MARK:Setup deps
#**************************************************************
#Dependencies
# 1) neovim
# 2) tmux
# 3) lolcat
# 4) cmatrix
# 5) htop
# 6) cmake
# 7) youcompleteme
# 8) ultisnips
# 9) supertab
# 10) oh-my-zsh
# 11) powerlevel9k prompt
# 12) pathogen
# 13) nerdtree
# 14) fzf
# 15) powerline
# 16) vim-airline
# 17) zsh
#etc

dependencies_ary=(openssl moreutils cmake tig hexedit boxes tal iperf vim tmux chkrootkit wget cowsay cmatrix htop bpython sl mutt \
    screenfetch ccze htop figlet zsh docker.io docker erlang elixir links \
    rlwrap tor nvm nginx nmap mtr mytop tcpdump redis toilet mysql \
    mongodb postgresql jnettop iotop fping ctags texinfo lsof \
    whois weechat gradle ant maven telnet tree mc ocaml groovy slurm \
    bmon ruby parallel pssh shfmt)

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
    dependencies_ary=(python3-devel llvm llvm-devel openssl-devel ${dependencies_ary[@]})
    dependencies_ary+=(gcc-c++ makeinfo autoconf openldap2-devel mariadb postgresql-server libcurl-devel net-snmp-devel \
        mysql-devel libevent-devel postgresql-devel fortune ruby-devel net-tools-deprecated \
        python3-pip curl libffi-devel grc libpcap-devel the_silver_searcher kernel-devel gcc libxml2-devel libxslt-devel)
    }

addDependenciesDebian(){
    dependencies_ary=(python3-dev libssl-dev ${dependencies_ary[@]})
    dependencies_ary+=(mysql-server gcc bc lib-gnome2-dev silversearcher-ag libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
        ncurses-dev libevent-dev libncurses5-dev libcairo2-dev libx11-dev \
        libxpm-dev libxt-dev \
        libperl-dev libpq-dev libpcap-dev fortunes ruby-dev \
        python3-pip libffi-dev libssl-dev grc automake whatweb)

    }

addDependenciesRedHat(){
    if [[ "$distroName" == centos ]]; then
        sudo yum install -y epel-release
    fi
    dependencies_ary=(python3-devel clang llvm llvm-devel openssl-devel ${dependencies_ary[@]})
    dependencies_ary+=(gcc-c++ 'fortune-mod.*' mariadb-server clamav-update openldap-devel libcurl-devel net-snmp-devel mysql-devel libevent-devel libffi-devel mysql-server \
        python36-tools ncurses-devel libpcap-devel curses-devel automake the_silver_searcher kernel-devel postgresql-devel)
    }

addDependenciesFreeBSD(){
    dependencies_ary+=(go the_silver_searcher vim python3 gnome3 devel/ruby-gems)
}

addDependenciesMac(){
    dependencies_ary=(neovim macvim ${dependencies_ary[@]})
    dependencies_ary+=(ripgrep httpie proxychains-ng s-search git ag automake autoconf fortune node the_silver_searcher \
        fswatch zzz ghc lua python readline reattach-to-user-namespace speedtest-cli aalib ncmpcpp mpd ctop hub ncurses tomcat ninvaders kotlin grails go)
}
#}}}***********************************************************

#{{{                    MARK:installer funcs
#**************************************************************
__ScriptVersion="1.0.1"

function usage(){
    echo "Usage :  $0 [options] [--]

    Options:
    -h|help       Display this message
    -s|skip       Skip main section
    -c|config     Copy just configs
    -n|notmux     Do not start tmux at end of installer
    -v|version    Display script version"

}


function showDeps(){
    bash "$ZPWR_INSTALLER_DIR/scripts/about.sh" 2>/dev/null
    {
        printf "Installing ${#dependencies_ary[@]} packages on $distroName: "
        for dep in "${dependencies_ary[@]}" ; do
            printf "$dep "
        done
    } | prettyPrintStdin
    proceed
}

files=(.zshrc .tmux.conf .vimrc .ideavimrc .iftopcolors .iftop.conf .zpwr/.shell_aliases_functions.sh \
    conf.gls conf.df conf.ifconfig conf.mount grc.zsh .inputrc .zpwr/.powerlevel9kconfig.sh .my.cnf motd.sh)

dirs=(.zpwr/scripts .config/htop .config/powerline/themes/tmux)


BACKUP_DIR="$ZPWR_HIDDEN_DIR/$USER.rc.bak.$(date +'%m.%d.%Y')"

function backup(){
    test -d "$BACKUP_DIR" || mkdir -p "$BACKUP_DIR"
    for file in ${files[@]} ; do
        test -f "$HOME/$file" && cp "$HOME/$file" "$BACKUP_DIR"
    done
    for dir in ${dirs[@]} ; do
        test -d "$HOME/$dir" && cp -R "$HOME/$dir" "$BACKUP_DIR"
    done
}

function warnOverwrite(){
    prettyPrint "The following will be overwritten: .zshrc, .tmux.conf, .inputrc, .vimrc, .ideavimrc, .iftop.conf, .shell_aliases_functions.sh in $HOME"
    prettyPrint "These files if they exist will be backed to $BACKUP_DIR"
    prettyPrintStdin <<EOF
The following directories if they exist will be backed to $BACKUP_DIR: 
$HOME/${dirs[0]},
$HOME/${dirs[1]},
$HOME/${dirs[2]}

EOF
    proceed
    backup

}

function warnSudo(){
    prettyPrint "It is highly recommended to run 'sudo visudo' to allow noninteractive install.  This allows running sudo without a password.  The following line would be added to /etc/sudoers: <Your Username> ALL=(ALL) NOPASSWD:ALL"
    proceed

}

function pluginsinstall(){
    goInstallerDir
    doesFileExist plugins_install.sh
    bash plugins_install.sh >> "$logfileCargoYCM" 2>&1 &
    PLUGIN_PID=$!
    prettyPrint "Installing vim and tmux plugins in background @ $PLUGIN_PID"
}

function ycminstall(){
    goInstallerDir
    doesFileExist ycm_install.sh
    bash ycm_install.sh >> "$logfileCargoYCM" 2>&1 &
    YCM_PID=$!
    prettyPrint "Installing YouCompleteMe in background @ $YCM_PID"
}

function cargoinstall(){
    goInstallerDir
    doesFileExist rustupinstall.sh
    bash rustupinstall.sh >> "$logfileCargoYCM" 2>&1 &
    CARGO_PID=$!
    echo $CARGO_PID
    prettyPrint "Installing rustup for exa, fd and bat in background @ $CARGO_PID"
}
#}}}***********************************************************

#{{{                    MARK:Getopts
#**************************************************************
skip=false
justConfig=false
noTmux=false
while getopts ":hnvsc" opt
do
    case $opt in

        h|help     )  usage; exit 0   ;;

        v|version  )  echo "$0 -- Version $__ScriptVersion"; exit 0   ;;

        s|skip     )  skip=true ;;

        n|notmux     )  noTmux=true ;;

        c|config     )  justConfig=true ;;

        * )  echo -e "\n  Option does not exist : $OPTARG\n"
            usage; exit 1   ;;

        esac    # --- end of case ---
    done
    shift $(($OPTIND-1))

trap 'echo kill $YCM_PID $PLUGIN_PID $CARGO_PID; kill $YCM_PID $PLUGIN_PID $CARGO_PID 2>/dev/null;echo bye;exit' INT TERM HUP QUIT

if [[ $justConfig == true ]]; then
    prettyPrint "Installing just configs"
fi

if [[ $skip == true ]]; then
    prettyPrint "Skipping dependencies section"
fi

#}}}***********************************************************

#{{{                    MARK:Mac
#**************************************************************
if [[ "$ZPWR_OS_TYPE" == "darwin" ]]; then
    warnOverwrite
    warnSudo

    if [[ $justConfig != true ]]; then
        prettyPrint "Checking Dependencies for Mac..."
        addDependenciesMac
        distroName=Mac
        distroFamily=mac
        showDeps

        if exists "brew"; then
            #install homebrew
            prettyPrint "Installing HomeBrew..."
            /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        fi

        if ! exists "brew"; then
            prettyPrint "Need Homebrew"
            exit 1
        fi

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

        prettyPrint "PostInstalling nodejs"
        brew postinstall node

        # system sed breaks extended regex
        ln -s /usr/local/bin/gsed /usr/local/bin/sed

        if test -f '/usr/local/share/zsh/site-functions/_git'; then
            prettyPrint "Removing homebrew installed git zsh completion at /usr/local/share/zsh/site-functions/_git because conflicts with zsh's git completion"
            rm '/usr/local/share/zsh/site-functions/_git'
        fi

    fi

#}}}***********************************************************

#{{{                    MARK:Linux
#**************************************************************
elif [[ "$ZPWR_OS_TYPE" == "linux" ]]; then

    addDependenciesLinux
    distroName=$(perl -lne 'do{($_=$1)=~s/"//g;print;exit0}if/^ID=(.*)/' /etc/os-release)


    warnOverwrite
    warnSudo

    if [[ $justConfig != true ]]; then
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
    fi


else
    #unix
    if [[ "$ZPWR_OS_TYPE" == freebsd ]]; then
        distroFamily=freebsd
        distroName=FreeBSD

        warnOverwrite
        warnSudo

        if [[ $justConfig != true ]]; then
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
            prettyPrint "Your OS $ZPWR_OS_TYPE is unsupported!" >&2; exit 1
        fi

    fi


fi

#}}}***********************************************************

#{{{                    MARK:vim
#**************************************************************

prettyPrint "Common Installer Section"

if [[ $justConfig != true ]]; then
    if [[ $INSTALL_VIM_SRC == true ]]; then
        #if neovim already installed, vim already points to neovim
        prettyPrint "Vim Version less than 8.0 or without python! Installing Vim from Source."

        goInstallerDir
        doesFileExist vim_install.sh
        source vim_install.sh
    fi

    goInstallerDir

    exists nvim || {
        doesFileExist neovim_install.sh
        source neovim_install.sh
    }

    goInstallerDir
    doesFileExist npm_install.sh
    source npm_install.sh

    goInstallerDir

fi

#}}}***********************************************************

#{{{                    MARK:Tmux
#**************************************************************
if [[ $justConfig != true ]]; then
    ycminstall

    goInstallerDir
    doesFileExist pip_install.sh

    source pip_install.sh

    goInstallerOutputDir

    prettyPrint "Installing Pipes.sh from source"

    git clone https://github.com/pipeseroni/pipes.sh.git

    builtin cd pipes.sh && {
        sudo make install
            builtin cd ..
            rm -rf pipes.sh
        }

fi

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

if [[ -n "$iface" ]]; then
    prettyPrint "IPv4: $ip and interface: $iface"
    cp "$ZPWR_INSTALLER_DIR/install/.iftop.conf" "$HOME"
    echo "interface:$iface" >> "$HOME/.iftop.conf"
fi


#}}}***********************************************************

#{{{                    MARK:Utilities
#**************************************************************
if [[ $justConfig != true ]]; then
    prettyPrint "Installing IFTOP-color by MenkeTechnologies"

    goInstallerOutputDir
    automake --version 2>&1 | grep -q '16' || {
        wget https://ftp.gnu.org/gnu/automake/automake-1.16.tar.gz
            tar xvfz automake-1.16.tar.gz
            builtin cd automake-1.16 && ./configure && make && sudo make install
            make clean
        }

    [[ ! -d "$HOME/forkedRepos" ]] && mkdir "$HOME/forkedRepos"
    if builtin cd "$HOME/forkedRepos"; then
        git clone https://github.com/MenkeTechnologies/iftopcolor
        if builtin cd iftopcolor; then
            aclocal
            automake --add-missing
            ./configure && make && sudo make install
        else
            fail "could not cd to iftopcolor"
        fi
    fi

    if ! exists grc; then
        goInstallerOutputDir
        prettyPrint "Installing grc from source to $(pwd)"
        git clone https://github.com/garabik/grc.git
        if builtin cd grc; then
            sudo bash install.sh
        else
            fail "could not cd to grc"
        fi
    fi

    if [[ $ZPWR_OS_TYPE == darwin ]]; then
        prettyPrint "Try again for ponysay and lolcat on mac"
        exists ponysay || brew install ponysay
    fi

    prettyPrint "Installing grc configuration for colorization and grc.zsh for auto aliasing...asking for passwd with sudo"
    if [[ "$(uname)" == Darwin ]]; then
        GRC_DIR=/usr/local/share/grc
    else
        GRC_DIR=/usr/share/grc
    fi

    goInstallerOutputDir

    prettyPrint "Installing ponysay from source"
    git clone https://github.com/erkin/ponysay.git && {
        builtin cd ponysay && sudo ./setup.py --freedom=partial install && \
        builtin cd .. && sudo rm -rf ponysay
    }

    prettyPrint "Installing Go deps"

    goInstallerDir
    doesFileExist go_install.sh

    source go_install.sh

    if ! test -f /usr/local/sbin/iftop;then
        prettyPrint "No iftop so installing"
        update iftop "$distroFamily"
    fi

    if [[ "$ZPWR_OS_TYPE" != darwin ]]; then
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
fi

#}}}***********************************************************

#{{{                    MARK:zsh
#**************************************************************
prettyPrint "Installing oh-my-zsh..."
#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#install custom theme based on agnosterzak
cp "$ZPWR_INSTALLER_DIR/agnosterzak.zsh-theme" "$HOME/.oh-my-zsh/themes/"

prettyPrint "Installing .zshrc"
cp "$ZPWR_INSTALLER_DIR/.zshrc" "$HOME"

prettyPrint "Installing Zsh plugins"

goInstallerDir
doesFileExist zsh_install.sh

source zsh_plugins_install.sh

prettyPrint "Running Vundle"
#run vundle install for ultisnips, supertab
vim -c PluginInstall -c qall

prettyPrint "Installing Powerlevel9k"
git clone https://github.com/MenkeTechnologies/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

prettyPrint "Installing fzf"
"$HOME/.oh-my-zsh/custom/plugins/fzf/install" --bin

if [[ $justConfig != true ]]; then
    prettyPrint "Final refreshing of dependencies"
    refresh "$distroFamily"
fi

#}}}***********************************************************

#{{{                    MARK:Final sym links
#**************************************************************
goInstallerDir

prettyPrint "Generating $ZPWR_INSTALLER_OUTPUT/log.txt with $ESCAPE_REMOVER from $logfile"
"$ESCAPE_REMOVER" "$logfile" > "$ZPWR_INSTALLER_OUTPUT/log.txt"

#rm -rf "$ZPWR_INSTALLER_DIR"
if [[ $justConfig != true ]] && [[ $skip != true ]]; then
    prettyPrint "Waiting for cargo installer to finish"
    wait $CARGO_PID
    wait $YCM_PID
    wait $PLUGIN_PID
fi

if [[ $justConfig != true ]] && [[ $skip != true ]]; then
    prettyPrint "Done!!!!!!"
    prettyPrint "Starting Tmux..."
    prettyPrint "Starting the matrix"
fi

export SHELL="$(which zsh)"
export ZPWR_SCRIPTS="$HOME/.zpwr/scripts"

dir="$(sudo python3 -m pip show powerline-status | \grep --color=always '^Location' | awk '{print $2}')/powerline"

prettyPrint "linking $dir to ~/.tmux/powerline"

if [[ ! -d "$HOME/.tmux" ]]; then
    prettyPrint "$HOME/.tmux does not exist"
fi

if [[ ! -d "$dir" ]]; then
    prettyPrint "$dir does not exist"
else
    if needSudo "$dir"; then
        prettyPrint "linking $dir to $TMUX_HOME/powerline with sudo"
        echo sudo ln -sf "$dir" "$HOME/.tmux/powerline"
        sudo ln -sf "$dir" "$TMUX_HOME/powerline"
    else
        prettyPrint "linking $dir to $TMUX_HOME/powerline"
        echo ln -sf "$dir" "$HOME/.tmux/powerline"
        ln -sf "$dir" "$TMUX_HOME/powerline"
    fi
fi
#}}}***********************************************************

#{{{                    MARK:start tmux
#**************************************************************
if [[ $justConfig != true ]] && [[ $skip != true ]]; then
    if [[ $noTmux != true ]];then
        command tmux source-file "$HOME/.tmux.conf"
        zsh -c 'tmux new-session -d -s main'
        tmux send-keys -t "main" 'tmux source-file "$HOME/.zpwr/.tmux/control-window"; tmux select-pane -t right; tmux send-keys "matr" C-m' C-m
        tmux attach -t main
    fi
fi
#}}}***********************************************************
