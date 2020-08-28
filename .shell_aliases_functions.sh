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
        exists nvim && {
            alias v='nvim'
            alias vi='nvim'
            alias vv='nvim'
            alias vim='nvim'
            alias vm="nvim -u $ZPWR/.mininit.vim"
            alias sv='sudo -E nvim'
        }
    else
        exists vim && {
            alias v=vim
            alias vi=vim
            alias vv=vim
            alias vm="vim -u $ZPWR/.minvimrc"
            alias sv='sudo -E vim'
        }
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

#{{{                          MARK:ALIASES
#**********************************************************************
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
#**********************************************************************

#                           MARK:PYTHON ZPWR_SCRIPTS
#**********************************************************************
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
#**********************************************************************
#                           MARK:aliases for ZPWR_SCRIPTS
#**********************************************************************
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
#**********************************************************************
#                           MARK:REMOTE SHELLS ZPWR_SCRIPTS
#**********************************************************************
exists tput && {
    bold=$(tput bold || tput md)
    red=$(tput setaf 1)
}

exists idea && {
    alias ic="idea create"
    alias il="idea list"
}
#**************************************************************
#}}}

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

function emm() {

    local str endstr
    tmux selectp -t emacs:0.0
    tmux send-keys -t emacs:0.0 C-c Escape

    for arg in "$@"; do
        if [[ ${arg:0:1} == "/" ]]; then
            str="$arg"
        elif [[ ${arg:0:1} == "~" ]]; then
            str="$arg"
        else
            str="$PWD/$1"
        fi
        endstr="$endstr $str"
    done

    if [[ -n "$endstr" ]]; then
        printf "$endstr" | $ZPWR_COPY_CMD
        sleep 0.3
        logg tmux send-keys -t emacs:0.0 ":e $endstr" ENTER
        tmux send-keys -t emacs:0.0 ":e $endstr" ENTER
    fi

    tmux attach-session -t emacs
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

        if [[ $UID != 0 ]]; then
            perl -i -pe "s@pi@$USER@g" "$service_path"
            perl -i -pe "s@^Group=.*@Group=$group@g" "$service_path"
        else
            perl -i -pe "s@pi@$USER@g;s@/home/root@/root@;" "$service_path"
        fi
        sudo cp "$service_path" /etc/systemd/system
        sudo systemctl daemon-reload
        sudo systemctl restart $service.service
        sudo systemctl --no-pager -l status $service.service
        sudo journalctl -f
    }

fi

function cloneToForked(){

    local branch

    branch=master
    (
        if [[ -z "$1" ]]; then
            builtin cd "$FORKED_DIR" || return 1
        else
            builtin cd "$@" || return 1
        fi
        git clone -b "$branch" \
            "https://github.com/$ZPWR_GITHUB_ACCOUNT/$ZPWR_REPO_NAME.git"
    )
}

function s(){

    exists isZsh || {
        source "$ZPWR_SCRIPTS/lib.sh" || {
            echo "where is $ZPWR_SCRIPTS/lib.sh" >&2
            return 1
        } && loggErr 'forced to load lib.sh due to missing isZsh'
    }

    local cmd sec_cmd out url

    if exists subl; then
        cmd=subl
    else
        cmd="$ZPWR_OPEN_CMD"
    fi

    if type -a s | command grep -sqv function; then
        sec_cmd=s
    else
        sec_cmd="$ZPWR_OPEN_CMD"
    fi
    if isZsh; then
        if [[ $sec_cmd == s ]]; then
            {
                test -z "$1" && ${=cmd} . || command s "$@"
            }
        else
            {
            out="$(echo "$@" | python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            url="https://google.com/search?q=$out"
                ${=sec_cmd} $url
            }
        fi
    else
        if [[ $sec_cmd == s ]]; then
            test -z "$1" && $cmd . || command s "$@"
        else
            out="$(echo "$@" | python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            url="https://google.com/search?q=$out"
            $sec_cmd $url
        fi
    fi
}

function xx(){

    if [[ -z "$1" ]]; then
        loggErr "usage: xx <cmd>"
        return 1
    fi

    local counter cmd DONE iter

    cmd="$1"
    test -z "$2" && counter=100 || counter="$2"

    trap 'DONE=true' QUIT
    DONE=false
    for iter in {1..$counter} ; do
       [[ $DONE == true ]] && break || eval "$cmd"
    done

    trap QUIT
}

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

function p(){

    local cmd out

    if [[ "$ZPWR_OS_TYPE" == linux || "$ZPWR_OS_TYPE" == darwin ]]; then
        [[ -z $1 ]] && ps -ef && return 0
        out="$(ps -ef)"
    else
        [[ -z $1 ]] && ps aux && return 0
        out="$(ps aux)"
    fi

    for cmd; do
        prettyPrint "SEARCH TERM: $cmd"
        echo "$out" |
            command grep --color=always -a -i -F -- "$cmd" ||
            echo "Nothing found for $cmd."
        echo
    done
}

