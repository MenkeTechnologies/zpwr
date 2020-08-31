      #\..                   .x+=:.
#. uW8"                    z`    ^%    .uef^"
#`t888                        .   <k :d88E
 #8888   .         u        .@8Ned8" `888E
 #9888.z88N     us888u.   .@^%8888"   888E .z8k
 #9888  888E .@88 "8888" x88:  `)8b.  888E~?888L
 #9888  888E 9888  9888  8888N=*8888  888E  888E
 #9888  888E 9888  9888   %8"    R88  888E  888E
 #9888  888E 9888  9888    @8Wou 9%   888E  888E
#.8888  888" 9888  9888  .888888P`    888E  888E
 #`%888*%"   "888*""888" `   ^"F     m888N= 888>
    #"`       ^Y"   ^Y'               `Y"   888
                                          #J88"
                                          #@%
                                        #:"

#
# https://github.com/MenkeTechnologies
#

#{{{                    MARK:Import env and global fn
#**************************************************************

if ! type -- "exists" >/dev/null 2>&1;then
    test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR/.zpwr_env.sh"
    source "$ZPWR_ENV_FILE" || {
        echo "cannot access $ZPWR_ENV_FILE" >&2
        exit 1
    }
fi

source "$ZPWR_SCRIPTS/crossOSCommands.sh" || {
    echo "where is $ZPWR_SCRIPTS/crossOSCommands.sh" >&2
    return 1
}