function b(){

    if [[ -z "$1" ]]; then
        loggErr "usage: b <cmds> or b -s <sleeptime> <cmds>"
        return 1
    fi

    local cmd sleepTime

    if [[ $1 == -s ]]; then
        sleepTime=$2
        shift 2
    fi

    for cmd; do
        test -z $sleepTime && {
            ( eval "$cmd" & )
            p $(echo "$cmd" | awk '{print $1}')
        } || {
            ( eval "sleep $sleepTime && $cmd" & )
            p $(echo "$cmd" | awk '{print $1}')
        }
    done
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

function largestGitFiles(){

    if ! isGitDir; then
        loggNotGit
        return 1
    fi

    local page obj filename size

    if [[ -z $1 ]]; then
       page=50
   else
       page=$1
    fi

    prettyPrint "Top $page Largest Git Objects"

    obj=$(git rev-list --all --objects)
    while read -r sha type size; do
        filename=$(echo $obj | command grep $sha)
        size=$(printf $size | humanReadable)
        printf "%-70s %10s\n" $filename $size
    done < <(echo $obj | awk '{print $1}' | git cat-file --batch-check | sort -k3nr | head -n $page)
}

function clearGitCommit(){

    if ! isGitDir; then
        loggNotGit
        return 1
    fi

    if [[ -z "$1" ]]; then
        loggErr "usage: clearGitCommit <regex>"
        return 1
    fi

    local regex

    regex="^$1\$"

    prettyPrint "Removing all commits with /$regex/"

    git filter-branch --commit-filter '
    if [ `git rev-list --all --grep "'"$regex"'" | grep -c "$GIT_COMMIT"` -gt 0 ]
    then
        skip_commit "$@";
    else
        git commit-tree "$@";
    fi'  HEAD
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

function blocksToSize(){

    local bytes input

    read input
    bytes=$(( input * 512 ))
    echo $bytes | humanreadable
}

function humanReadable(){

    awk 'function human(x) {
        s=" B   KiB MiB GiB TiB PiB EiB ZiB YiB"
        while (x>=1024 && length(s)>1){
            x/=1024; s=substr(s,5)
        }
        s=substr(s,1,4)
        xf=(s==" B  ") ? "%d" : "%.2f"
        return sprintf(xf"%s", x, s)
    }
    {gsub(/^[0-9]+/, human($1));print}'
}

function f(){

    local base dir

    if [[ -z "$1" ]]; then
        cd -
        return 0
    elif [[ -f "$1" ]]; then
        cd "$(dirname "$1")"
    elif [[ -d "$1" ]];then
        cd "$1"
    else
        #cd -1
        echo "$1" | command grep -E '\-[0-9]+' && cd "$1" && return 0

        #cd to first partial name match
        if isZsh;then
            eval 'for dir in (#i)'"$1"'*(N/);do
                cd "$dir"
                return
            done'
        fi

        base="$(dirname "$1")"

        if [[ $base == "." ]]; then
            loggErr "'$1': Not a valid file or directory."
            return 1
        fi

        #find next dir to root
        while [[ "$base" != / ]]; do
            test -d "$base" && cd "$base"&& return 0
            base="$(dirname "$base")"
        done
        loggErr "'$1': Not a valid file or directory."
        return 1
    fi
}

function execpy(){

    if [[ -z "$1" ]]; then
        loggErr "usage: execpy <file>"
        return 1
    fi

    local script

    script="$1"
    shift

    if [[ ! -f "$PYSCRIPTS/$script" ]]; then
        loggErr "$PYSCRIPTS/$script does not exist!"
        return 1
    fi
    python3 "$PYSCRIPTS/$script" "$@"

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

function contribCountDirs(){

    if [[ -z "$2" ]]; then
       loggErr "usage: contribCountDirs <user regex> <dirs...>"
       return 1
    fi

    local dirOfDirs user curDir sum dir lineCount

    user="$1"
    shift
    curDir="$(pwd)"
    sum=0

    printf "" > "$ZPWR_TEMPFILE1"

    for dir in "$@"; do
        if [[ -d "$dir" ]]; then
            (
            builtin cd "$dir"
            isGitDir || continue

            lineCount="$(git log --pretty="%an" | grep -E "$user" | wc -l)"
            prettyPrint "Contribution Count for $user at $dir is $lineCount"
            echo $lineCount >> "$ZPWR_TEMPFILE1"
        )
        fi
    done

    while read; do
       ((sum += $REPLY))
    done < "$ZPWR_TEMPFILE1"
    echo "Total contributions for ${ZPWR_DELIMITER_CHAR}$user${ZPWR_DELIMITER_CHAR} is ${ZPWR_DELIMITER_CHAR}$sum${ZPWR_DELIMITER_CHAR}." | alternatingPrettyPrint

}

function contribCount(){

    if ! isGitDir; then
       loggNotGit
       return 1
    fi

    local lines lineCount

    lines="$(git log --pretty="%an" | sort | uniq -c | sort -rn)"
    lineCount="$(echo $lines | wc -l)"
    prettyPrint "Contribution Count"
    if (( $lineCount > 10 )); then
        echo "$lines" | perl -pane 's@(\d) (\D)(.*)$@\1'" $ZPWR_DELIMITER_CHAR"'\2\3'"$ZPWR_DELIMITER_CHAR@" |
            alternatingPrettyPrint | less -r
    else
        echo "$lines" | perl -pane 's@(\d) (\D)(.*)$@\1'" $ZPWR_DELIMITER_CHAR"'\2\3'"$ZPWR_DELIMITER_CHAR@" |
            alternatingPrettyPrint
    fi
}

function totalLines(){

    if ! isGitDir; then
       loggNotGit
       return 1
    fi

    local filter lineCount

    prettyPrint "starting total line count..."
    {

    while read; do
        isBinary "$REPLY" && continue
        filter=false
        for arg in "$@"; do
           if echo "$REPLY" | command grep -sq "$arg"; then
               filter=true
               break
           fi
        done

        if [[ $filter = false ]]; then
            cat "$REPLY"
        fi
    done < <(git ls-files) 2>/dev/null

    } > "$ZPWR_TEMPFILE"

    if ! test -f "$ZPWR_TEMPFILE"; then
        printf "\x1b[0;1;31m"
        loggErr "where is $ZPWR_TEMPFILE" 
        printf "\x1b[0m"
        return 1
    fi

    prettyPrint "Total Line Count"
    lineCount="$(cat "$ZPWR_TEMPFILE" | wc -l)"
    if (( $lineCount > 10 )); then
        echo "$lineCount" |
            perl -panE 's@(\d) (\D)(.*)$@\1'" $ZPWR_DELIMITER_CHAR"'\2\3'"$ZPWR_DELIMITER_CHAR@" |
            alternatingPrettyPrint | less -r
    else
        echo "$lineCount" |
            perl -panE 's@(\d) (\D)(.*)$@\1'" $ZPWR_DELIMITER_CHAR"'\2\3'"$ZPWR_DELIMITER_CHAR@" |
            alternatingPrettyPrint
    fi
    command rm "$ZPWR_TEMPFILE"
}

function contribCountLines(){

    if ! isGitDir; then
       loggNotGit
       return 1
    fi

    local filter lineCount

    prettyPrint "starting line contrib count..."
    {

    while read; do
        isBinary "$REPLY" && continue
        filter=false
        for arg in "$@"; do
           if echo "$REPLY" | command grep -q "$arg"; then
               filter=true
               break
           fi
       done
        if [[ $filter = false ]]; then
            git blame "$REPLY" | perl -lne 'do{($_=$1)=~s@^\s+|\s+$@@g; $_=~s@\s+@ @g;print} if m{^[0-9a-f^]+\s\((.*)\s\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}\s.*\d\)\s.*$}'
        fi
    done < <(git ls-files) 2>/dev/null

    } > "$ZPWR_TEMPFILE"

    if ! test -f "$ZPWR_TEMPFILE"; then
        printf "\x1b[0;1;31m"
        loggErr "where is $ZPWR_TEMPFILE"
        printf "\x1b[0m"
        return 1
    fi

    prettyPrint "Line Contribution Count"
    lineCount="$(cat "$ZPWR_TEMPFILE" | wc -l)"
    if (( $lineCount > 10 )); then
        cat "$ZPWR_TEMPFILE" | sort | uniq -c | sort -r |
        perl -pane 's@(\d) (\D)(.*)$@\1'" $ZPWR_DELIMITER_CHAR"'\2\3'"$ZPWR_DELIMITER_CHAR@" |
            alternatingPrettyPrint | less -r
    else
        cat "$ZPWR_TEMPFILE" | sort | uniq -c | sort -r |
        perl -pane 's@(\d) (\D)(.*)$@\1'" $ZPWR_DELIMITER_CHAR"'\2\3'"$ZPWR_DELIMITER_CHAR@" |
            alternatingPrettyPrint
    fi
    command rm "$ZPWR_TEMPFILE"

}

function gsdc(){

    if ! isGitDir; then
       loggNotGit
       return 1
    fi

    local currentDir dir

    currentDir="$(pwd -P)"

    for dir in "${BLACKLISTED_DIRECTORIES[@]}" ; do
        if [[ "$currentDir" == "$dir" ]]; then
            printf "\x1b[0;1;31m"
            print -sr "$BUFFER"
            loggErr "BLACKLISTED: $(pwd -P)"
            printf "\x1b[0m"
            return 1
        fi
    done

	git status | command grep -sq "nothing to commit" && {
        printf "\x1b[0;1;31m"
        loggErr "Nothing has changed."
        echo
        BUFFER=""
        printf "\x1b[0m"
        return 0
	}

	gitSdiffColorizer.pl | less -r

    printf "\x1b[0m"

    if [[ -z "$1" ]]; then
        return 0
    else
        printf "\x1b[4;34m>>>>>> Push? \x1b[0m"
        if isZsh; then
            read -k 1
        else
            read -n 1
        fi
        if [[ "$REPLY" == 'y' ]]; then
            return 0
        else
            return 1
        fi
    fi

}

function replacer(){

    if [[ -z "$2" ]]; then
        loggErr "usage: replacer <original> <replacement>"
        return 1
    fi

    local orig replace

    orig="$1"
    replace="$2"
    shift 2
    if test -n "$3"; then
        for file in "$@" ; do
            sed -i'' "s@$orig@$replace@g" "$file"
        done
    else
        cat | sed "s@$orig@$replace@g"
    fi
}

function creategif(){

    if [[ -z "$1" ]]; then
        loggErr "usage: creategif <file>"
        return 1
    fi

    local res outFile

    outFile=out.gif
    res=600x400

    test -n "$2" && res="$2"

    test -n "$3" && outFile="$3"

    ffmpeg -i "$1" -s "$res" -pix_fmt rgb24 -r 10 -f gif - |
    gifsicle --optimize=3 --delay=3 > "$outFile"
}

function hc(){

    local reponame old_dir

    test -z "$1" && reponame="$(basename "$(pwd)")" ||
        reponame="$1"
    printf "\e[1m"
    old_dir="$(pwd)"
    test -n "$1" && cd "$reponame"

    git init
    hub create "$reponame"
    echo "# $reponame" > README.md
    echo "# created by $ZPWR_GITHUB_ACCOUNT" >> README.md
    git add .
    git commit -m "first commit"
    git push --set-upstream origin master
    test -n "$1" && cd "$old_dir"
    printf "\e[0m"
}

function hd(){

    local repo user line out

    test -n "$1" && repo="$1" && user="$ZPWR_GITHUB_ACCOUNT" || {
		if line="$(git remote -v 2>/dev/null | sed 1q)";then
            if echo "$line" | command grep -sq 'git@';then
                #ssh
                user="$(echo $line | awk -F':' '{print $2}' |
                    awk -F'/' '{print $1}')"
                repo="$(echo $line | awk -F'/' '{print $2}' |
                    awk '{print $1}')"
            else
                #http
                user="$(echo $line | awk -F'/' '{print $4}')"
                repo="$(echo $line | awk -F'/' '{print $5}' |
                    awk '{print $1}')"
            fi
        fi
	}

    user="$(echo "$user" | tr 'A-Z' 'a-z')"

    test -z "$repo" && loggErr "bad repo $repo" && return 1
    test -z "$user" && loggErr "bad user $user" && return 1

    out="$(curl -u "$user" -X DELETE "https://api.github.com/repos/$user/$repo")"

    printf "\e[1m"

    if [[ -z "$out" ]];then
        echo "Successful deletion of $repo"
    else
        echo "Error in deletion of $repo"
        echo "$out"
    fi
    printf "\e[0m"
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

function escapeRemove(){

    while read; do
        echo "$REPLY" | sed -e 's@\e\[.\{1,5\}m@@g'
    done
}

function prettyPrintNoNewline(){

    if [[ -z "$1" ]]; then
        loggErr "usage: prettyPrintNoNewline <string>"
        return 1
    fi


    printf "\x1b[1m"
    printf "%s " "$@"
    printf "\x1b[0m"
}

function tac(){

    sed '1!G;h;$!d' "$@"
}

function backup(){

    if [[ -z "$1" ]]; then
        loggErr "usage: backup <file>"
        return 1
    fi

    local newfile

    newfile="$1".$(date +%Y%m%d.%H.%M.bak)
    mv "$1" "$newfile"
    cp -pR "$newfile" "$1"
    printf \
        "\e[4;1m$1\e[0m backed up to \e[4;1m$newfile\e[0m\n"
}

exists gcl && {
    unalias gcl >/dev/null 2>&1
}

function gcl() {

    if [[ -z "$1" ]]; then
        loggErr "usage: gcl <repo>"
        return 1
    fi

    local git_name dir_name last_arg

    last_arg=${@: -1}
    git_name="${last_arg##*/}"
    dir_name=${git_name%.*}
    git clone -v --progress --recursive "$@"
    if [[ -d "$dir_name" ]]; then
        cd "$dir_name"
    else
        loggErr "$dir_name failed to clone"
        return 1
    fi
}

function ino(){

    if [[ -z "$1" ]]; then
        loggErr "usage: ino <dir>"
        return 1
    fi

    local dir

    dir="$1"
    command mkdir "$dir" && cd "$dir" &&
        platformio init --ide clion --board uno
    {
        cat <<\EOF
#include <Arduino.h>

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
}
EOF
    } > src/main.cpp

    {
        cat <<\EOF
#!/usr/bin/env bash

[[ -n "$1" ]] && cd "$1"

command ps -ef | command grep platformio | command grep -v grep > /dev/null && {

    figletRandomFontOnce.sh "GO GO GO !!!" | cowsay -f eyes -W 150

   command ps -ef | command grep platformio | command grep -v grep | awk '{print $2}' | xargs kill
}

platformio run -t upload && platformio device monitor
EOF
    } > Runner.sh

    chmod +x Runner.sh
    {
        cat <<\EOF
add_custom_target(
        PLATFORMIO_JAKE ALL
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
EOF
    } >> CMakeLists.txt

    clion .

    jetbrainsWorkspaceEdit "$dir"

}

function jetbrainsWorkspaceEdit(){

    perl -E 'say "_"x100'
    prettyPrint "MONITORING WORKSPACE..."
    perl -E 'say "_"x100'
    while true; do
        if command grep -q '<component name="RunManager" selected=' \
            .idea/workspace.xml; then
            perl -E 'say "_"x100' | lolcat
            figletRandomFontOnce.sh "MATCH ENJOY>>>>" \
            | ponysay -W 120
            perl -E 'say "_"x100' | lolcat
            sed 's@<component name="RunManager" selected=.*@<component name="RunManager" selected="Application.PLATFORMIO_JAKE"><configuration name="PLATFORMIO_JAKE" type="CMakeRunConfiguration" factoryName="Application" CONFIG_NAME="Debug" TARGET_NAME="PLATFORMIO_JAKE" PASS_PARENT_ENVS_2="true" PROJECT_NAME="'$1'" RUN_PATH="$PROJECT_DIR$/Runner.sh"><envs /><method> <option name="com.jetbrains.cidr.execution.CidrBuildBeforeRunTaskProvider$BuildBeforeRunTask" enabled="false" /></method></configuration>@' .idea/workspace.xml > x.xml && mv x.xml .idea/workspace.xml && return 0

        else
            loggErr "No Match Yet" 
            sleep 1
        fi
    done
}