if [[ ! -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    mkdir -p "$ZPWR_HIDDEN_DIR_TEMP"
fi

function chooseNvimVim(){

    if [[ $ZPWR_USE_NEOVIM == true ]]; then
        if commandExists nvim; then
            alias v='nvim'
            alias vi='nvim'
            alias vv='nvim'
            alias vim='nvim'
            alias vm="nvim -u $ZPWR/.mininit.vim"
            alias sv='sudo -E nvim'
        else
            if commandExists vim; then
                alias v=vim
                alias vi=vim
                alias vv=vim
                alias vm="vim -u $ZPWR/.minvimrc"
                alias sv='sudo -E vim'
            fi
        fi
    else
        if commandExists vim; then
            alias v=vim
            alias vi=vim
            alias vv=vim
            alias vm="vim -u $ZPWR/.minvimrc"
            alias sv='sudo -E vim'
        fi
    fi
}
#}}}***********************************************************

#{{{                    MARK:Env Vars
#**************************************************************
export Z_DATA="$HOME/.z"
export PS3=$'\e[1;34m-->>>> \e[0m'
# bash xtrace prompt
export PS4='>\e[1;4;39m${BASH_SOURCE}\e[37m\e[0;34m__${LINENO}\e[37m__\e[0;32m${FUNCNAME[0]}> \e[0m'
# defaut layout config for nmon
export NMON='mndckt'
export CLICOLOR="YES"
export LSCOLORS="ExFxBxDxCxegedabagacad"
export FORKED_DIR="$HOME/forkedRepos"
export D="$HOME/Desktop"
export PYEXECUTABLES="$HOME/Documents/pythonScripts"
export PYSCRIPTS="$HOME/PycharmProjects/fromShell"
export XAUTHORITY="$HOME/.Xauthority"
export TERMINAL_APP="Terminal.app"
export YARN_HOME="$HOME/.config/yarn"
export TMUX_HOME="$HOME/.tmux"
export NODE_HOME="/usr/local/lib/node_modules"
export NODE_PATH="/usr/local/lib/node_modules:$YARN_HOME/global/node_modules"
export HISTSIZE=50000
export HISTTIMEFORMAT=' %F %T _ '
export UMASK=077
export LESS="-M -N -R -K -F -X"

if [[ -z "$TMUX" ]]; then
    export TERM="xterm-256color"
fi
#}}}***********************************************************

#{{{                    MARK:PATH
#**************************************************************
if ! echo "$PATH" | command grep -isq $ZPWR_SCRIPTS; then
    export PATH="$PATH:$HOME/go/bin:/usr/local/lib/python2.7/site-packages/powerline/scripts"

    export PATH="$PYEXECUTABLES:$ZPWR_SCRIPTS/save-run:$HOME/.local/bin:$HOME/perl5/bin:$ZPWR_SCRIPTS:/opt/X11/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        export CPATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
        export HOMEBREW_HOME_FORMULAE="/usr/local/Homebrew/Library/taps/homebrew/homebrew-core/formula"
        export PATH="$ZPWR_SCRIPTS_MAC:$PATH:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/tools/bin:$HOME/Library/Android/sdk/platform-tools:/Library/Developer/CommandLineTools/usr/bin:$HOME/.platformio/penv/bin"
    else
        export PATH="$PATH:/usr/games"
    fi

    exists yarn && export PATH="$(yarn global bin):$PATH"

#}}}***********************************************************

#{{{                           MARK:HOMES
#**********************************************************************
    if [[ "$ZPWR_OS_TYPE" == darwin ]];then
        export HOMEBREW_HOME='/usr/local/Cellar'
        export HOMEBREW_OPT_HOME='/usr/local/opt'
        export GROOVY_LIB="$HOMEBREW_OPT_HOME/groovy"
        export SCALA_HOME="$HOMEBREW_OPT_HOME/scala"
        export PERL_HOME="$HOMEBREW_OPT_HOME/perl"
        export HOMEBREW_DBHOME='/usr/local/var'
        export HOMEBREW_DB_CONF='/usr/local/etc'
        #eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
        export MANPATH=$HOME/perl5/man:$MANPATH
        export MANPATH="$HOMEBREW_OPT_HOME/erlang/lib/erlang/man:$MANPATH"
        export TUTORIAL_FILES="$HOME/Documents/tutorialsRepo"
        export PIP3_HOME="/usr/local/lib/python3.7/site-packages"
        export PIP_HOME="/usr/local/lib/python2.7/site-packages"
        if [[ $ZPWR_USE_NEOVIM == true ]]; then
            if exists nvim; then
                export EDITOR='nvim'
                export PSQL_EDITOR='nvim -c "setf sql"'
            else
                export EDITOR='vim'
                export PSQL_EDITOR='vim -c "setf sql"'
            fi
        else
            if exists mvim; then
                export EDITOR='mvim -v'
                export PSQL_EDITOR='mvim -v -c "setf sql"'
            else
                export EDITOR='vim'
                export PSQL_EDITOR='vim -c "setf sql"'
            fi
        fi
    else
        if [[ $ZPWR_USE_NEOVIM == true ]]; then
            if exists nvim; then
                export EDITOR='nvim'
                export PSQL_EDITOR='nvim -c "setf sql"'
            else
                export EDITOR='vim'
                export PSQL_EDITOR='vim -c "setf sql"'
            fi
        else
            export EDITOR='vim'
            export PSQL_EDITOR='vim -c "setf sql"'
        fi
    fi
#**************************************************************
#}}}

#{{{                    MARK:Rust Config
#**************************************************************
    export PATH="$HOME/.cargo/bin:$PATH"
    if exists exa; then
        alias exa="$ZPWR_EXA_COMMAND"
        if [[ $ZPWR_COLORS = true ]]; then
            export LS_COLORS="fi=38:di=32;1:ex=31;1"
            export EXA_COLORS="in=34:ur=32:uw=32:ux=32:gr=33:gw=33:gx=33:tr=31:tw=31:tx=31:xx=34:uu=38:gu=32:lc=32;1:un=41;37;1:gn=43;37;1:sb=4;1:xa=1;34:df=31;46;1:ds=31;45;1:lp=36;1:cc=1;31;46:da=34:b0=31;1;4:gm=32;1;4:ga=36;1;4:gd=34;1;4:gv=35;1;4:gt=37;1;4"
        fi
    fi

#}}}***********************************************************

#{{{                    MARK:GO
#**************************************************************
    export GOPATH="$HOME/go"

    test -s \
    "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash" &&
    source "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash"
fi
#}}}

#{{{                    MARK:Aliases
#**************************************************************
# portable aliases
exists c.pl && {
    alias pp='c.pl'
    alias ppp='c.pl *'
}
alias dirs='dirs -v'
exists proxychains && alias pc='proxychains'
exists proxychains4 && alias pc='proxychains'
alias lo="tail -n 1000 -F $ZPWR_LOGFILE"
alias loo="tail -n 1000 -F $ZPWR_LOGFILE"
alias ol="tail -n 1000 -F $ZPWR_LOGFILE"
alias llo="tail -n 1000 -F $ZPWR_LOGFILE"
alias va='cd /var'
alias vl='cd /var/log'
exists rlwrap && alias plr="rlwrap -A -pgreen -S'perl> ' perl -wnE'say eval()//\$@'"
alias cpan='rlwrap cpan'
alias nz='exec zsh'
alias ll="clearList"
alias la="clearList"
alias l="clearList"
alias t="cd /"
alias ca='cat -n'
alias sa='sudo cat -n'
alias ra='sudo rm -rf --'
alias die='sudo kill -9 --'
alias da=detachall

if exists emacs; then
    alias emacs="$ZPWR_EMACS"
    alias ee="$ZPWR_EMACS_CLIENT"
    alias me='source em-server.sh'
fi

test -d "$PYSCRIPTS" && alias py="cd $PYSCRIPTS"
alias p2="python2"
alias p3="python3"

exists fc && alias please='sudo $(fc -ln -1)'

exists spotify && {
    alias rep='spotify replay'
    alias ne='spotify next'
    alias pe='spotify prev'
    alias spa='spotify pause'
}

if isZsh; then
    alias 10='cd -10'
    alias 11='cd -11'
    alias 12='cd -12'
    alias 13='cd -13'
    alias 14='cd -14'
    alias 15='cd -15'
    alias 16='cd -16'
    alias 17='cd -17'
    alias 18='cd -18'
    alias 19='cd -19'
fi

#{{{                    MARK:ALIASES for editing config files
#**************************************************************
alias vrc="vim -S ~/.vim/sessions/vrc.vim ~/.vimrc"
alias brc="vim -S ~/.vim/sessions/aliases.vim + $ZPWR/.shell_aliases_functions.sh; bash $ZPWR_SCRIPTS/backupConfig.sh 2> /dev/null"
alias zrc="vim -S ~/.vim/sessions/zshrc.vim + ~/.zshrc"
alias trc="vim -S ~/.vim/sessions/trc.vim ~/.tmux.conf"
alias tok="builtin cd $ZPWR; vim $ZPWR_TOKEN_PRE;clearList;isGitDir && git diff HEAD"
alias conf="builtin cd $ZPWR; vim $ZPWR_INSTALL/.zshrc $ZPWR_INSTALL/.globalrc $ZPWR/.tmux.conf $ZPWR/.vimrc $ZPWR/.shell_aliases_functions.sh $ZPWR_TMUX/*(.) $ZPWR/.powerlevel9kconfig.sh $ZPWR_TOKEN_PRE $ZPWR/.minvimrc;clearList;isGitDir && git diff HEAD"
alias etok="builtin cd $ZPWR; ${ZPWR_EMACS_CLIENT} $ZPWR_TOKEN_PRE;clearList;isGitDir && git diff HEAD"
alias econf="builtin cd $ZPWR; ${ZPWR_EMACS_CLIENT} $HOME/.zshrc $HOME/.tmux.conf $HOME/.vimrc $ZPWR/.shell_aliases_functions.sh $ZPWR_TMUX/*(.) $ZPWR/.powerlevel9kconfig.sh $ZPWR_TOKEN_PRE $ZPWR/.minvimrc;clearList;isGitDir && git diff HEAD"
alias zpt="builtin cd $ZPWR_TEST; vim $ZPWR_TEST/*.{zsh,zunit} $ZPWR/.travis.yml;clearList;isGitDir && git diff HEAD"
#}}}***********************************************************

alias deleteTab="sed '/^[\x20\x09]*$/d'"
alias ba="bash"
alias upper="tr 'a-z' 'A-Z'"
# over aliases
if pwd | command grep -sq --color=always / 2>/dev/null; then
    alias grep="grep --color=always"
fi
if pwd | command egrep -sq --color=always / 2>/dev/null; then
    alias egrep="egrep --color=always"
fi
alias _='sudo -E'
alias tree='tree -afC'
alias ta="tmux attach-session"
alias tn="tmux new-session"
alias h="cd /usr/local"
alias e="cd /etc"
alias ue="cd /usr/local/etc"
alias de="cd /dev"
alias a="cd $HOME"
test -d "$ZPWR_D" && alias d="cd $ZPWR_D"

if [[ -d "/var/www/html" ]];then
    alias we="cd /var/www/html"
elif [[ -d "/usr/local/var/www" ]];then
    alias we="cd /usr/local/var/www"
fi
if [[ -d "$FORKED_DIR" ]]; then
    alias fp="cd $FORKED_DIR"
fi

alias k="pkill"
if exists kubectl; then
    alias k8=kubectl
fi
alias ka="killall"
alias sin="./configure && make && sudo make install"
alias curl='curl -fsSL'
alias mount='grc --colour=on -c "$HOME/conf.mount" mount'
alias ifconfig='grc --colour=on -c "$HOME/conf.ifconfig" ifconfig'
alias sc='sudo -E systemctl'
#alias df='grc --colour=on -c "$HOME/conf.df" df'

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    # Darwin/macOS specific aliases
    alias p_refresh="pio -f -c clion init --ide clion "
    alias spd="du -csh {.[^.]*,..?*} * 2> /dev/null | gsort -h"
    alias cpu="top -o cpu"
    alias mem="top -o mem"
    alias tip="top -o +command"
    alias nd="defaults write com.apple.dock autohide-delay -float 100 && defaults write com.apple.dock tilesize -int 1 && killall Dock"
    alias bsaver="nohup /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background > /dev/null &"
    alias pkill="pkill -iIl"
    alias q="qlmanage -p &>/dev/null"
    # keep remote tty sessions alive by stopping sleep
    # sudo pmset -c ttyskeepawake 1
    alias v1="open -a 'vnc viewer';execpy enterPasswordForVNC.py & bash $ZPWR_SCRIPTS/sshTunnelVnc.sh"
    alias v2="open -a 'vnc viewer';execpy enterPasswordForVNC2.py & bash $ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    alias rtsync="$ZPWR_SCRIPTS_MAC/rsyncr.sh"
    alias asg='cd $HOME/AndroidStudioProjects'
    alias xg='cd $HOME/Documents/xcode'
    alias ap='cd /Applications'
    alias sudoedit='sudo $EDITOR'
    alias tra='cd $HOME/.Trash'
    alias co="bash $ZPWR_SCRIPTS_MAC/commandToColors.sh"
    alias bl='brew link --force --overwrite'

    if exists exa; then
        alias lr="$ZPWR_EXA_COMMAND -R"
    else
        exists gls &&
        alias lr='grc -c "$HOME/conf.gls" gls -iAlhFR --color=always' ||
        alias lr='grc -c "$HOME/conf.gls" ls -iAlhFR'
    fi

    chooseNvimVim

    # mvim overrides vim if not using nvim
    if [[ $ZPWR_PREFER_MVIM == true ]]; then
        exists mvim && {
            if [[ $ZPWR_USE_NEOVIM != true ]]; then
                alias v='mvim -v'
                alias vi='mvim -v'
                alias vim='mvim -v'
                alias vm="mvim -v -u $ZPWR_LOCAL/.minvimrc"
                alias sv='sudo mvim -v'
            fi
        }
    fi

    exists brew && {
        alias apz="brew update && brew outdated && brew upgrade && brew cleanup; brew cu -ay; u8"
    }
else
    # Linux or Unix
    alias ip="grc -c $HOME/conf.ifconfig ip"
    if exists exa; then
        alias lr="$ZPWR_EXA_COMMAND -R"
    else
        alias lr='grc -c "$HOME/conf.gls" ls -iAlhFR --color=always'
    fi
    test -d "$HOME/.local/share/Trash" &&
        alias tra='cd $HOME/.local/share/Trash'
    if [[ "$ZPWR_OS_TYPE" == linux ]]; then
        if exists pacman;then
            alias api="sudo pacman -Sy --noconfirm"
            alias apa="sudo pacman -Syyu --noconfirm --overwrite='*'"
            alias apz="sudo pacman -Syyu --noconfirm --overwrite='*';u8"
        elif exists zypper;then
            alias api="sudo zypper install -y"
            alias apa="sudo zypper update; sudo zypper dist-upgrade -y"
            alias apz="sudo zypper update; sudo zypper dist-upgrade -y; u8"
        elif exists apt;then
            alias api="sudo apt install -y"
            alias apa="sudo apt update; sudo apt dist-upgrade -y; sudo apt autoremove -y; sudo apt clean"
            alias apz="sudo apt update; sudo apt dist-upgrade -y; sudo apt autoremove -y; sudo apt clean; u8"
        elif exists yum;then
            alias api="sudo yum install -y"
            alias apa="sudo yum check-update; sudo yum upgrade -y "
            alias apz="sudo yum check-update; sudo yum upgrade -y; u8"
        fi

        alias ipt="sudo iptables --line-numbers -L"
        test -z "$distroName" && {
            distroName=$(perl -lne 'do{($_=$1)=~s/"//;print;exit0}if/^ID=(.*)/' /etc/os-release)
        }
        case $distroName in
            (raspbian) 
                if [[ -f "$ZPWR_LOCAL/.rpitokens.sh" ]]; then
                    source "$ZPWR_LOCAL/.rpitokens.sh"
                elif [[ -f "$HOME/.rpitokens.sh" ]]; then
                        source "$HOME/.rpitokens.sh"
                fi
                ;;
            (ubuntu|debian|kali|linuxmint) :
                ;;
            (fedora|centos|rhel)
    alias exa='exa --git -il -F -H --color-scale -g -a'
                ;;
            (*suse*) :
                ;;
            (*) :
                ;;
        esac
    elif [[ "$ZPWR_OS_TYPE" == freebsd ]]; then
            alias api="sudo pkg install -y"
            alias apa="yes | sudo pkg update; sudo pkg upgrade -y"
            alias apz="yes | sudo pkg update; sudo pkg upgrade -y;u8"
    else
        loggErr "unsupported OS $ZPWR_OS_TYPE"
    fi
    chooseNvimVim
fi
alias tclsh="rlwrap tclsh"
alias logs="sudo tail -f /var/log/**/*.log | ccze"
alias beats="sudo tail -f /var/log/*beat/* | ccze"
alias matr="cmatrix -C blue -abs"
#}}}***********************************************************

#{{{                          MARK:PYTHON ZPWR_SCRIPTS
#**************************************************************
alias tm="execpy tmux_starter.py"
alias tmm="execpy ssh_starter.py"
alias tmm_notabs="execpy complete_ssh_starter.py;"
alias tmm_full="execpy tabs.py; execpy complete_ssh_starter.py"
alias mapit="execpy mapIt.py"
alias ,,="execpy amazonSearch.py"
alias shutpy="execpy shutdown.py"
alias pb="execpy bills.py"
alias ud=" execpy udemy.py"
alias ipa="command ifconfig | perl -lane 'do {print \$F[1] =~ s/addr//r;exit0} if /inet\\s/ and !/127/'"
alias pgrep='pgrep -l'
alias jobs="jobs -l"
alias sd="clear;ssh d "
alias cl=clear
alias mkdir='mkdir -pv'
alias exa="$ZPWR_EXA_COMMAND"
exists hexedit && alias he='hexedit -l 16'
alias fh='f !$'
alias gh=openmygh
eval "alias $ZPWR_GITHUB_ACCOUNT='openmygh $ZPWR_GITHUB_ACCOUNT'"
alias dl="cd $ZPWR_DL"
alias docu="cd $ZPWR_DOC"
alias mus="cd $HOME/Music"

if [[ -d "$HOME/.vim/bundle" ]]; then
    alias vb="cd $HOME/.vim/bundle"
fi

if [[ -d "$HOME/.emacs.d/elpa" ]]; then
    alias eb="cd $HOME/.emacs.d/elpa"
fi

if [[ -d "$HOME/IdeaProjects" ]]; then
    alias ig='cd $HOME/IdeaProjects'
fi

if [[ -d "$HOME/PycharmProjects" ]]; then
    alias pg='cd $HOME/PycharmProjects'
fi

if [[ -d "$HOME/CLionProjects" ]]; then
    alias cg='cd $HOME/ClionProjects'
fi

if [[ -d "$HOME/WebstormProjects" ]]; then
    alias wg='cd $HOME/WebstormProjects'
fi

if [[ -d "$HOME/RubymineProjects" ]]; then
    alias mg='cd $HOME/RubymineProjects'
fi
#}}}***********************************************************

#{{{                          MARK:aliases for ZPWR_SCRIPTS
#**************************************************************
alias inst="bash $ZPWR_SCRIPTS/tgzLocalInstaller.sh"
alias ct="bash $ZPWR_SCRIPTS/createTextFile.sh"
alias u="bash $ZPWR_SCRIPTS/upLoadPi.sh"
alias u2="bash $ZPWR_SCRIPTS/upLoadPi2.sh"
alias pw="bash $ZPWR_SCRIPTS/uploadWebPi.sh"
alias sy="bash $ZPWR_SCRIPTS/sync.sh"
alias sf="bash $ZPWR_SCRIPTS/directoryContentsSize.sh"
alias bluef='source $ZPWR_SCRIPTS/blueText.sh'
alias u8="bash $ZPWR_SCRIPTS/updater.sh"
alias u8r="bash -l $ZPWR_SCRIPTS/updater.sh -s"
alias gitgo='$ZPWR_SCRIPTS/gitgo.sh'
alias watchGit='bash $ZPWR_SCRIPTS/watchServiceFSWatchGit.sh'
alias watchPiWeb='bash $ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh'
exists tput && {
    bold=$(tput bold || tput md)
    red=$(tput setaf 1)
}

exists idea && {
    alias ic="idea create"
    alias il="idea list"
}
#}}}***********************************************************

#{{{                    MARK:Shell functions
#**************************************************************
function rm(){

    if [[ -z "$1" ]]; then
        loggErr "usage: rm <file>"
        return 1
    fi

    command rm -v "$@"
}

function em(){

    if [[ -z "$1" ]]; then
        "${=ZPWR_EMACS}" .
    else
        "${=ZPWR_EMACS}" "$@"
    fi

}

function loadJenv() {

    if exists jenv;then
        eval "$(jenv init -)"
        jenv enable-plugin export > /dev/null 2>&1
        prettyPrint "jenv loaded"
        if [[ -n "$1" ]]; then
            jenv "$@"
        fi
    else
        loggErr "No jenv"
    fi
}

function r(){

    local cdstr
    if [[ -z $1 ]]; then
        cd ..
    else
        for (( i = 0; i < $1; ++i )); do
            cdstr+="../"
        done
        cd "$cdstr" || return 1
    fi
}

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then

    function exe(){

        python3 "$PYSCRIPTS/ssh_runner.py" "$@"
    }

    function nn(){

        if [[ -z "$2" ]];then
            loggErr "usage: Title is \$1 and message is \$2..." &&
            return 1
        fi

        local title msg

        title="$1"
        msg="$2"
        echo "display notification \"$msg\" with title \"$title\"" |
            osascript
    }

    function db(){

        python3 "$PYSCRIPTS/loginDBChrome.py"
    }

    function db2(){

        python3 "$PYSCRIPTS/logIntoMyDB.py"
    }

    function scriptToPDF(){

        local tempFile

        tempFile="$HOME/__test.ps"
        vim "$1" -c "hardcopy > $tempFile" -c quitall
        cat "$tempFile" | open -fa Preview
        rm "$tempFile"
    }

else
    exists ps2pdf && {
        function scriptToPDF(){

            if [[ -z "$1" ]]; then
                loggErr "usage: scriptToPDF <script>"
                return 1
            fi
            local tempFile

            tempFile="$HOME/__test.ps"

            vim "$1" -c "hardcopy > $tempFile" -c quitall
            ps2pdf "$tempFile" "${1%%.*}".pdf
            rm "$tempFile"
        }
    }

    function tailufw(){

        local size

        size=100

        if [[ -n $1 ]]; then
            size=$1
        fi
        if exists ccze; then
            sudo tail -n $size -F /var/log/{syslog,messages} |
                command grep -i ufw | ccze
        else
            sudo tail -n $size -F /var/log/{syslog,messages} |
                command grep -i ufw
        fi
    }

fi

if commandExists systemctl; then

    function restartZabbixAgent(){

        if exists ccze; then
    sudo systemctl restart zabbix-agent
    sudo systemctl --no-pager status zabbix-agent
    sudo journalctl -n 100 --no-pager
    sudo tail -n 1000 -F /var/log/zabbix-agent/zabbix_agentd.log | ccze
        else
    sudo systemctl restart zabbix-agent
    sudo systemctl --no-pager status zabbix-agent
    sudo journalctl -n 100 --no-pager
    sudo tail -n 1000 -F /var/log/zabbix-agent/zabbix_agentd.log
        fi
    }

    function ssd() {

        local service

        for service in "$@"; do
            prettyPrint "sudo systemctl stop $service"
            prettyPrint "sudo systemctl disable $service"
            sudo systemctl stop "$service"
            sudo systemctl disable "$service"
        done
    }

    function ssu() {

        local service

        for service in "$@"; do
            prettyPrint "sudo systemctl start $service"
            prettyPrint "sudo systemctl enable $service"
            sudo systemctl start "$service"
            sudo systemctl enable "$service"
        done
    }

    function restart(){

        if [[ -z "$1" ]]; then
            loggErr "usage: restart <services...>"
            return 1
        fi

        local src_dir service service_path group

        service="$1"
        src_dir="$ZPWR_INSTALL"
        service_path="$src_dir/$service.service"

        test -d "$src_dir" ||
    { loggErr "$src_dir does not exists." && return 1; }
        test -f "$service_path" ||
    { loggErr "$service_path does not exists so falling back to $1." && service_path="$1"; }

        test -f "$service_path" ||
    { loggErr "$service_path does not exists so exiting." && return 1; }

        test -d "/etc/systemd/system" ||
    { loggErr "/etc/systemd/system does not exists. Is systemd installed?" && return 1; }

        ( builtin cd "$src_dir" && git pull; )
        group=$(id -gn)

        cp "$service_path" "$ZPWR_LOCAL"

        service_path="$ZPWR_LOCAL/$service.service"

        if ! test -f "$service_path"; then
            loggErr "$service_path does not exists"
            return 1
        fi


        perl -i -pe "s@pi@$USER@g" "$service_path"

        if [[ $UID != 0 ]]; then
            perl -i -pe "s@^Group=.*@Group=$group@g" "$service_path"
            perl -i -pe "s@/home/$USER/\\.zpwr/scripts@$ZPWR_SCRIPTS@g" "$service_path"
            perl -i -pe "s@/home/$USER/\\.zpwr@$ZPWR@g" "$service_path"
        else
            perl -i -pe "s@/home/root@/root@;" "$service_path"
            perl -i -pe "s@/root/\\.zpwr/scripts@$ZPWR_SCRIPTS@g" "$service_path"
            perl -i -pe "s@/root/\\.zpwr@$ZPWR@g" "$service_path"
        fi


        sudo cp "$service_path" /etc/systemd/system
        sudo systemctl daemon-reload
        sudo systemctl restart $service.service
        sudo systemctl --no-pager -l status $service.service
        sudo journalctl -f
    }

fi

function urlSafe(){

    cat | base64 | tr '+/=' '._-'
}

function cgh(){

    local user

    [[ -z "$1" ]] && user="$ZPWR_GITHUB_ACCOUNT" || user="$1"
    curl -s "https://github.com/$user" |
    command perl -ne 'do {print $_ =~ s/\s+/ /r;exit0} if /[0-9] contributions/'
}

function upload(){

    if [[ -z "$2" ]]; then
        loggErr "usage: upload <file> <URL>"
        return 1
    fi
    command curl -vvv -fsSL -F file=@"$1" http://"$2"
}

function jd(){

    if [[ -z "$1" ]]; then
        loggErr "usage: j <dir/dir>"
        return 1
    fi


    local dir

    for dir;do
        command mkdir -p "$dir"
    done
}

function j(){

    if [[ -z "$1" ]]; then
        loggErr "usage: j <dir/file>"
        return 1
    fi

    local file

    for file;do
        dirname="$(dirname $file)"
        [[ "$dirname" != . ]] && command mkdir -p "$dirname"
        touch "$file"
    done
}

function scnew(){

    if [[ -z "$1" ]]; then
        loggErr "usage: scnew <file>"
        return 1
    fi

    bash "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh" "$1"
}

function suc(){

    subl "$ZPWR_SCRIPTS"
    f "$ZPWR_SCRIPTS"
    python3 "$PYSCRIPTS/textEditorTwoColumns.py"
}

function allRemotes(){

    if ! isGitDir; then
        loggNotGit
        return 1
    fi

    while read; do
        printf "\x1b[1;34m$REPLY"
        printf "\x1b[0m\x0a"
        git remote show "$REPLY"
    done < <(git remote)
}

function about(){

    local old

    old="$LESS"
    unset LESS
    if [[ -f "$ZPWR_BANNER_SCRIPT" ]]; then
        bash "$ZPWR_BANNER_SCRIPT" | less -rFX
    fi
    export LESS="$old"
}

function animate(){

    bash "$ZPWR_SCRIPTS/animation"
}

function search(){

    test -z $2 && command grep -iRnC 5 "$1" * ||
        command grep -iRnC 5 "$1" "$2"
}

function cd(){

    # builtin is necessary here to distinguish
    # bt function name and builtin cd command
    # don't want to recursively call this function
    builtin cd "$@"
    if [[ $ZPWR_CD_AUTO_LS == true ]]; then
        clearList
    fi
}

function pstreemonitor(){

    bash $ZPWR_SCRIPTS/myWatchNoBlink.sh \
    "pstree -g 2 -u $USER | sed s@$USER@@ | sed s@/.*/@@ | tail -75"
}

function return2(){

    if isZsh; then
        exec 2> /dev/tty
    else
        loggErr "only for zsh"
        return 1
    fi
}

function color2(){

    if isZsh; then
        exec 2> >(redText.sh)
    else
        loggErr "only for zsh"
        return 1
    fi
}

exists gcl && {
    unalias gcl >/dev/null 2>&1
}

alias zpg=zpgh

function zpgh(){

    if test -z $1;then
        openmygh "$ZPWR_GITHUB_ACCOUNT/$ZPWR_REPO_NAME"
    else
        . zpwr.zsh "$@"
    fi
}

alias zp=zpwr
alias zpw=zpwr
alias zpwrgh=zpwr

function zpwr(){

    if test -z $1;then
        cd "$ZPWR"
    else
        . zpwr.zsh "$@"
    fi
}

function zpz(){

    local dirsc forked

    dirsc="$ZPWR"

    if [[ -d "$dirsc" ]]; then
        cd "$dirsc"
        gitCheckoutRebasePush
    else
        loggErr "$dirsc does not exist"
    fi
}

function zr(){

    local dirsc forked

    dirsc="$ZPWR_SCRIPTS"
    forked="$FORKED_DIR"

    if [[ -d "$dirsc" ]]; then
        cd "$dirsc"
    elif [[ -d "$forked" ]]; then
        cd "$forked"
    else
        loggErr "$dirsc and $forked do not exist"
    fi
}

function getrcdev(){

    getrc dev
}

function torip(){

    local ip

    ip=$(curl --socks5 127.0.0.1:9050 icanhazip.com)
    whois $ip
    echo $ip
}

function toriprenew() {

    printf 'AUTHENTICATE ""\r\nsignal NEWNYM\r\nQUIT' |
        nc 127.0.0.1 9051
}

function mycurl(){

    command curl -fsSL -A \
    "Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3" -v "$@" 2>&1 |
    command sed "/^*/d" | sed -E "s@(<|>) @@g" |
    sed -E "/^(\{|\}| ) (\[|C)/d"
}

exists pssh && function pir(){

    if ! test -s "$ZPWR_LOCAL/hosts.txt"; then
        loggErr "you need hosts.txt in your $ZPWR_LOCAL"
        return 1
    fi
    pssh --inline-stdout --timeout 90 -h "$ZPWR_LOCAL/hosts.txt" "$@"
}

function cCommon(){

    local colorizer rpm_cmd deb_cmd file
    colorizer=bat

    exists rpm && rpm_cmd="rpm -qi" || rpm_cmd="stat"
    exists dpkg && deb_cmd="dpkg -I" || deb_cmd="stat"

    if exists $colorizer;then
        if echo | $colorizer > /dev/null 2>&1; then
            for file in "$@";do
                if [[ -f "$file" ]]; then
                    if (( $# > 1)); then
                        printf "\x1b[34;1;4m$file\x1b[0m\n"
                    fi
                    if [[ -r "$file" ]]; then
                        bash fzfPreviewOptsCtrlT.sh |
                            sed "s@{}@$file@" | zsh
                    else
                    # preserve the PATH env var
                    # with /etc/sudoers having Defaults secure_path
                        bash fzfPreviewOptsCtrlT.sh |
                            sed "s@{}@$file@" |
                            sudo -E env "PATH=$PATH" zsh
                    fi
                fi
            done
        else
            cat -n "$@"
        fi
    else
        cat -n "$@"
    fi
}

function c(){

    if [[ -p /dev/stdin ]]; then
        cat > "$ZPWR_TEMPFILE"
        if [[ -p /dev/stdout ]];then
            cCommon "$ZPWR_TEMPFILE"
        else
            cCommon "$ZPWR_TEMPFILE" | less
        fi
    else
        if [[ -z "$1" ]]; then
            loggErr "usage: c <file...>"
            return 1
        fi

        if [[ -p /dev/stdout ]];then
            cCommon "$@"
        else
            cCommon "$@" | less
        fi
    fi
}

function agIntoFzf(){

    if test -z "$1";then
        command ag '^.*$' --nogroup --hidden --ignore .git --color 2>/dev/null |
        eval "$ZPWR_FZF $FZF_AG_OPTS" |
        cut -d ':' -f1 |
        perl -pe 's@^(.*)\n$@"'"$PWD/"'$1" @'

    else

        command ag '^.*$' --nogroup --hidden --ignore .git --color 2>/dev/null |
        eval "$ZPWR_FZF $FZF_AG_OPTS" |
        perl -pe 's@^(.*?):(\d+):(.*)@+$2 "'"$PWD/"'$1"@;s@\n@ @g'

    fi
}

function pygmentcolors(){

    local dir i
    dir="$(command python3 -m pip show pygments | command grep Location | awk '{print $2}')"
    for i in "$dir/pygments/styles/"* ; do
        echo "$i"
    done
}

function detachall(){

    tmux list-clients | tr -d : |
        perl -ane '`tmux detach-client -t $F[0]`'
}


function scripts(){

    (
        {
            gvim -S ~/.vim/sessions/gvim.vim > /dev/null 2>&1
            sleep 2
            open -a Terminal.app
        } >/dev/null 2>&1 &
    )
}

if [[ $ZPWR_LEARN != false ]]; then
    export ZPWR_SCHEMA_NAME=root
    export ZPWR_TABLE_NAME=LearningCollection
fi

function gitCheckoutRebasePush(){

    git branch -a | head -2 | perl -ane 'if ($F[0] eq "*"){$cur=$F[1]}else{$alt=$F[0]};if ($. == 2){$cmd="git checkout $alt; git rebase $cur;git push;";print "$cmd\n"; `$cmd`}'
}

function loginCount(){

    perl -e 'print `last -f "$_"`for</var/log/wtmp*>' |
        perl -lane 'print $F[0] if /\S+/ && !/wtmp/' |
        sort | uniq -c | sort -rn
}

function clearTemp(){

    {
        command rm -rf \
            "$ZPWR_TEMPFILE" \
            "$ZPWR_TEMPFILE1" \
            "$ZPWR_TEMPFILE2" \
            "$ZPWR_TEMPFILE3" \
            "$ZPWR_TEMPFILE4" \
            "$ZPWR_TEMPFILE_SQL" \
            "$ZPWR_TMUX_LOCAL"/pane* \
            "$ZPWR_HIDDEN_DIR_TEMP"/*
    } >> "$ZPWR_LOGFILE" 2>&1
}

function clearCache(){

    clearTemp
    {
        command rm -rf \
            "$ZPWR_LOGFILE" \
            "$ZPWR_VIM_KEYBINDINGS" \
            "$ZPWR_ALL_KEYBINDINGS" \
            "$ZPWR_ALL_GIT_DIRS" \
            "$ZPWR_ENV"*
    } >> "$ZPWR_LOGFILE" 2>&1
}

function regenGtagsCtags(){

    regenGtagsType ctags

}
function regenGtagsPygments(){

    regenGtagsType pygments
}

function regenCtags(){

    prettyPrint "Regen ctags to $ZPWR_SCRIPTS/tags and $HOME/tags"
    (
    builtin cd "$ZPWR_SCRIPTS"
    command rm tags 2>/dev/null
    ctags --language-force=sh --fields=+l "$HOME/.zshrc" "$ZPWR/".*.sh
    ctags --append --fields=+l "$ZPWR_SCRIPTS"/* "$ZPWR_SCRIPTS_MAC/"*
    command cp tags "$HOME"
    )

}

function regenAllKeybindingsCache(){

    prettyPrint "regen vim keybindings cache to to $ZPWR_VIM_KEYBINDINGS and all to $ZPWR_ALL_KEYBINDINGS"
    zsh "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh" |
    escapeRemover.pl |
    perl -ne 'print if /\S/' > "$ZPWR_VIM_KEYBINDINGS"

    isZsh && source "$ZPWR_SCRIPTS/keybindingsToFZF.zsh" |
        escapeRemover.pl |
        perl -ne 'print if /\S/' > "$ZPWR_ALL_KEYBINDINGS"
}

function searchGitCommon(){

    local out

    out="$(goThere)"
    echo "$out"
    eval "$out"
}

function regenConfigLinks(){

    prettyPrint "linking $ZPWR_INSTALL/.{zshrc,vimrc,tmux.conf} to $HOME"
    linkConf
}

function emacsEmacsConfig(){

    builtin cd $ZPWR
    ${=ZPWR_EMACS_CLIENT} \
    "$ZPWR_INSTALL/.spacemacs" \
    "$ZPWR_INSTALL/emacs/snippets/"*-mode/*
    clearList
    isGitDir && git diff HEAD
}

function vimEmacsConfig(){

    builtin cd $ZPWR
    vim \
    "$ZPWR_INSTALL/.spacemacs" \
    "$ZPWR_INSTALL/emacs/snippets/"*-mode/*
    clearList
    isGitDir && git diff HEAD
}

function emacsZpwr(){

    builtin cd $ZPWR
    ${=ZPWR_EMACS_CLIENT} .
    clearList
    isGitDir && git diff HEAD
}

function emacsScripts(){

    ${=ZPWR_EMACS_CLIENT} \
    "$ZPWR/"*.{sh,py,zsh,pl} \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/"*.{sh,py,zsh,pl} \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS_MAC/"*.{sh,py,zsh,pl}
}

function vimScripts(){

    vim \
    "$ZPWR/"*.{sh,py,zsh,pl} \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/"*.{sh,py,zsh,pl} \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS_MAC/"*.{sh,py,zsh,pl}
}

function parseRecentf(){

    if [[ ! -f $ZPWR_RECENTF ]]; then
        loggErr "$ZPWR_RECENTF does not exist"
        return 1
    fi

    tac "$ZPWR_RECENTF" | command perl -ne 'do {$_=~s@$ENV{HOME}@~@;$_=~s@[ ]+@@g; $_="> $_"; $_=~s@"@@g; print $_} if m{/}'
}

function catNvimOrVimInfo() {

    local file

    if [[ $ZPWR_USE_NEOVIM == true ]]; then
        file="$ZPWR_NVIMINFO"
        test -e "$file" || touch "$file"
        cat "$file"
    else
        file="$HOME/.viminfo"
        test -e "$file" || touch "$file"
        tac "$file"
    fi
}

function recentfThenNvim() {

    catNvimOrVimInfo
    if [[ -f $ZPWR_RECENTF ]]; then
        parseRecentf
    fi
}

function nvimThenRecentf() {

    if [[ -f $ZPWR_RECENTF ]]; then
        parseRecentf
    fi
    catNvimOrVimInfo
}

#}}}***********************************************************

#{{{                    MARK:Global Alias
#**************************************************************

if ! isZsh; then
    if test -f "$ZPWR_TOKEN_PRE"; then
        if ! source "$ZPWR_TOKEN_PRE"; then
            loggErr "could not source ZPWR_TOKEN_PRE '$ZPWR_TOKEN_PRE'"
        fi
    else
        touch "$ZPWR_TOKEN_PRE"
    fi

    if test -f "$ZPWR_TOKEN_POST"; then
        if ! source "$ZPWR_TOKEN_POST"; then
            loggErr "could not source ZPWR_TOKEN_POST '$ZPWR_TOKEN_POST'"
        fi
    else
        touch "$ZPWR_TOKEN_POST"
    fi
fi

return 0
#}}}***********************************************************