function o(){

    local open_cmd

    open_cmd="$ZPWR_OPEN_CMD" || return 1

    if isZsh; then
        if [[ -z "$1" ]]; then
            ${=open_cmd} . >> "$ZPWR_LOGFILE" 2>&1
        else
            ${=open_cmd} "$@" >> "$ZPWR_LOGFILE" 2>&1
        fi
    else
        if [[ -z "$1" ]]; then
            $open_cmd . > /dev/null 2>&1
        else
            $open_cmd "$@" >/dev/null 2>&1
        fi
    fi

}

function openmygh(){

    local open_cmd

    open_cmd="$ZPWR_OPEN_CMD" || return 1

    if isZsh; then
        if [[ -n "$1" ]]; then
            ${=open_cmd} "https://github.com/$1" >> "$ZPWR_LOGFILE" 2>&1
        else
            ${=open_cmd} "https://github.com/$ZPWR_GITHUB_ACCOUNT" >> "$ZPWR_LOGFILE" 2>&1
        fi
    else
        if [[ -n "$1" ]]; then
            ${open_cmd} "https://github.com/$1" > /dev/null 2>&1
        else
            ${open_cmd} "https://github.com/$ZPWR_GITHUB_ACCOUNT" > /dev/null 2>&1
        fi
    fi

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

function goInstallerDir(){

    local ret

    ret=0

    builtin cd "$ZPWR_INSTALL" || ret=1

    if [[ "$(pwd)" != "$ZPWR_INSTALL" ]]; then
        echo "pwd $PWD is not $ZPWR_INSTALL"
    fi

    if (( ret == 1 )); then
        echo "where is $ZPWR_INSTALL" >&2
        exit 1
    fi
}

# link over latest configuration files from $ZPWR_REPO_NAME
function unlinkConf(){
    (

    local symFiles file snipDir

    symFiles=(.tmux.conf .ideavimrc .vimrc grc.zsh conf.gls conf.df conf.ifconfig conf.mount conf.whois .iftopcolors .inputrc .zshrc .spacemacs .globalrc .ctags)

    for file in ${symFiles[@]} ; do
        if [[ -f "$HOME/$file" ]]; then
            if [[ -h "$HOME/$file" ]]; then
                prettyPrint "REMOVING $HOME/$file"
                goInstallerDir
                echo rm -f $HOME/$file
                rm -f -- $HOME/$file
            else
                prettyPrint "not REMOVING $HOME/$file because not symlink"
            fi
        fi
    done
    rm -rf "$HOME/.vim/UltiSnips"

    snipDir="$HOME/.emacs.d/private/snippets/zpwr-snippets"

    if [[ -d "$snipDir" ]]; then
       rm -rf "$snipDir"
    fi

    )
}


# link over latest configuration files from $ZPWR_REPO_NAME
function linkConf(){

    (
    if [[ ! -f "$HOME/.ctags" ]]; then
        prettyPrint "Linking .ctags to home directory"
        goInstallerDir
        ln -sf $ZPWR_INSTALL/.ctags "$HOME/.ctags"
    fi

    local symFiles file snipDir

    symFiles=(.tmux.conf .ideavimrc .vimrc grc.zsh conf.gls conf.df conf.ifconfig conf.mount conf.whois .iftopcolors .inputrc .zshrc .spacemacs .globalrc)

    for file in ${symFiles[@]} ; do
        prettyPrint "Installing $file to $HOME"
        goInstallerDir
        echo ln -sf $ZPWR_INSTALL/$file "$HOME/$file"
        ln -sf $ZPWR_INSTALL/$file "$HOME/$file"
    done

    prettyPrint "Installing UltiSnips to $HOME/.vim/UltiSnips"
    echo ln -sfn $ZPWR_INSTALL/UltiSnips "$HOME/.vim/UltiSnips"
    ln -sfn $ZPWR_INSTALL/UltiSnips "$HOME/.vim/UltiSnips"
    snipDir="$HOME/.emacs.d/private/snippets"

    if [[ -d "$snipDir" ]]; then
        prettyPrint "Installing yasnippets to $snipDir"
        command rm -rf "$snipDir/zpwr-snippets" 2>/dev/null
        echo ln -sfn $ZPWR_INSTALL/emacs/snippets "$snipDir/zpwr-snippets"
        ln -sfn $ZPWR_INSTALL/emacs/snippets "$snipDir/zpwr-snippets"
    fi
    )
}

# pull down latest configuration files from $ZPWR_REPO_NAME
function getrc(){

    local dir branch completionDir

    if [[ -z "$1" ]]; then
        branch=master
    else
        branch="$1"
    fi

    if [[ $ZPWR_OS_TYPE == darwin ]]; then
        if exists dialog;then
            dialog --inputbox "Are you sure that you want to overwrite your .zshrc,.vimrc,.tmux.conf, .shell_aliases_functions.sh?(y/n) >>> " 12 40 2> "$ZPWR_TEMPFILE"
            clear
            REPLY="$(cat "$ZPWR_TEMPFILE")"
            command rm "$ZPWR_TEMPFILE"
        else
            printf "Are you sure that you want to overwrite your .zshrc,.vimrc,.tmux.conf, .shell_aliases_functions.sh?(y/n) >>> "
            read
        fi

        if [[ $REPLY != "y" ]]; then
            clearList
            return 0
        fi
    fi

    if [[ -d "$ZPWR" ]]; then
        builtin cd "$ZPWR"
        logg $(git pull 2>&1)
    fi

    builtin cd "$ZPWR"
    bash "$ZPWR_BANNER_SCRIPT"
    linkConf

    completionDir="$HOME/.oh-my-zsh/custom/plugins"
    for dir in "$completionDir/"*;do
        printf "$dir: "
        test -d "$dir" && ( builtin cd "$dir" && git pull; )
    done

    test -n "$TERM" && exec "$SHELL"

}

function getrcdev(){

    getrc dev
}

function rename(){

    if [[ -z "$2" ]]; then
        loggErr "usage: rename <search> <file...>"
        return 1
    fi

    local search out

    search="$1"
    shift
    for file in "$@"; do
        test -d "$file" && continue
        out=$(echo "$file" | sed -n "$search"p |  wc -l | tr -d ' ')
        if (( $out != 0 )); then
            #statements
            mv "$file" "$(echo "$file" | sed -E "$search")"
        fi
    done
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

function perlremovespaces(){

    if [[ -z "$1" ]]; then
        loggErr "usage: perlremovespaces <file...>"
        return 1
    fi

    local file

    for file;do
        printf "\x1b[38;5;129mRemoving from \x1b[38;5;57m${file}\x1b[38;5;46m"'!'"\n\x1b[0m"
        perl -pi -e 's@\s+$@\n@g; s@\x09$@    @g;s@\x20@ @g; s@^s*\n$@@; s@(\S)[\x20]{2,}@$1\x20@' "$file"
    done
}

function pirun(){

    trap 'DONE=true' QUIT

    local DONE picounter pi

    DONE=false
    picounter=1

    for pi in "${PI_ARRAY[@]}" ; do
        [[ $DONE == true ]] && return 1
        alternatingPrettyPrint \
        "Executing $ZPWR_DELIMITER_CHAR'$1'$ZPWR_DELIMITER_CHAR on $ZPWR_DELIMITER_CHAR$pi$ZPWR_DELIMITER_CHAR"
        if [[ -z $2 ]]; then
            ssh "${pi%:*}" "$1" 2>/dev/null
        else
            ssh "${pi%:*}" "$1" 2>/dev/null
            if (( picounter == $2 )); then
                return
            fi
        fi
        ((++picounter))
    done
    trap QUIT
}

function digs(){

    if [[ -z "$1" ]]; then
        loggErr "usage: digs <url...>"
        return 1
    fi

    local OPTIND opt exe secret url noport noproto ip primary colo

    while getopts "s" opt 2>/dev/null;do
        case $opt in
            s) secret=true;;
            *) loggErr "bad opt"; return 1
        esac
    done
    shift $(($OPTIND-1))

    exists grc && colo=grc || {
        colo=
        echo "No grc colorizer no defaulting to no colors"
    }

    if [[ -n $colo ]] && [[ ! -f "$HOME/conf.whois" ]]; then
        loggErr "cannot proceed without $HOME/conf.whois for grc"
        return 1
    fi

    if [[ -n "$secret" ]]; then
        exists proxychains && exe=proxychains
        exists proxychains4 && {
           isZsh &&
                exe=(proxychains4 -q) ||
                exe="proxychains4 -q"
        }

        if [[ -z "$exe" ]]; then
            loggErr "cannot proceed without proxychains" return 1
        fi


        if exists dig;then
            for url in "$@"; do
                noport="$(echo "$url" | sed -E 's@(.*\.[^/]+)(/.*)$@\1@' | sed -E 's@:[0-9]{1,4}$@@')"
                exec 2>&1
                prettyPrint "DIG: $noport"
                if [[ -n "$colo" ]]; then
                    $exe dig +trace "$noport" | grcat conf.dig
                else
                    $exe dig +trace "$noport"
                fi

                noproto="$(echo "$noport" | sed -E 's@https://|http://@@')"
                prettyPrint "HOST: $noproto"
                out="$($exe host "$noproto")"
                if exists lolcat; then
                    echo "$out" | lolcat
                else
                    echo "$out"
                fi
                echo
                if echo "$out" | command grep -sq 'address';then
                    #regular domain name
                    ip="$(echo "$out" | command grep 'address' | head -n 1 | awk '{print $4}')"
                    if [[ ${noproto: -1} == "." ]]; then
                        noproto="${noproto:0:-1}"
                    fi
                    prettyPrint "DIG: $ip"
                    if [[ -n "$colo" ]]; then
                        $exe dig -x "$ip" | grcat conf.dig
                    else
                        $exe dig -x "$ip"
                    fi

                    primary="$(echo "$noproto" | sed -E 's@^(.*)\.([^.]+)\.([^.]+)$@\2.\3@')"
                    out="$($exe whois "$primary")"
                    if echo "$out" | command grep -sq 'No match';then
                        prettyPrint "WHOIS: $ip"
                        if [[ -n "$colo" ]]; then
                            $exe whois "$ip" | grcat "$HOME/conf.whois"
                        else
                            $exe whois "$ip"
                        fi
                    else
                        prettyPrint "WHOIS: $primary"
                        if [[ -n "$colo" ]]; then
                            echo "$out" | grcat "$HOME/conf.whois"
                            echo
                            prettyPrint "WHOIS: $ip"
                            $exe whois "$ip" | grcat  "$HOME/conf.whois"
                        else
                            echo "$out"
                            echo
                            prettyPrint "WHOIS: $ip"
                            $exe whois "$ip"
                        fi
                    fi
                else
                    out="$($exe whois "$noproto")"
                    if echo "$out" | command grep -sq 'No match';then
                        prettyPrint "WHOIS: $ip"
                        if [[ -n "$colo" ]]; then
                            $exe whois "$ip" | grcat "$HOME/conf.whois"
                        else
                            $exe whois "$ip"
                        fi
                    else
                        prettyPrint "WHOIS: $noproto"

                        if [[ -n "$colo" ]]; then
                            echo "$out" | grcat "$HOME/conf.whois"
                            prettyPrint "WHOIS: $ip"
                            $exe whois "$ip" | grcat "$HOME/conf.whois"
                        else
                            echo "$out"
                            prettyPrint "WHOIS: $ip"
                            $exe whois "$ip"
                        fi
                    fi
                fi
                if exists http; then
                    prettyPrint "HTTPIE: $url"
                    torify http -v --follow --pretty=all "$url"
                else
                    prettyPrint "CURL: $url"
                    $exe curl -vvv -k -fsSL "$url"
                fi
                    echo
                    echo
                    prettyPrint "TRACEROUTE: $noproto"
                    if [[ -n "$colo" ]]; then
                        $exe traceroute "$noproto" | grcat conf.traceroute
                    else
                        $exe traceroute "$noproto"
                    fi
                exec 2>/dev/tty
            done | less -MN
        else
            loggErr "you need dig"
        fi
    else

        isZsh && colo=(grc --colour=on) || colo="grc --colour=on "

        if exists dig; then
            for url in "$@"; do
                noport="$(echo "$url" | sed -E 's@(.*\.[^/]+)(/.*)$@\1@' | sed -E 's@:[0-9]{1,4}$@@')"
                exec 2>&1
                prettyPrint "DIG: $noport"
                $colo $exe dig +trace "$noport"
                noproto="$(echo "$noport" | sed -E 's@https://|http://@@')"
                prettyPrint "HOST: $noproto"
                out="$($colo $exe host "$noproto")"
                if exists lolcat; then
                    echo "$out" | lolcat
                else
                    echo "$out"
                fi
                echo
                echo
                if echo "$out" | command grep -sq 'address';then
                    #regular domain name
                    ip="$(echo "$out" | command grep 'address' | head -n 1 | awk '{print $4}')"
                    if [[ ${noproto: -1} == "." ]]; then
                        noproto="${noproto:0:-1}"
                    fi
                    prettyPrint "DIG: $ip"
                    $colo $exe dig -x "$ip"
                    primary="$(echo "$noproto" | sed -E 's@^(.*)\.([^.]+)\.([^.]+)$@\2.\3@')"
                    out="$($exe whois "$primary")"
                    if echo "$out" | command grep -sq 'No match';then
                        prettyPrint "WHOIS: $ip"
                        $colo -c "$HOME/conf.whois" $exe whois "$ip"
                    else
                        prettyPrint "WHOIS: $primary"
                        echo "$out" | grcat "$HOME/conf.whois"
                        prettyPrint "WHOIS: $ip"
                        $colo -c "$HOME/conf.whois" $exe whois "$ip"
                    fi
                else
                    out="$($colo $exe whois "$noproto")"
                    if echo "$out" | command grep -sq 'No match'; then
                        prettyPrint "WHOIS: $ip"
                        $colo -c "$HOME/conf.whois" $exe whois "$ip"
                    else
                        prettyPrint "WHOIS: $noproto"
                        echo "$out" | grcat  "$HOME/conf.whois"
                        prettyPrint "WHOIS: $ip"
                        $colo -c "$HOME/conf.whois" $exe whois "$ip"
                    fi
                fi
                if exists http; then
                    prettyPrint "HTTPIE: $url"
                    $exe http -v --follow --pretty=all "$url"
                else
                    prettyPrint "CURL: $url"
                    $colo $exe curl -vvv -k -fsSL "$url"
                fi
                    echo
                    echo
                    prettyPrint "TRACEROUTE: $noproto"
                    $colo $exe traceroute "$noproto"
                exec 2>/dev/tty
            done | less -MN
        else
            loggErr "you need dig"
        fi
    fi
}

function to(){

    local file
    file="$HOME/.config/powerline/themes/tmux/default.json"

    [[ ! -f "$file" ]] && loggErr "no tmux config" && return 1
    if cat "$file" | grep -sq "external_ip"; then
        perl -i -pe 's@^.*external_ip.*$@@' "$file"
        printf "Removing External IP\n"
    else
        perl -0 -i -pe 's@\{\s*\n+\s*\}@{\n\t\t\t\t"function": "powerline.segments.common.net.external_ip"\n\t\t\t}@' "$file"
        printf "Adding External IP\n"
    fi
}

function ww(){

    if [[ -z "$1" ]]; then
       loggErr "usage: ww <cmd> to run <cmd> forever" 
       return 1
    fi
    while true; do
        eval "$@"
    done
}

function www(){

    if [[ -z "$2" ]]; then
       loggErr "usage: www <sleeptime in sec> <cmd> to run <cmd> forever and sleep for <time>"
       return 1
    fi

    local time
    time=$1

    shift
    while true; do
        eval "$@"
        sleep $time
    done
}

function fordirUpdate(){

    if [[ -z "$1" ]]; then
       loggErr "usage: fordirUpdate <dirs> to run git update in each dir"
       return 1
    fi

    local dir cmd

    cmd="git fetch --all --prune;git clean -dff && git reset --hard HEAD && git clean -dff;git pull --all;zp gitclearcache"
    for dir in "$@"; do
        if [[ -d "$dir" ]]; then
            (
                builtin cd "$dir" && isGitDir && prettyPrint "cd $dir && $cmd" && eval "$cmd"
            )
        fi
    done
}

function fordir(){

    if [[ -z "$2" ]]; then
       loggErr "usage: fordir <cmd> <dirs> to run <cmd> in each dir"
       return 1
    fi

    local dir cmd

    cmd="$1"

    if [[ -d "$cmd" || -f "$cmd" ]]; then
       loggErr "usage: fordir <cmd> <dirs> to run <cmd> in each dir"
       return 1
    fi

    shift

    for dir in "$@"; do
        if [[ -d "$dir" ]]; then
            (
                builtin cd "$dir" && prettyPrint "cd $dir && $cmd" && eval "$cmd"
            )
        fi
    done
}

function ff(){

    if [[ -z "$1" ]]; then
       loggErr "ff <cmd> to run <cmd> 10 times" 
       return 1
    fi

    local i

    if [[ ! -d "$1" && ! -f "$1" ]]; then
        for (( i = 0; i < 10;++i )); do
            eval "$@"
        done
    else
       loggErr "usage: ff <cmd> to run <cmd> 10 times" 
       return 1
    fi
}

function fff(){

    if [[ -z "$2" ]]; then
       loggErr "usage: fff <iter> <cmd> to run <cmd> <iter> times" 
       return 1
    fi

    local i num

    num=$1
    shift

    for (( i = 0; i < $num;++i )); do
        eval "$@"
    done
}

function post(){

    if [[ -z "$2" ]]; then
        loggErr "usage: post <suffix> <cmd>"
        return 1
    fi

    local out postfix
    postfix="$1"
    shift
    out="$(eval "$@")"
    echo "$out" | perl -lnE "say \"\$_ $postfix\""
}

function pre(){

    if [[ -z "$2" ]]; then
        loggErr "usage: pre <prefix> <cmd>"
        return 1
    fi

    local out prefix

    prefix="$1"
    shift
    out="$(eval "$@")"
    echo "$out" | perl -lnE "say \"$prefix \$_\""
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

exists http && function ge(){

    if [[ -z "$1" ]]; then
        loggErr "usage: ge <url>"
        return 1
    fi

    local styles_dir url file len rand randscript random_color file_ary

    declare -a file_ary

    styles_dir='/usr/local/opt/httpie/libexec/lib/python3.7/site-packages/pygments/styles/'

    url="$(echo $1 | sed 's@[^/]*//\([^@]*@\)\?\([^:/]*.*\)@\2@')"
    echo $1 | command grep -sq https && proto=https|| proto=http
    shift

    if [[ -d "$styles_dir" ]]; then
        for file in "$styles_dir"/* ; do
            file=${file##*/}
            echo "$file" | command grep -sq -E "init|pycache" ||
                file_ary+=("${file%.*}")
        done

        len=${#file_ary}
        randscript="print int(rand()*$len)"
        rand=$(echo "$randscript" | perl)

        logg $rand
        isZsh && ((++rand))

        for (( i = 0; i < $len; ++i )); do
            random_color=${file_ary[$i]}
            if (( $rand == $i)); then
                break
            fi
        done
        logg http -v --follow --style=$random_color GET \
            $proto://$url --pretty=all "$@"
        http -v --follow --style=$random_color GET \
            $proto://$url --pretty=all "$@"
    else
        http -v --follow --style=autumn GET \
            $proto://$url --pretty=colors "$@"
    fi 2>&1 | less
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

function figletfonts(){

    local figletDir ary file font

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        figletDir="/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts"
    else
        figletDir="/usr/share/figlet"
    fi

    if [[ ! -d "$figletDir" ]]; then
        loggErr "Can not find $figletDir" && return 1
    fi

    declare -a ary

    for file in $(find "$figletDir" -iname "*.flf"); do
        ary+=${file##*/}
    done

    if [[ "$ZPWR_INTRO_BANNER" == ponies ]]; then
        exists ponysay || { loggErr "you need ponysay" && return 1; }
    fi
    exists lolcat || { loggErr "you need lolcat" && return 1; }
    exists splitReg.sh || { loggErr "you need splitReg.sh" && return 1; }
    exists tput || { loggErr "you need tput" && return 1; }

    alternatingPrettyPrint "${ZPWR_DELIMITER_CHAR}F${ZPWR_DELIMITER_CHAR}iglet ${ZPWR_DELIMITER_CHAR}F${ZPWR_DELIMITER_CHAR}onts ${ZPWR_DELIMITER_CHAR}A${ZPWR_DELIMITER_CHAR}re:"


    if [[ "$ZPWR_INTRO_BANNER" == ponies ]]; then
        for font in ${ary[@]} ; do
            printf "${font%.*} "
        done | ponysay -W $(tput cols) | splitReg.sh -- ---------------------- lolcat
    else
        for font in ${ary[@]} ; do
            printf "${font%.*} "
        done
        printf "\n"
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

declare -A _tempAry

function jsonToArray(){

    local json key value

    local json="$(cat)"
    while IFS="=" read -r key value;do
        _tempAry[$key]=$value
    done < <(echo "$json" | jq -r "to_entries|map(\"\(.key)=\(.value)\")|.[]")


    if isZsh;then
        printf '%s=%s\n' "${(@kv)_tempAry}"
    else
        for key in "${!_tempAry[@]}";do
            echo "$key=${_tempAry[$key]}"
        done
    fi
    set +x
}

function arrayToJson(){


    if [[ -z "$1" ]]; then
        loggErr "usage: arrayToJson <array>"
        return 1
    fi

    local ary key

    if isZsh; then
        ary="$1"
        printf '%s\n%s\n' "${(kv)${(P)ary}[@]}" |
        jq -Rn '[inputs | { (.): input}] | add'
    else
        ary="$1"
        for key in "${!${!ary}[@]}"; do
            printf "%s\n" "$key"
            printf "%s\n" "${aaname[$key]}"
        done | jq -Rn '[inputs | { (.): input}] | add'
    fi

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

function regenGtagsType(){

    if [[ -z $1 ]]; then
        loggErr "usage: regenGtagsType <type>"
        return 1
    fi

    local type file
    type=$1

    if exists gtags; then
        prettyPrint "Regen GNU gtags to $HOME/GTAGS with $type parser"
        (
        builtin cd "$HOME"
        command rm GPATH GRTAGS GTAGS 2>/dev/null
        for file in \
            "$ZPWR_INSTALL/"* \
            "$ZPWR/"* \
            "$ZPWR_SCRIPTS"/* \
            "$ZPWR_SCRIPTS_MAC/"*; do
            if [[ -f "$file" ]]; then
                echo "$file"
            fi
        done | gtags --accept-dotfiles --gtagslabel=$type -f -
        if [[ ! -s GTAGS ]]; then
            loggErr "forced to copy back gtags because empty"
            echo command cp "$ZPWR_INSTALL/g-tags/"{GPATH,GRTAGS,GTAGS} "$HOME"
            command cp "$ZPWR_INSTALL/g-tags/"{GPATH,GRTAGS,GTAGS} "$HOME"
        fi
        )
    else
        loggErr "gtags does not exist"
    fi

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
    bash "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh" |
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

function regenAllGitRepos(){

    if exists fd; then
        prettyPrint "Regen $ZPWR_ALL_GIT_DIRS with all git dirs from fd /"
        sudo -E "PATH=$PATH" env fd '\.git$' / --type d --absolute-path --color=never --threads=8 --hidden --no-ignore | perl -ne 'print if m{/.git$}' |
        tee "$ZPWR_TEMPFILE3"
    else
        prettyPrint "No fd-find so regen $ZPWR_ALL_GIT_DIRS with all git dirs from find /"
        sudo find / -name .git -type d -prune 2>/dev/null |
        tee "$ZPWR_TEMPFILE3"
    fi
    perl -i -pe 's@/.git$@@' "$ZPWR_TEMPFILE3"

    # removing system read only mounted dirs on macOS
    if [[ $ZPWR_OS_TYPE == darwin ]]; then
        perl -i -pe 's@^/System/Volumes/Data@@' "$ZPWR_TEMPFILE3"
    fi

    sort "$ZPWR_TEMPFILE3" | uniq > "$ZPWR_ALL_GIT_DIRS"
}

function searchDirtyGitRepos(){

    local shouldRegen

    function goThere(){

    {
        while read; do
            builtin cd "$REPLY" 2>/dev/null || continue
            if ! git diff-index --quiet HEAD -- 2>/dev/null;then
                echo "$REPLY"
            elif [[ ! -z "$(git ls-files --exclude-standard --others 2>/dev/null)" ]];then
                echo "$REPLY"
            fi
        done < "$ZPWR_ALL_GIT_DIRS"
    } |
        eval "$ZPWR_FZF $FZF_SEARCH_GIT_OPTS" |
        perl -ne 'print "cd $_"'
    }

    shouldRegen="$1"
    if [[ $shouldRegen == regen ]] || [[ ! -f "$ZPWR_ALL_GIT_DIRS" ]]; then
        regenAllGitRepos
    elif [[ ! -s "$ZPWR_ALL_GIT_DIRS" ]]; then
        prettyPrint "must regen $ZPWR_ALL_GIT_DIRS because empty."
        regenAllGitRepos regen
    fi

    searchGitCommon
}

function searchAllGitRepos(){

    local shouldRegen

    function goThere(){
        cat "$ZPWR_ALL_GIT_DIRS" |
        eval "$ZPWR_FZF $FZF_SEARCH_GIT_OPTS" |
        perl -ne 'print "cd $_"'
    }

    shouldRegen="$1"
    if [[ $shouldRegen == regen ]] || [[ ! -f "$ZPWR_ALL_GIT_DIRS" ]]; then
        regenAllGitRepos
    elif [[ ! -s "$ZPWR_ALL_GIT_DIRS" ]]; then
        prettyPrint "must regen $ZPWR_ALL_GIT_DIRS because empty."
        regenAllGitRepos regen
    fi

    searchGitCommon
}

function regenConfigLinks(){

    prettyPrint "linking $ZPWR_INSTALL/.{zshrc,vimrc,tmux.conf} to $HOME"
    linkConf
}

function regenPowerlineLink(){

    local dir
    dir="$(sudo python3 -m pip show powerline-status | command grep --color=always '^Location' | awk '{print $2}')/powerline"
    if needSudo "$dir"; then
        prettyPrint "linking $dir to $TMUX_HOME/powerline with sudo"
        echo sudo ln -sfn "$dir" "$TMUX_HOME"
        (
            builtin cd "$HOME"
            sudo ln -sfn "$dir" "$TMUX_HOME"
        )
    else
        prettyPrint "linking $dir to $TMUX_HOME/powerline"
        echo ln -sfn "$dir" "$TMUX_HOME/powerline"
        (
            builtin cd "$HOME"
            ln -sfn "$dir" "$TMUX_HOME"
        )
    fi
    command tmux source-file "$HOME/.tmux.conf"
}

function goclean() {

    if [[ -z "$1" ]]; then
        loggErr "usage: goclean <package>"
        return 1
    fi

    local pkg ost cnt src_dir bin_dir
    pkg=$1;
    shift

    # Set local variables
    if [[ "$(uname -m)" == "x86_64" ]];then
        ost="$(uname | tr A-Z a-z)_amd64"
    fi

    # Delete the source directory and compiled package directory(ies)
    src_dir="$GOPATH/src/$pkg"
    bin_dir="$GOPATH/pkg/$ost/$pkg"

    if [[ ! -d "$src_dir" ]]; then
        loggErr "$src_dir from $pkg does not exist"
        return 1
    fi
    if [[ ! -d "$bin_dir" ]]; then
        loggErr "$bin_dirfrom $pkg does not exist"
    fi
    # Clean removes object files from package source directories (ignore error)
    go clean -i $pkg 2>/dev/null

    echo rm -rf "$src_dir"
    echo rm -rf "$bin_dir"
    rm -rf "$src_dir"
    rm -rf "$bin_dir"
}

function commits(){

    if isGitDir; then
        if [[ $EDITOR = nvim ]];then
            nvim -c 'call feedkeys(":Commits!\<CR>")'
        elif [[ $EDITOR == 'mvim -v' ]];then
            mvim -v -c 'call feedkeys(":Commits!\<CR>")'
        else
            vim -c 'call feedkeys(":Commits!\<CR>")'
        fi
    else
        loggNotGit
        return 1
    fi
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

function emacsAllServer(){

    builtin cd $ZPWR
    ${=ZPWR_EMACS} \
    "$ZPWR_INSTALL/"{.zshrc,.tmux.conf,grc.zsh,.vimrc,init.vim,.ideavimrc,.globalrc,.spacemacs} \
    "$ZPWR/"*.{sh,py,zsh,pl} \
    "$ZPWR/"*.md \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/tmux-"* \
    "$ZPWR/"{.minvimrc,.mininit.vim} \
    "$ZPWR_INSTALL/conf."* \
    "$ZPWR_INSTALL/"*.sh \
    "$ZPWR_INSTALL/"*.service \
    "$ZPWR_INSTALL/UltiSnips/"*.snippets \
    "$ZPWR_SCRIPTS/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS_MAC/"*.{sh,py,zsh,pl}
    clearList
    isGitDir && git diff HEAD
}

function emacsAll(){

    builtin cd $ZPWR
    ${=ZPWR_EMACS_CLIENT} \
    "$ZPWR_INSTALL/"{.zshrc,.tmux.conf,grc.zsh,.vimrc,init.vim,.ideavimrc,.globalrc,.spacemacs} \
    "$ZPWR/"*.{sh,py,zsh,pl} \
    "$ZPWR/"*.md \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/tmux-"* \
    "$ZPWR/"{.minvimrc,.mininit.vim} \
    "$ZPWR_INSTALL/conf."* \
    "$ZPWR_INSTALL/"*.sh \
    "$ZPWR_INSTALL/"*.service \
    "$ZPWR_INSTALL/UltiSnips/"*.snippets \
    "$ZPWR_SCRIPTS/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS_MAC/"*.{sh,py,zsh,pl}
    clearList
    isGitDir && git diff HEAD
}

function vimAll(){

    builtin cd $ZPWR
    vim \
    "$ZPWR_INSTALL/"{.zshrc,.tmux.conf,grc.zsh,.vimrc,init.vim,.ideavimrc,.globalrc,.spacemacs} \
    "$ZPWR/"*.{sh,py,zsh,pl} \
    "$ZPWR/"*.md \
    "$ZPWR_LOCAL/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/"*.{sh,py,zsh,pl} \
    "$ZPWR_TMUX/tmux-"* \
    "$ZPWR/"{.minvimrc,.mininit.vim} \
    "$ZPWR_INSTALL/conf."* \
    "$ZPWR_INSTALL/"*.sh \
    "$ZPWR_INSTALL/"*.service \
    "$ZPWR_INSTALL/UltiSnips/"*.snippets \
    "$ZPWR_SCRIPTS/"*.{sh,py,zsh,pl} \
    "$ZPWR_SCRIPTS_MAC/"*.{sh,py,zsh,pl}
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

function timer() {

    if [[ -z "$1" ]]; then
        loggErr "usage: timer <command...>"
        return 1
    fi

    local count cmd total totstart totend avg runtime local_command

    count=100
    if exists gdate;then
        cmd=gdate
    else
        cmd=date
    fi

    total=0
    totstart=$($cmd +%s)
    for local_command in "$@" ; do
        echo "eval $local_command"
        for i in {1..$count} ; do
            start=$($cmd +%s%N)
            eval "$local_command"
            #echo $(eval "$1")
            end=$($cmd +%s%N)
            #zsh supports decimals not bash
            runtime=$(((end-start)/1000000.0))
            ((total += runtime))
        done
        #zsh supports decimals not bash
        avg=$((runtime/(count *1.0)))
        prettyPrint "$local_command took $runtime ms for $count rounds" >> "$ZPWR_TEMPFILE"
        echo
    done
    cat "$ZPWR_TEMPFILE"
    totend=$($cmd +%s)
    tot=$((totend-totstart))
    prettyPrint "total seconds at $tot s."
    command rm "$ZPWR_TEMPFILE"
}

function changeGitCommitterEmail(){

    if [[ -z "$2" ]]; then
        loggErr "usage: changeGitCommitterEmail <oldEmail> <newEmail>"
        return 1
    fi

    if ! isGitDir; then
        loggNotGit
        return 1
    fi

    local oldEmail newEmail

    oldEmail="$1"
    newEmail="$2"

    prettyPrint "change committer $oldEmail to $newEmail"

    git filter-branch --commit-filter '
    if [ "$GIT_COMMITTER_EMAIL" = "'$oldEmail'" ]; then
        GIT_COMMITTER_EMAIL="'$newEmail'"; git commit-tree "$@";
    else
        git commit-tree "$@";
    fi' HEAD
}

function changeGitAuthorEmail(){

    if [[ -z "$2" ]]; then
        loggErr "usage: changeGitAuthorEmail <oldEmail> <newEmail>"
        return 1
    fi

    if ! isGitDir; then
        loggNotGit
        return 1
    fi

    local oldEmail newEmail

    oldEmail="$1"
    newEmail="$2"

    prettyPrint "change author $oldEmail to $newEmail"

    git filter-branch --commit-filter '
    if [ "$GIT_AUTHOR_EMAIL" = "'$oldEmail'" ]; then
        GIT_AUTHOR_EMAIL="'$newEmail'"; git commit-tree "$@";
    else
        git commit-tree "$@";
    fi' HEAD
}

function zpwrUninstall() {

    local dir

    echo sudo rm -rf -- \
        "$ZPWR" \
        "$HOME/.tmux" \
        "$HOME/.vim" \
        "$HOME/.tmux" \
        "$FORKED_DIR" \
        "$ZSH" \
        "$HOME/.zpwr"* \
        "$HOME/.zshrc"* \
        "$HOME/.zshrc.pre"* \
        "$ZSH_COMPDUMP"* \
        "$HOME/.zcompdump"*
    prettyPrintNoNewline "are you sure? y/n > "
    read
    if [[ $REPLY == y ]]; then
        prettyPrint "Uninstall!"
        for dir in "$ZPWR_LOCAL/$USER.rc"*;do
            mv "$dir" "$HOME"
        done
        unlinkConf
    sudo rm -rf -- \
        "$ZPWR" \
        "$HOME/.tmux" \
        "$HOME/.vim" \
        "$HOME/.tmux" \
        "$FORKED_DIR" \
        "$ZSH" \
        "$HOME/.zpwr"* \
        "$HOME/.zshrc"* \
        "$HOME/.zshrc.pre"* \
        "$ZSH_COMPDUMP"* \
        "$HOME/.zcompdump"*
    else
        prettyPrint "Abort uninstall"
    fi
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

function changeGitEmail(){

    if [[ -z "$3" ]]; then
        loggErr "usage: changeGitEmail <oldEmail> <newName> <newEmail>"
        return 1
    fi

    if ! isGitDir; then
        loggNotGit
        return 1
    fi

    git filter-branch --env-filter '
    OLD_EMAIL="'$1'"
    CORRECT_NAME="'$2'"
    CORRECT_EMAIL="'$3'"
    if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
    then
        export GIT_COMMITTER_NAME="$CORRECT_NAME"

export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
    fi
    if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
    then
        export GIT_AUTHOR_NAME="$CORRECT_NAME"
        export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
    fi
    ' --tag-name-filter cat -- --branches --tags
}
#}}}***********************************************************

#{{{                    MARK:Global Alias
#**************************************************************

if ! isZsh; then
    test -f "$ZPWR_TOKEN_PRE" && source "$ZPWR_TOKEN_PRE" || touch "$ZPWR_TOKEN_PRE"
fi

return 0
#}}}***********************************************************
