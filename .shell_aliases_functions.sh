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

#{{{                    MARK:Global Fxn
#**************************************************************
isZsh(){
    if command ps -p $$ | command grep -qs zsh; then
        return 0
    else
        return 1
    fi
}

if isZsh; then
    exists(){
        #alternative is command -v
        type -- "$1" &>/dev/null || return 1 &&
        type -- "$1" 2>/dev/null |
        command grep -sqv "suffix alias" 2>/dev/null
    }

else
    exists(){
        #alternative is command -v
        type -- "$1" >/dev/null 2>&1
    }
fi
#}}}***********************************************************

#{{{                    MARK:ZPWR ENV VARS
#**************************************************************
test -z "$ZPWR_HIDDEN_DIR" && export ZPWR_HIDDEN_DIR="$HOME/.zpwr"
test -z "$ZPWR_OS_TYPE" && export ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"
test -z "$ZPWR_DELIMITER_CHAR" && export ZPWR_DELIMITER_CHAR='%'
test -z "$ZPWR_GITHUB_ACCOUNT" && export ZPWR_GITHUB_ACCOUNT='MenkeTechnologies'
test -z "$ZPWR_GITHUB_URL" && export ZPWR_GITHUB_URL="https://github.com/$ZPWR_GITHUB_ACCOUNT"
test -z "$ZPWR_REPO_NAME" && export ZPWR_REPO_NAME="zpwr"
test -z "$ZPWR_COMPLETION_DIR" && export ZPWR_COMPLETION_DIR="zsh-more-completions"
test -z "$ZPWR_VIM_KEYBINDINGS" && export ZPWR_VIM_KEYBINDINGS="$ZPWR_HIDDEN_DIR/vimKeybindings.txt"
test -z "$ZPWR_ALL_KEYBINDINGS" && export ZPWR_ALL_KEYBINDINGS="$ZPWR_HIDDEN_DIR/keybindings.txt"
test -z "$ZPWR_LOG_UNDER_COLOR" && export ZPWR_LOG_UNDER_COLOR='\x1b[0;34m'
test -z "$ZPWR_LOG_QUOTE_COLOR" && export ZPWR_LOG_QUOTE_COLOR='\x1b[0;35m'
test -z "$ZPWR_LOG_DATE_COLOR" && export ZPWR_LOG_DATE_COLOR='\x1b[0;37;42m'
test -z "$ZPWR_LOG_MSG_COLOR" && export ZPWR_LOG_MSG_COLOR='\x1b[0;37;43m'
test -z "$ZPWR_CD_AUTO_LS" && export ZPWR_CD_AUTO_LS=true
test -z "$ZPWR_SCRIPTS" && export ZPWR_SCRIPTS="$ZPWR_HIDDEN_DIR/scripts"
export ZPWR_ALL_GIT_DIRS="$ZPWR_HIDDEN_DIR/zpwrGitDirs.txt"
export ZPWR_LOGFILE="$ZPWR_HIDDEN_DIR/zpwrLog.txt"

test -z "$ZPWR_HIDDEN_DIR_TEMP" && export ZPWR_HIDDEN_DIR_TEMP="$HOME/.zpwr/.temp"

if [[ $ZPWR_EXA_EXTENDED == true ]]; then
    export ZPWR_EXA_COMMAND='command exa --git -il -F -H --extended --color-scale -g -a --colour=always'
else
    export ZPWR_EXA_COMMAND='command exa --git -il -F -H --color-scale -g -a --colour=always'
fi
#tmux prefix on outer session
if [[ ! -d "$ZPWR_HIDDEN_DIR_TEMP" ]]; then
    mkdir -p "$ZPWR_HIDDEN_DIR_TEMP"
fi
export ZPWR_TEMPFILE="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-$USER"
export ZPWR_TEMPFILE1="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-1$USER"
export ZPWR_TEMPFILE2="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-2$USER"
export ZPWR_TEMPFILE3="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-3$USER"
export ZPWR_TEMPFILE4="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-4$USER"
export ZPWR_TEMPFILE_SQL="$ZPWR_HIDDEN_DIR_TEMP/.temp$$-2$USER.sql"
#}}}***********************************************************

#{{{                    MARK:Env Vars
#**************************************************************
export ZPWR_TMUX_PREFIX=x
export ZPWR_TMUX_REMOTE_PREFIX=b
test -f "$ZPWR_HIDDEN_DIR/.tokens.sh" && source "$ZPWR_HIDDEN_DIR/.tokens.sh"
#bash xtrace
export PS4='>\e[1;4;39m${BASH_SOURCE}\e[37m\e[0;34m__${LINENO}\e[37m__\e[0;32m${FUNCNAME[0]}> \e[0m'
#zsh xtrace
export PROMPT4=$'\e[34m%x\t%0N\t%i\t%_\e[0m\t'
export NMON='mndckt'
export CLICOLOR="YES"
export LSCOLORS="ExFxBxDxCxegedabagacad"
source "$ZPWR_SCRIPTS/crossOSCommands.sh"
export FORKED_DIR="$HOME/forkedRepos"
export PYEXECUTABLES="$HOME/Documents/pythonScripts"
export PYSCRIPTS="$HOME/PycharmProjects/fromShell"
export ZPWR_D="$HOME/Desktop"
export ZPWR_DOC="$HOME/Documents"
export ZPWR_DL="$HOME/Downloads"
export XAUTHORITY="$HOME/.Xauthority"
export TERMINAL_APP="Terminal.app"
export YARN_HOME="$HOME/.config/yarn"
export TMUX_HOME="$HOME/.tmux"
export NODE_HOME="/usr/local/lib/node_modules"
export PERL5LIB="$HOME/perl5/lib/perl5"
export NODE_PATH="/usr/local/lib/node_modules:$YARN_HOME/global/node_modules"
export HISTSIZE=50000
export HISTTIMEFORMAT=' %F %T _ '
export ZPWR_BLUE="\x1b[37;44m"
export ZPWR_RED="\x1b[31m"
export ZPWR_RESET="\x1b[0m"
export UMASK=077
export LESS="-M -N -R -K -F -X"
if [[ -z "$TMUX" ]]; then
    export TERM="xterm-256color"
fi
#}}}***********************************************************

#{{{                    MARK:PATH
#**************************************************************
echo "$PATH" | command grep -isq shellScripts || {
    export PATH="$PATH:$HOME/go/bin:/usr/local/lib/python2.7/site-packages/powerline/scripts/"
    export PATH="$PYEXECUTABLES:$ZPWR_SCRIPTS/save-run:$HOME/.local/bin:$HOME/perl5/bin:$ZPWR_SCRIPTS:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/sbin:$PATH"

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        export CPATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
        export HOMEBREW_HOME_FORMULAE="/usr/local/Homebrew/Library/taps/homebrew/homebrew-core/formula"
        export PATH="$ZPWR_SCRIPTS/macOnly:$HOME/.tokenScripts:$PATH:$HOME/.platformio/penv/bin"
        export PATH="$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/tools/bin:$HOME/Library/Android/sdk/platform-tools:/Library/Developer/CommandLineTools/usr/bin:$PATH"
    else
        export PATH="$PATH:/usr/games"
    fi

    exists yarn && export PATH="$(yarn global bin):$PATH"

#}}}***********************************************************

#{{{                           MARK:HOMES
#**********************************************************************
    if [[ "$ZPWR_OS_TYPE" == darwin ]];then
        if exists jenv;then
            eval "$(jenv init -)"
            test -z "$JAVA_HOME" &&
                jenv enable-plugin export &>/dev/null

        fi
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
                export EDITOR='mvim'
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
}
#}}}

#{{{                          MARK:ALIASES
#**********************************************************************
#portable aliases
function rm(){
    command rm -v "$@"
}
exists c.pl && {
    alias pp='c.pl'
    alias ppp='c.pl *'
}
alias dirs='dirs -v'
exists proxychains && alias pc='proxychains'
exists proxychains4 && alias pc='proxychains'
alias lo="tail -n 1000 -F $ZPWR_LOGFILE"
alias va='cd /var'
exists rlwrap && alias plr="rlwrap -A -pgreen -S'perl> ' perl -wnE'say eval()//\$@'"
alias cpan='rlwrap cpan'
alias nz='exec zsh'
alias ll="clearList"
alias la="clearList"
alias l="clearList"
alias t="cd /"
alias ca='cat -n'
alias sa='sudo cat -n'
alias ra='sudo rm -rf'

test -d "$PYSCRIPTS" && alias py="cd $PYSCRIPTS"
alias p2="python2"
alias p3="python3"
test -d "$ZPWR_D" && alias d="cd $ZPWR_D"
if [[ -d "/var/www/html" ]];then
    alias we="cd /var/www/html"
elif [[ -d "/usr/local/var/www" ]];then
    alias we="cd /usr/local/var/www"
fi

exists fc && alias please='sudo $(fc -ln -1)'
exists spotify && {
    alias re='spotify replay'
    alias ne='spotify next'
    alias pe='spotify prev'
    alias spa='spotify pause'
}
isZsh && {
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
}
#{{{                    MARK:ALIASES for editing config files
#**************************************************************
alias vrc="vim -S ~/.vim/sessions/vrc.vim ~/.vimrc"
alias brc="vim -S ~/.vim/sessions/aliases.vim + $ZPWR_HIDDEN_DIR/.shell_aliases_functions.sh; source $ZPWR_HIDDEN_DIR/.shell_aliases_functions.sh; bash $ZPWR_SCRIPTS/backupBashConfig.sh 2> /dev/null"
alias zrc="vim -S ~/.vim/sessions/zshrc.vim + ~/.zshrc; source ~/.zshrc"
alias trc="vim -S ~/.vim/sessions/trc.vim ~/.tmux.conf"
#}}}***********************************************************
alias deleteTab="sed '/^[\x20\x09]*$/d'"
alias ba="bash"
alias upper="tr 'a-z' 'A-Z'"
#over aliases
if pwd | command grep -sq --color=always / 2>/dev/null; then
    alias grep="grep --color=always"
fi
if pwd | command egrep -sq --color=always / 2>/dev/null; then
    alias egrep="egrep --color=always"
fi
alias tree='tree -afC'
alias ta="tmux attach-session"
alias tn="tmux new-session"
alias h="cd /usr/local"
alias e="cd /etc"
alias ue="cd /usr/local/etc"
alias de="cd /dev"
alias a="cd $HOME"
alias k="pkill"
alias ka="killall"
alias sin="./configure && make && sudo make install"
alias curl='curl -fsSL'
alias mount='grc --colour=on -c "$HOME/conf.mount" mount'
alias ifconfig='grc --colour=on -c "$HOME/conf.ifconfig" ifconfig'
#alias df='grc --colour=on -c "$HOME/conf.df" df'

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    #Darwin specific aliases
    alias p_refresh="pio -f -c clion init --ide clion "
    alias spd="du -csh {.[^.]*,..?*} * 2> /dev/null | gsort -h"
    alias cpu="top -o cpu"
    alias mem="top -o mem"
    alias tip="top -o +command"
    alias nd="defaults write com.apple.dock autohide-delay -float 100 && defaults write com.apple.dock tilesize -int 1 && killall Dock"
    alias bsaver="nohup /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background > /dev/null &"
    alias pkill="pkill -iIl"
    alias q="qlmanage -p &>/dev/null"
    #keep remote tty sessions alive by stopping sleep
    #sudo pmset -c ttyskeepawake 1
    alias v1="open -a 'vnc viewer';execpy enterPasswordForVNC.py & bash $ZPWR_SCRIPTS/sshTunnelVnc.sh"
    alias v2="open -a 'vnc viewer';execpy enterPasswordForVNC2.py & bash $ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    alias rtsync="$HOME/Documents/shellScripts/macOnly/rsyncr.sh"
    alias ig='cd $HOME/IdeaProjects'
    alias pg='cd $HOME/PycharmProjects'
    alias cg='cd $HOME/ClionProjects'
    alias wg='cd $HOME/WebstormProjects'
    alias mg='cd $HOME/RubymineProjects'
    alias asg='cd $HOME/AndroidStudioProjects'
    alias xg='cd $HOME/Documents/xcode'
    alias ap='cd /Applications'
    alias sudoedit='sudo $EDITOR'
    alias tra='cd $HOME/.Trash'
    alias co="bash $ZPWR_SCRIPTS/macOnly/commandToColors.sh"
    alias bl='brew link --force --overwrite'
    exists gls &&
     alias lr='grc -c "$HOME/conf.gls" gls -iAlhFR --color=always' ||
     alias lr='grc -c "$HOME/conf.gls" ls -iAlhFR'
    exists mvim && {
        if [[ $ZPWR_USE_NEOVIM != true ]]; then
            alias v='mvim -v'
            alias vi='mvim -v'
            alias vim='mvim -v'
            alias vm="mvim -v -u $ZPWR_HIDDEN_DIR/.minvimrc"
            alias sv='sudo mvim -v'
        fi
    }
    exists nvim && {
        if [[ $ZPWR_USE_NEOVIM == true ]]; then
            alias v='nvim'
            alias vi='nvim'
            alias vim='nvim'
            alias vm="nvim -u $ZPWR_HIDDEN_DIR/.minvimrc"
            alias sv='sudo -E nvim'
        fi
    }

    exists brew && {
        alias apz="brew update && brew outdated && brew upgrade && brew cleanup; brew cu -ay; u8"
    }
else
    #Linux or Unix
    alias ip="grc -c $HOME/conf.ifconfig ip"
    alias lr='grc -c "$HOME/conf.gls" ls -iAlhFR --color=always'
    test -d "$HOME/.local/share/Trash" &&
        alias tra='cd $HOME/.local/share/Trash'
    if [[ "$(uname)" == Linux ]]; then
        if exists apt;then
            alias api="sudo apt install -y"
            alias apa="sudo apt update; sudo apt dist-upgrade -y; sudo apt autoremove -y; sudo apt autoclean"
            alias apz="sudo apt update; sudo apt dist-upgrade -y; sudo apt autoremove -y; sudo apt autoclean; u8"
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
            (raspbian) source "$HOME/.rpitokens.sh"
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
    fi

    exists nvim && {
        if [[ $ZPWR_USE_NEOVIM == true ]]; then
            alias v='nvim'
            alias vi='nvim'
            alias vim='nvim'
            alias vm="nvim -v -u $ZPWR_HIDDEN_DIR/.minvimrc"
            alias sv='sudo -E nvim'
        else
            exists vim && {
                alias v=vim
                alias vi=vim
                alias vm="vim -v -u $ZPWR_HIDDEN_DIR/.minvimrc"
                alias sv='sudo -E vim'
            }
        fi
    }
fi
alias tclsh="rlwrap tclsh"
alias logs="sudo tail -f /var/log/**/*.log | ccze"
alias beats="sudo tail -f /var/log/*beat/* | ccze"
alias matr="cmatrix -C blue -abs"
alias tm="python3 $PYSCRIPTS/tmux_starter.py"
alias tmm="python3 $PYSCRIPTS/ssh_starter.py"
alias tmm_notabs="python3 $PYSCRIPTS/complete_ssh_starter.py;"
alias tmm_full="python3 $PYSCRIPTS/tabs.py;python3 $PYSCRIPTS/complete_ssh_starter.py;"
alias inst="bash $ZPWR_SCRIPTS/tgzLocalInstaller.sh"
#**********************************************************************

#                           MARK:PYTHON ZPWR_SCRIPTS
#**********************************************************************
alias mapit="execpy mapIt.py"
alias ,,="execpy amazonSearch.py"
alias shutpy="execpy shutdown.py"
alias pb="execpy bills.py"
alias ud=" execpy udemy.py"
alias ipa="command ifconfig | perl -lane 'do {print \$F[1] =~ s/addr//r;exit0} if /inet\\s/ and !/127/'"

alias pgrep='pgrep -l'
#**********************************************************************
#                           MARK:SHELL ZPWR_SCRIPTS
#**********************************************************************
alias ct="bash $ZPWR_SCRIPTS/createTextFile.sh"
alias u="bash $ZPWR_SCRIPTS/upLoadPi.sh"
alias u2="bash $ZPWR_SCRIPTS/upLoadPi2.sh"
alias pw="bash $ZPWR_SCRIPTS/uploadWebPi.sh"
alias sy="bash $ZPWR_SCRIPTS/sync.sh"
alias sf="bash $ZPWR_SCRIPTS/directoryContentsSize.sh"
alias sc='cd $ZPWR_SCRIPTS'
alias bluef='source $ZPWR_SCRIPTS/blueText.sh'
alias dl="cd $ZPWR_DL"
alias docu="cd $ZPWR_DOC"
alias mus='cd $HOME/Music'
alias jobs="jobs -l"
alias u8="bash $ZPWR_SCRIPTS/updater.sh"
alias sd="clear;ssh d "
alias gitgo='$ZPWR_SCRIPTS/gitgo.sh'
alias watchGit='bash $ZPWR_SCRIPTS/watchServiceFSWatchGit.sh'
alias watchPiWeb='bash $ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh'
alias cl=clear
alias mkdir='mkdir -pv'
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
#**********************************************************************

#**************************************************************
#}}}

#{{{                    MARK:Shell functions
#**************************************************************

r(){
    local cdstr
    if [[ -z $1 ]]; then
        cd ..
    else
        for (( i = 0; i < $1; i++ )); do
            cdstr+="../"
        done
        cd "$cdstr" || return 1
    fi
}

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then

    exe(){
        python3 "$PYSCRIPTS/ssh_runner.py" "$@"
    }

    nn(){
        [[ -z "$2" ]] && echo \
            "Title is \$1 and message is \$2..." >&2 &&
            return 1
        title="$1"
        msg="$2"
        echo "display notification \"$msg\" with title \"$title\"" |
            osascript
    }

    db(){
        python3 "$PYSCRIPTS/loginDBChrome.py"
    }

    db2(){
        python3 "$PYSCRIPTS/logIntoMyDB.py"
    }

    scriptToPDF(){
        tempFile="$HOME/__test.ps"
        vim "$1" -c "hardcopy > $tempFile" -c quitall
        cat "$tempFile" | open -fa Preview
        rm "$tempFile"
    }

else
    exists ps2pdf && {
        scriptToPDF(){
            tempFile="$HOME/__test.ps"
            vim "$1" -c "hardcopy > $tempFile" -c quitall
            ps2pdf "$tempFile" "${1%%.*}".pdf
            rm "$tempFile"
        }
    }

    ssd() {
        for service in "$@"; do
            prettyPrint "sudo systemctl stop $service"
            prettyPrint "sudo systemctl disable $service"
            sudo systemctl stop "$service"
            sudo systemctl disable "$service"
        done
    }

    ssu() {
        for service in "$@"; do
            prettyPrint "sudo systemctl start $service"
            prettyPrint "sudo systemctl enable $service"
            sudo systemctl start "$service"
            sudo systemctl enable "$service"
        done
    }


    tailufw(){
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

    restartZabbixAgent(){
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

    restart(){
        service="$1"
        src_dir="$FORKED_DIR/$ZPWR_REPO_NAME"
        local service_path="$src_dir/$service.service"
        test -d "$src_dir" ||
            { echo "$src_dir does not exists." >&2 && return 1; }
        test -f "$service_path" ||
            { echo "$service_path does not exists so falling back to $1." >&2 && service_path="$1"; }

        test -f "$service_path" ||
            { echo "$service_path does not exists so exiting." >&2 && return 1; }

        test -d "/etc/systemd/system" ||
            { echo "/etc/systemd/system does not exists. Is systemd installed?" >&2 && return 1; }
            ( cd "$src_dir" && git pull; )
        group=$(id -gn)
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

cloneToForked(){
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

s(){

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
            } &>/dev/null
        else
            {
            out="$(echo "$@" | python3 -c 'import urllib.parse; print(urllib.parse.quote(input(), safe=""))')"
            url="https://google.com/search?q=$out"
                ${=sec_cmd} $url
            } &>/dev/null
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

logg(){

    if [[ $ZPWR_COLORS == true ]]; then
        if [[ -p /dev/stdin ]]; then
            {
                printf "\n${ZPWR_LOG_UNDER_COLOR}_____________$ZPWR_LOG_DATE_COLOR$(date)\x1b[0m${ZPWR_LOG_UNDER_COLOR}____ "
                printf "_${ZPWR_LOG_QUOTE_COLOR}'$ZPWR_LOG_MSG_COLOR"
                cat
                printf "\x1b[0m$ZPWR_LOG_QUOTE_COLOR'${ZPWR_LOG_UNDER_COLOR}_"
                printf "\x1b[0m"
                printf "\n"
            } >> "$ZPWR_LOGFILE"
        else
            test -z "$1" && echo "need arg" >&2 && return 1
            {
                printf "\n${ZPWR_LOG_UNDER_COLOR}_____________$ZPWR_LOG_DATE_COLOR$(date)\x1b[0m${ZPWR_LOG_UNDER_COLOR}____ "
                printf "_$ZPWR_LOG_QUOTE_COLOR'$ZPWR_LOG_MSG_COLOR%b\x1b[0m$ZPWR_LOG_QUOTE_COLOR'${ZPWR_LOG_UNDER_COLOR}_" "$*"
                printf "\x1b[0m"
                printf "\n"
            } >> "$ZPWR_LOGFILE"
        fi
    else

    if [[ -p /dev/stdin ]]; then
            {
                printf "\n_____________$(date)____ _'"
                cat
                printf "'_ \n"
            } >> "$ZPWR_LOGFILE"
        else
            test -z "$1" && echo "need arg" >&2 && return 1
            {
                printf "\n_____________$(date)____ "
                printf "_'%s'_ " "$@"
                printf "\n"
                
            } >> "$ZPWR_LOGFILE"
        fi

        
    fi

}

xx(){
    local counter cmd DONE
    
    cmd="$1"
    test -z "$2" && counter=100 || counter="$2"

    trap 'DONE=true' QUIT
    DONE=false
    for iter in {1..$counter} ; do
       [[ $DONE == true ]] && break || eval "$cmd"
    done

    trap QUIT
}

urlSafe(){
    
    cat | base64 | tr '+/=' '._-'
}

cgh(){
    [[ -z "$1" ]] && user="$ZPWR_GITHUB_ACCOUNT" || user="$1"
    curl -s "https://github.com/$user" |
    command perl -ne 'do {print $_ =~ s/\s+/ /r;exit0} if /[0-9] contributions/'
}

upload(){
    command curl -vvv -fsSL -F file=@"$1" http://"$2"
}

jd(){
    for dir;do
        command mkdir -p "$dir"
    done
}

function j(){
    for file;do
        dirname="$(dirname $file)"
        [[ "$dirname" != . ]] && command mkdir -p "$dirname"
        touch "$file"
    done
}

scnew(){
    test -z "$1" && echo "no arg..." >&2 && return 1

    bash '$HOME/Documents/shellScripts/createScriptButDontOpenSublime.sh' "$1"
}

p(){
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

b(){
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

suc(){
    subl "$ZPWR_SCRIPTS"
    f "$ZPWR_SCRIPTS"
    python3 "$PYSCRIPTS/textEditorTwoColumns.py"
}

allRemotes(){
    while read; do
        printf "\x1b[1;34m$REPLY"
        printf "\x1b[0m\x0a"
        git remote show "$REPLY"
    done < <(git remote)
}

about(){
    old="$LESS"
    unset LESS
    if [[ -f "$ZPWR_SCRIPTS/about.sh" ]]; then
        bash "$ZPWR_SCRIPTS/about.sh" | less -rFX
    fi
    export LESS="$old"
}

clearList() {
    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        if exists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if exists grc; then
                ls_command="grc -c $HOME/conf.gls gls -iFlhAd --color=always"
            else
                ls_command="ls -iFlhAOd"
            fi
        fi
        lib_command="otool -L"
    elif [[ "$ZPWR_OS_TYPE" == linux ]];then

        if exists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if exists grc; then
                ls_command="grc -c $HOME/conf.gls ls -iFlhA --color=always"
            else
                ls_command="ls -iFlhA"
            fi
        fi
        lib_command="ldd"
    else
        if exists grc;then
            ls_command="grc -c $HOME/conf.gls ls -iFlhA"
        else
            ls_command="ls -iFhlA"
        fi
        lib_command="ldd"
    fi

    if [[ -n "$1" ]]; then
        for arg in "$@"; do
            if exists $arg; then
                #exe matching
                while read loc;do
                    lf="$(echo $loc | cut -d' ' -f3-10)"
                    if [[ -f "$lf" ]]; then
                        prettyPrint "$lf" &&
                        eval "$ls_command -- $lf" &&
                        prettyPrint "FILE TYPE:" &&
                        eval "file -- $lf" &&
                        prettyPrint "DEPENDENT ON:" &&
                        eval "$lib_command $lf"
                        prettyPrint "SIZE:"
                        du -sh -- "$lf"
                        prettyPrint "STATS:"
                        stat -- "$lf"
                        prettyPrint "MAN:"
                        man -wa "$(basename $lf)" 2>/dev/null
                        echo
                        echo
                    else
                        echo "$loc"
                        echo "$loc" | command grep -sq "function" &&
                        {
                            type -f -- \
                "$(echo "$loc" | awk '{print $1}')" 2>/dev/null |
                            nl -v 0
                        }
                        echo "$loc" | command grep -sq "alias" &&
                    {
                alias -- "$(echo "$loc" | awk '{print $1}')"
                        }
                        echo
                        echo
                    fi
                done < <(type -a "$arg" 2>/dev/null | sort | uniq)
            else
                #path matching, not exe
                prettyPrint "$arg"
                eval "$ls_command -d -- \"$arg\"" ||
                    { echo; continue; }
                echo
                prettyPrint "FILE TYPE:"
                file -- "$arg"
                prettyPrint "SIZE:"
                du -sh -- "$arg"
                prettyPrint "STATS:"
                stat -- "$arg"
                #for readibility
                echo
                echo
            fi
        done
    else
        clear && eval "$ls_command"
    fi
}

listNoClear () {
    exists exa && eval "$ZPWR_EXA_COMMAND" && return 0

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        if exists grc; then
            grc -c "$HOME/conf.gls" gls \
            -iFlhA --color=always
        else
            ls -iFlhAO
        fi
    else
        if exists grc; then
            grc -c "$HOME/conf.gls" \
            ls -iFlhA --color=always
        else
            ls -ifhla
        fi
    fi
}

animate(){
    bash "$ZPWR_SCRIPTS/animation"
}

blocksToSize(){
    read input
    local bytes=$(( input * 512 ))
    echo $bytes | humanreadable
}

humanReadable(){
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

f(){
    if [[ -f "$1" ]]; then
        cd "$(dirname "$1")"
    elif [[ -d "$1" ]];then
        cd "$1"
    else
        test -z "$1" && cd - && return 0
        echo "$1" | command grep -E '\-[0-9]+' && cd "$1" && return 0
        base="$(dirname "$1")"
        while [[ "$base" != / ]]; do
            test -d "$base" && cd "$base"&& return 0
            base="$(dirname "$base")"
        done
        echo "Not a valid file or directory." >&2 && return 1
    fi
}
alias fh='f !$'

execpy(){
    script="$1"
    shift
    python3 "$PYSCRIPTS/$script" "$@"

}

search(){
    test -z $2 && command grep -iRnC 5 "$1" * ||
        command grep -iRnC 5 "$1" "$2"
}

cd(){
    #builtin is necessary here to distinguish
    #bt function name and builtin cd command
    #don't want to recursively call this function
    builtin cd "$@"
    if [[ $ZPWR_CD_AUTO_LS == true ]]; then
        clearList
    fi
}
isGitDir(){
    command git rev-parse --git-dir 2> /dev/null 1>&2
}

isGitDirMessage(){
    if ! command git rev-parse --git-dir 2> /dev/null 1>&2; then
        printf "\x1b[0;1;31m"
        printf "NOT GIT DIR: $(pwd -P)\n" >&2
        printf "\x1b[0m"
        return 1
    fi
}

contribCount(){

    isGitDir || return 1

    lines="$(git status > /dev/null && git log --pretty="%an" | sort | uniq -c | sort -rn)"
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

isBinary() {
  LC_MESSAGES=C command grep -Hm1 '^' < "${1-$REPLY}" | command grep -sq '^Binary'
}

totalLines(){

    isGitDir || return 1

    prettyPrint "starting total line count..."
    {

    while read; do
        isbinary "$REPLY" && continue
        filter=false
        for arg in "$@"; do
           if echo "$REPLY" | grep -sq "$arg"; then
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
        printf "where is $ZPWR_TEMPFILE\n" >&2
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

lineContribCount(){

    isGitDir || return 1

    prettyPrint "starting line contrib count..."
    {

    while read; do
        isbinary "$REPLY" && continue
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
        printf "where is $ZPWR_TEMPFILE\n" >&2
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

gsdc(){
    isGitDir || return 1

    currentDir="$(pwd -P)"
    for dir in "${BLACKLISTED_DIRECTORIES[@]}" ; do
        if [[ "$currentDir" == "$dir" ]]; then
            printf "\x1b[0;1;31m"
            print -sr "$BUFFER"
            printf "BLACKLISTED: $(pwd -P)" >&2
            echo
            printf "\x1b[0m"
            return 1
        fi
    done

	git status | command grep -sq "nothing to commit" && {
        printf "\x1b[0;1;31m"
        printf "Nothing has changed." >&2
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

gitCommitAndPush(){
    isGitDir || return 1

    currentDir="$(pwd -P)"
    for dir in "${BLACKLISTED_DIRECTORIES[@]}" ; do
       if [[ "$currentDir" == "$dir" ]]; then
           return 1
       fi
    done

    echo
    git pull --no-rebase
    git add .
    git commit -m "$1"
    git push
}

replacer(){
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

creategif(){
    outFile=out.gif
    res=600x400

    test -z "$1" && echo "One arg needed..." >&2 && return 1

    test -n "$2" && res="$2"

    test -n "$3" && outFile="$3"

    ffmpeg -i "$1" -s "$res" -pix_fmt rgb24 -r 10 -f gif - |
    gifsicle --optimize=3 --delay=3 > "$outFile"
}

hc(){
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

hd(){
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

    test -z "$repo" && echo "bad repo $repo" >&2 && return 1
    test -z "$user" && echo "bad user $user" >&2 && return 1

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

pstreemonitor(){
    bash $ZPWR_SCRIPTS/myWatchNoBlink.sh \
    "pstree -g 2 -u $USER | sed s@$USER@@ | sed s@/.*/@@ | tail -75"
}

return2(){
    if isZsh; then
        exec 2> /dev/tty
    else
        echo "only for zsh" >&2
        return 1
    fi
}

color2(){
    if isZsh; then
        exec 2> >(redText.sh)
    else
        echo "only for zsh" >&2
        return 1
    fi
}

escapeRemove(){
    while read; do
        echo "$REPLY" | sed -e 's@\e\[.\{1,5\}m@@g'
    done
}

prettyPrint(){
    if [[ -n "$1" ]];then
        printf "\x1b[1m"
        printf "%s " "$@"
        printf "\x1b[0m\n"
    else
        echo "Need one arg" >&2
        return 1
    fi
}

alternatingPrettyPrint(){
    local counter
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        $counter++;
        };print "\x1b[0m"'
    else
        echo "$@" | perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        $counter++;
        }; print "\x1b[0m"'
    fi
}

tac(){
    sed '1!G;h;$!d' "$@"
}

backup(){
    newfile="$1".$(date +%Y%m%d.%H.%M.bak)
    mv "$1" "$newfile"
    cp -pR "$newfile" "$1"
    printf \
        "\e[4;1m$1\e[0m backed up to \e[4;1m$newfile\e[0m\n"
}

alias gcl >/dev/null 2>&1 && unalias gcl

gcl() {
    git_name="${1##*/}"
    dir_name=${git_name%.*}
    git clone -v --progress --recursive "$1"
    cd "$dir_name"
}

ino(){
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

jetbrainsWorkspaceEdit(){
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
            echo "No Match Yet" >&2
            sleep 1
        fi
    done
}

unalias o &>/dev/null
o(){
    open_cmd="$ZPWR_OPEN_CMD" || return 1

    if isZsh; then
        if [[ -z "$1" ]]; then
            ${=open_cmd} . &> /dev/null
        else
            ${=open_cmd} "$@" &> /dev/null
        fi
    else
        if [[ -z "$1" ]]; then
            $open_cmd .
        else
            $open_cmd "$@"
        fi
    fi

}

openmygh(){
    open_cmd="$ZPWR_OPEN_CMD" || return 1

    if isZsh; then
        if [[ -n "$1" ]]; then
            ${=open_cmd} "https://github.com/$1"
        else
            ${=open_cmd} "https://github.com/$ZPWR_GITHUB_ACCOUNT"
        fi
    else
        if [[ -n "$1" ]]; then
            ${open_cmd} "https://github.com/$1"
        else
            ${open_cmd} "https://github.com/$ZPWR_GITHUB_ACCOUNT"
        fi
    fi

}
alias gh=openmygh

eval "alias $ZPWR_GITHUB_ACCOUNT=NAME='openmygh $ZPWR_GITHUB_ACCOUNT'"
zpwr(){
    if test -z $1;then
        openmygh $ZPWR_GITHUB_ACCOUNT/$ZPWR_REPO_NAME
    else
        . zpwr.zsh "$@"
    fi
}
if [[ -d "$ZPWR_SCRIPTS/$ZPWR_REPO_NAME" ]]; then
    eval "export $(echo $ZPWR_REPO_NAME | perl -pe '$_=uc')='$ZPWR_SCRIPTS/$ZPWR_REPO_NAME'"
elif [[ -d "$FORKED_DIR/$ZPWR_REPO_NAME" ]];then
    eval "export $(echo $ZPWR_REPO_NAME | perl -pe '$_=uc')='$FORKED_DIR/$ZPWR_REPO_NAME'"
fi

if [[ -d "$FORKED_DIR" ]]; then
    alias fp="cd $FORKED_DIR"
fi

zpz(){
    local dirsrc forked
    dirsc="$ZPWR_SCRIPTS/$ZPWR_REPO_NAME"
    forked="$FORKED_DIR/$ZPWR_REPO_NAME"

    if [[ -d "$dirsc" ]]; then
        cd "$dirsc"; gitCheckoutRebasePush
    elif [[ -d "$forked" ]]; then
        cd "$forked"; gitCheckoutRebasePush
    else
        echo "$dirsc and $forked do not exist" >&2
    fi
}
zp(){
    local dirsrc forked
    dirsc="$ZPWR_SCRIPTS/$ZPWR_REPO_NAME"
    forked="$FORKED_DIR/$ZPWR_REPO_NAME"

    if [[ -d "$dirsc" ]]; then
        cd "$dirsc"
    elif [[ -d "$forked" ]]; then
        cd "$forked"
    else
        echo "$dirsc and $forked do not exist" >&2
    fi
}

# copy over latest configuration files from $ZPWR_REPO_NAME
copyConf(){
    cp .shell_aliases_functions.sh "$HOME/.zpwr"
    cp .zshrc "$HOME"
    cp .vimrc "$HOME"
    cp .minvimrc "$HOME/.zpwr"
    cp .tmux.conf "$HOME"
    cp conf.gls "$HOME"
    cp conf.df "$HOME"
    cp .powerlevel9kconfig.sh "$HOME/.zpwr"
    cp conf.ifconfig "$HOME"
    cp grc.zsh "$HOME"
    cp .inputrc "$HOME"
    cp UltiSnips/* "$HOME/.vim/UltiSnips"
    cp -R .tmux/* "$ZPWR_HIDDEN_DIR/.tmux"
    cp -f scripts/* "$ZPWR_SCRIPTS"
    cp -Rf scripts/macOnly "$ZPWR_SCRIPTS"

    if [[ ! -f "$HOME/.ctags" ]]; then
        prettyPrint "Copying .ctags to home directory"
        cp ".ctags" "$HOME"
    fi

}

# pull down latest configuration files from $ZPWR_REPO_NAME
getrc(){
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

    builtin cd "$HOME"
    bash "$ZPWR_SCRIPTS/about.sh"
    git clone -b "$branch" "https://github.com/$ZPWR_GITHUB_ACCOUNT/$ZPWR_REPO_NAME.git"
    builtin cd "$ZPWR_REPO_NAME"
    copyConf
    builtin cd ..

    COMPLETION_DIR="$HOME/.oh-my-zsh/custom/plugins"
    for dir in "$COMPLETION_DIR/"*;do
        printf "$dir: "
        test -d "$dir" && ( builtin cd "$dir" && git pull; )
    done

    command rm -rf "$ZPWR_REPO_NAME"
    
    test -n "$TERM" && exec "$SHELL"

}

getrcdev(){
    getrc dev
}

rename(){
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

torip(){
    ip=$(curl --socks5 127.0.0.1:9050 icanhazip.com)
    whois $ip
    echo $ip
}

toriprenew() {
    printf 'AUTHENTICATE ""\r\nsignal NEWNYM\r\nQUIT' |
        nc 127.0.0.1 9051
}

mycurl(){
    command curl -fsSL -A \
    "Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3" -v "$@" 2>&1 |
    command sed "/^*/d" | sed -E "s@(<|>) @@g" |
    sed -E "/^(\{|\}| ) (\[|C)/d"
}

perlremovespaces(){
    for file;do
        printf "\x1b[38;5;129mRemoving from \x1b[38;5;57m${file}\x1b[38;5;46m"'!'"\n\x1b[0m"
        perl -pi -e 's@\s+$@\n@g; s@\x09$@    @g;s@\x20@ @g; s@^s*\n$@@; s@(\S)[\x20]{2,}@$1\x20@' "$file"
    done
}

pirun(){
    trap 'DONE=true' QUIT
    local DONE
    DONE=false
    local picounter
    picounter=1
    for pi in "${PI_ARRAY[@]}" ; do
        [[ $DONE == true ]] && return 1
        alternatingPrettyPrint "Executing %'$1'% on %$pi%"
        if [[ -z $2 ]]; then
            ssh "${pi%:*}" "$1" 2>/dev/null
        else
            ssh "${pi%:*}" "$1" 2>/dev/null
            if (( picounter == $2 )); then
                return
            fi
        fi
        ((picounter++))
    done
    trap QUIT
}

digs(){
    local OPTIND opt exe secret
    while getopts "s" opt 2>/dev/null;do
        case $opt in
            s)secret=true;;
            *) echo "bad opt" >&2; return 1
        esac
    done
    shift $(($OPTIND-1))

    if [[ -z "$1" ]]; then
        echo "need an arg" >&2
        return 1
    fi
    exists grc && colo=grc || {
        colo=
        echo "No grc colorizer no defaulting to no colors"
    }

    if [[ -n $colo ]] && [[ ! -f "$HOME/conf.whois" ]]; then
        echo "cannot proceed without $HOME/conf.whois for grc" >&2
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
            echo "cannot proceed without proxychains" >&2; return 1
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
            echo "you need dig" >&2
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
                    if echo "$out" | grep -sq 'No match';then
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
                    if echo "$out" | grep -sq 'No match'; then
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
            echo "you need dig" >&2
        fi
    fi
}

to(){
    file="$HOME/.config/powerline/themes/tmux/default.json"
    [[ ! -f "$file" ]] && echo "no tmux config" >&2 && return 1
    if cat "$file" | grep -sq "external_ip"; then
        perl -i -pe 's@^.*external_ip.*$@@' "$file"
        printf "Removing External IP\n"
    else
        perl -0 -i -pe 's@\{\s*\n+\s*\}@{\n\t\t\t\t"function": "powerline.segments.common.net.external_ip"\n\t\t\t}@' "$file"
        printf "Adding External IP\n"
    fi
}

ww(){
    while true; do
        eval "$@"
    done
}

www(){
    time=$1
    shift
    while true; do
        eval "$@"
        sleep $time
    done
}

ff(){
    if [[ ! -d "$1" && ! -f "$1" ]]; then
        for (( i = 0; i < 10;i++ )); do
            eval "$@"
        done
    fi
}

fff(){
    num=$1
    shift
    for (( i = 0; i < $num;i++ )); do
        eval "$@"
    done
}

post(){
    test -z $2 && echo "need two args" >&2 && return 1
    postfix="$1"
    shift
    out="$(eval "$@")"
    echo "$out" | perl -lnE "say \"\$_ $postfix\""
}

pre(){
    test -z $2 && echo "need two args" >&2 && return 1
    prefix="$1"
    shift
    out="$(eval "$@")"
    echo "$out" | perl -lnE "say \"$prefix \$_\""
}

exists pssh && pir(){
    if ! test -s "$ZPWR_HIDDEN_DIR/hosts.txt"; then
        echo "you need hosts.txt in your $ZPWR_HIDDEN_DIR" >&2
        return 1
    fi
    pssh --inline-stdout --timeout 90 -h "$ZPWR_HIDDEN_DIR/hosts.txt" "$@"
}

c(){
    local colorizer=bat
    local rpm_cmd
    local deb_cmd
    exists rpm && rpm_cmd="rpm -qi" || rpm_cmd="stat"
    exists dpkg && deb_cmd="dpkg -I" || deb_cmd="stat"
    if [[ ! -p /dev/stdout ]];then
        {
            exists $colorizer && {
                echo | $colorizer &>/dev/null && {
                    for file in "$@";do
                        if [[ -f "$file" ]]; then
                            if (( $# > 1)); then
                                printf "\x1b[34;1;4m$file\x1b[0m\n"
                            fi
                            if [[ -r "$file" ]]; then
                                bash fzfPreviewOptsCtrlT.sh |
                                sed "s@{}@$file@" | zsh
                            else
                                bash fzfPreviewOptsCtrlT.sh |
                                sed "s@{}@$file@" | sudo zsh
                            fi
                        fi
                    done
                } || cat -n "$@"
            } || cat -n "$@"
        } | less
    else
        exists $colorizer && {
            echo | $colorizer &>/dev/null && {
                for file in "$@";do
                    if [[ -f "$file" ]]; then
                        if (( $# > 1)); then
                            printf "\x1b[34;1;4m$file\x1b[0m\n"
                        fi
                        if [[ -r "$file" ]]; then
                            bash fzfPreviewOptsCtrlT.sh |
                            sed "s@{}@$file@" | zsh
                        else
                            bash fzfPreviewOptsCtrlT.sh |
                            sed "s@{}@$file@" | sudo zsh
                        fi
                    fi
                done
            } || cat -n "$@"
        } || cat -n "$@"
    fi
}

exists http && ge(){
    styles_dir='/usr/local/opt/httpie/libexec/lib/python3.7/site-packages/pygments/styles/'

    url="$(echo $1 | sed 's@[^/]*//\([^@]*@\)\?\([^:/]*.*\)@\2@')"
    echo $1 | command grep -sq https && proto=https|| proto=http
    shift

    if [[ -d "$styles_dir" ]]; then
        declare -a file_ary
        for file in "$styles_dir"/* ; do
            file=${file##*/}
            echo "$file" | command grep -sq -E "init|pycache" ||
                file_ary+=("${file%.*}")
        done
        len=${#file_ary}
        randscript="print int(rand()*$len)"
        rand=$(echo "$randscript" | perl)
        logg $rand
        isZsh && ((rand++))

        for (( i = 0; i < $len; i++ )); do
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

fz(){
    if test -z "$1";then
        command ag '^.*$' --hidden --ignore .git --color | fzf -m --delimiter : --nth 3.. --reverse --border --prompt='-->>> ' --preview '[[ -f $(cut -d: -f1 <<< {}) ]] && '"$COLORIZER"' $(cut -d: -f1 <<< {}) '"$COLORIZER_NL"' \
        2>/dev/null | sed -n "$(cut -d: -f2 <<< {}),\$p" || stat $(cut -d: -f1 <<< {}) | fold -80 | head -500' --ansi | cut -d ':' -f1 | perl -pe 's@^(.*)\n$@"$1" @'
    else
        command ag '^.*$' --hidden --ignore .git --color | fzf --delimiter : --nth 3.. --reverse --border --prompt='-->>> ' --preview '[[ -f $(cut -d: -f1 <<< {}) ]] && '"$COLORIZER"' $(cut -d: -f1 <<< {}) '"$COLORIZER_NL"'\
            2>/dev/null | sed -n "$(cut -d: -f2 <<< {}),\$p" || stat $(cut -d: -f1 <<< {}) | fold -80 | head -500' --ansi | perl -pe 's@^(.*?):(\d+):(.*)@+$2 "$1"@'
    fi
}

figletfonts(){

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        FIGLET_DIR="/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts"
    else
        FIGLET_DIR="/usr/share/figlet"
    fi

    if [[ ! -d "$FIGLET_DIR" ]]; then
        echo "Can not find $FIGLET_DIR" >&2 && return 1
    fi

    declare -a ary

    for file in $(find "$FIGLET_DIR" -iname "*.flf"); do
        ary+=${file##*/}
    done

    if [[ "$ZPWR_BANNER" == ponies ]]; then
        exists ponysay || { echo "you need ponysay" >&2 && return 1; }
    fi
    exists lolcat || { echo "you need lolca" >&2 && return 1; }
    exists splitReg.sh || { echo "you need splitReg.sh" >&2 && return 1; }
    exists tput || { echo "you need tput" >&2 && return 1; }

    alternatingPrettyPrint "${ZPWR_DELIMITER_CHAR}F${ZPWR_DELIMITER_CHAR}iglet ${ZPWR_DELIMITER_CHAR}F${ZPWR_DELIMITER_CHAR}onts ${ZPWR_DELIMITER_CHAR}A${ZPWR_DELIMITER_CHAR}re:"


    if [[ "$ZPWR_BANNER" == ponies ]]; then
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

pygmentcolors(){
    dir="$(command python3 -m pip show pygments | command grep Location | awk '{print $2}')"
    for i in "$dir/pygments/styles/"* ; do
        echo "$i"
    done
}

alias da=detachall
detachall(){
    tmux list-clients | tr -d : |
        perl -ane '`tmux detach-client -t $F[0]`'
}


scripts(){
    (
        {
            gvim -S ~/.vim/sessions/gvim.vim &> /dev/null
            sleep 2
            open -a Terminal.app
        } &>/dev/null &
    )
}

if [[ $ZPWR_LEARN != false ]]; then
    export ZPWR_SCHEMA_NAME=root
    export ZPWR_TABLE_NAME=LearningCollection

    le(){
        test -z "$1" && return 1
        category="programming"
        learning="$(printf -- '%s' "$1" | sed 's@^[[:space:]]*@@;s@[[:space:]]*$@@')"

        if [[ -n "$2" ]]; then
            category="$2"
        fi
        echo "insert into $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME (category, learning, dateAdded) values ('"$category"', '""$learning""', now())" | mysql 2>> "$ZPWR_LOGFILE"
    }


    seee(){
        if test -z "$1"; then
            echo "select id, dateAdded,learning,category from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME order by dateAdded" | mysql 2>> $ZPWR_LOGFILE | cat -n
        else
            echo "select id, dateAdded, learning,category from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME order by dateAdded" | mysql 2>> $ZPWR_LOGFILE | cat -n | perl -lanE 'print "$F[0])\t@F[1..$#F]" if (grep /'"$1"'/i, "@F[1..$#F]")' | ag -i -- "$1"
        fi
    }

    ser(){
        local num=100
        if [[ -n "$1" ]]; then
            num=$1
        fi

        se | shuf -n $num
    }

    sef(){
        se | tac | fzf --ansi
    }

    se(){
        if test -z "$1"; then
            if [[ "$ZPWR_COLORS" = true ]]; then
                echo "select learning from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME order by dateAdded" |
                    mysql 2>> $ZPWR_LOGFILE | nl -b a -n rn -s " $ZPWR_CHAR_LOGO " | perl -pe 's@(\s*)(\d+)\s+(.*)@$1\x1b[35m$2\x1b[0m \x1b[32m$3\x1b[0m@g'
            else
                echo "select learning from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME" |
                mysql 2>> $ZPWR_LOGFILE | nl -b a -n rn -s " $ZPWR_CHAR_LOGO "
            fi

        else
            arg="$1"
            # escaping for perl $ and @ sigils
            argdollar=${arg//$/\\$}
            arg=${argdollar//@/\\@}
            echo "select learning from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME order by dateAdded" | mysql 2>> "$ZPWR_LOGFILE" | nl -b a -n rz -s " $ZPWR_CHAR_LOGO " | perl -E 'open $fh, ">>", "'$ZPWR_TEMPFILE'"; open $fh2, ">>", "'$ZPWR_TEMPFILE2'";while (<>){my @F = split;if (grep m{'"$arg"'}i, "@F[1..$#F]"){say $fh "$F[0]   "; say $fh2 "@F[1..$#F]";}}';
            if [[ -z "$2" ]]; then
                if [[ "$ZPWR_COLORS" = true ]]; then
                    paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@\x1b[0;35m$1\x1b[0m \x1b[0;32m$2\x1b[0m@g' | perl -pe 's@\x1b\[0m@\x1b\[0;1;34m@g'
                else
                paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@$1 $2@g'
                fi
            else
                if [[ "$ZPWR_COLORS" = true ]]; then
                    paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@\x1b[0;35m$1\x1b[0m \x1b[0;32m$2\x1b[0m@g' | perl -pe 's@\x1b\[0m@\x1b\[0;1;34m@g'
                else
                paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@$1 $2@g'
                fi | command grep --color=always -i -E -- "$2"
            fi
            command rm $ZPWR_TEMPFILE $ZPWR_TEMPFILE2
        fi

    }
    qu(){
        ser | fzf -m --ansi
    }

    see(){
        if test -z "$1"; then
            if [[ "$ZPWR_COLORS" = true ]]; then
                echo "select learning,category from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME order by dateAdded" |
            mysql 2>> $ZPWR_LOGFILE | nl -b a -n rn | perl -pe 's@(\s*)(\d+)\s+(.*)@$1\x1b[35m$2\x1b[0m \x1b[32m$3\x1b[0m@g'
            else
                echo "select learning,category from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME" |
                mysql 2>> $ZPWR_LOGFILE | nl -b a -n rn
            fi

        else
            arg="$1"
            # escaping for perl $ and @ sigils
            argdollar=${arg//$/\\$}
            arg=${argdollar//@/\\@}
            echo "select learning,category from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME order by dateAdded" | mysql 2>> "$ZPWR_LOGFILE" | nl -b a -n rz | perl -E 'open $fh, ">>", "'$ZPWR_TEMPFILE'"; open $fh2, ">>", "'$ZPWR_TEMPFILE2'";while (<>){my @F = split;if (grep m{'"$arg"'}i, "@F[1..$#F]"){say $fh "$F[0]   "; say $fh2 "@F[1..$#F]";}}';
            if [[ -z "$2" ]]; then
                if [[ "$ZPWR_COLORS" = true ]]; then
                    paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@\x1b[0;35m$1\x1b[0m \x1b[0;32m$2\x1b[0m@g' | perl -pe 's@\x1b\[0m@\x1b\[0;1;34m@g'
                else
                paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@$1 $2@g'
                fi
            else
                if [[ "$ZPWR_COLORS" = true ]]; then
                    paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@\x1b[0;35m$1\x1b[0m \x1b[0;32m$2\x1b[0m@g' | perl -pe 's@\x1b\[0m@\x1b\[0;1;34m@g'
                else
                paste -- $ZPWR_TEMPFILE <(cat -- $ZPWR_TEMPFILE2 | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@$1 $2@g'
                fi | command grep --color=always -i -E -- "$2"
            fi
            command rm $ZPWR_TEMPFILE $ZPWR_TEMPFILE2
        fi

    }

    createLearningCollection(){
        alternatingPrettyPrint "Creating$ZPWR_DELIMITER_CHAR $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME$ZPWR_DELIMITER_CHAR with$ZPWR_DELIMITER_CHAR MySQL$ZPWR_DELIMITER_CHAR"
        if [[ -n "$1" ]]; then
            #use first arg as mysql password
            if ! echo "select * from information_schema.tables" | mysql -u root -p "$1" | command grep --color=always -q "$ZPWR_TABLE_NAME";then
                echo  "create schema $ZPWR_SCHEMA_NAME if not exists"
                echo  "create schema $ZPWR_SCHEMA_NAME if not exists" | mysql -u root -p "$1"

                echo 'CREATE TABLE `'"$ZPWR_TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$ZPWR_TABLE_NAME"'learning_index` (`learning`))'
                echo 'CREATE TABLE `'"$ZPWR_TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$ZPWR_TABLE_NAME"'learning_index` (`learning`))' | mysql -u root -D "$ZPWR_SCHEMA_NAME" -p "$1"
            else
                echo "$ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME already exists" >&2
            fi
        else
            #use my.cnf
            if ! echo "select * from information_schema.tables" | mysql | command grep --color=always -q "$ZPWR_TABLE_NAME";then
                echo  "create schema if not exists $ZPWR_SCHEMA_NAME"
                echo  "create schema if not exists $ZPWR_SCHEMA_NAME" | mysql

                echo 'CREATE TABLE `'"$ZPWR_TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$ZPWR_TABLE_NAME"'learning_index` (`learning`))'
                echo 'CREATE TABLE `'"$ZPWR_TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$ZPWR_TABLE_NAME"'learning_index` (`learning`))' | mysql -D "$ZPWR_SCHEMA_NAME"
            else
                echo "$ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME already exists" >&2
            fi
        fi
    }

    del(){

        [[ -z "$1" ]] && count=1 || count="$1"
        echo "delete from $ZPWR_SCHEMA_NAME.$ZPWR_TABLE_NAME order by id desc limit $count" | mysql
    }
fi

gitCheckoutRebasePush(){
    git branch -a | head -2 | perl -ane 'if ($F[0] eq "*"){$cur=$F[1]}else{$alt=$F[0]};if ($. == 2){$cmd="git checkout $alt; git rebase $cur;git push;";print "$cmd\n"; `$cmd`}'
}

declare -A _tempAry

jsonToArray(){
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

arrayToJson(){
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

loginCount(){
    perl -e 'print `last -f "$_"`for</var/log/wtmp*>' |
        perl -lane 'print $F[0] if /\S+/ && !/wtmp/' |
        sort | uniq -c | sort -rn
}

needSudo(){
    if [[ ! -w "$1" ]]; then
        return 0
    else
        return 1
    fi
}

regenTags(){

    prettyPrint "Regen ctags to $ZPWR_SCRIPTS/tags and $HOME/tags"
    (
    builtin cd "$ZPWR_SCRIPTS"
    command rm tags 2>/dev/null
    ctags --language-force=sh --fields=+l "$HOME/.zshrc" "$ZPWR_HIDDEN_DIR/.shell_aliases_functions.sh"
    ctags --append --fields=+l * macOnly/*
    command cp tags "$HOME"
    )

}

regenAllKeybindingsCache(){
    prettyPrint "regen vim keybindings cache to to $ZPWR_VIM_KEYBINDINGS and all to $ZPWR_ALL_KEYBINDINGS"
    bash "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh" |
    escapeRemover.pl |
    perl -ne 'print if /\S/' > "$ZPWR_VIM_KEYBINDINGS"

    isZsh && source "$ZPWR_SCRIPTS/keybindingsToFZF.zsh" |
        escapeRemover.pl |
        perl -ne 'print if /\S/' > "$ZPWR_ALL_KEYBINDINGS"
}

searchGitCommon(){
    out="$(goThere)"
    echo "$out"
    eval "$out"
}

regenAllGitRepos(){
        prettyPrint "Regen $ZPWR_ALL_GIT_DIRS with all git dirs from find /"
    {
        while read; do
            dirname $REPLY
        done < <(sudo find / -name .git -type d -prune 2>/dev/null)

    }> "$ZPWR_ALL_GIT_DIRS"
    # removing system read only mounted dirs on macOS
    if [[ $ZPWR_OS_TYPE == darwin ]]; then
        perl -i -pe 's@^/System/Volumes/Data@@' "$ZPWR_ALL_GIT_DIRS"
    fi
}

searchDirtyGitRepos(){
    goThere(){
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
        fzf --preview 'printf "\x1b[1;4;37;44m%s\x1b[0m\n" "git -C {} status -s; git diff --stat -p --color=always HEAD";
cd {} && git status -s && git diff --stat -p --color=always HEAD 2>/dev/null' |
        perl -ne 'print "cd $_"'
    }

    shouldRegen="$1"
    if [[ $shouldRegen == regen ]] || [[ ! -f "$ZPWR_ALL_GIT_DIRS" ]]; then
        regenAllGitRepos
    fi

    searchGitCommon

}

searchAllGitRepos(){

    goThere(){
    cat "$ZPWR_ALL_GIT_DIRS" |
        fzf --preview 'printf "\x1b[1;4;37;44m%s\x1b[0m\n" "git -C {} status; git diff --stat -p --color=always HEAD";
builtin cd {} && git status && git diff --stat -p --color=always HEAD 2>/dev/null' |
        perl -ne 'print "cd $_"'

    }

    shouldRegen="$1"
    if [[ $shouldRegen == regen ]] || [[ ! -f "$ZPWR_ALL_GIT_DIRS" ]]; then
        regenAllGitRepos
    fi

    searchGitCommon
}

regenPowerlineLink(){
    dir="$(sudo python3 -m pip show powerline-status | \grep --color=always '^Location' | awk '{print $2}')/powerline"
    if needSudo "$dir"; then
        prettyPrint "linking $dir to $TMUX_HOME/powerline with sudo"
        echo sudo ln -sf "$dir" "$TMUX_HOME"
        (
            builtin cd "$HOME"
            sudo ln -sf "$dir" "$TMUX_HOME"
        )
    else
        prettyPrint "linking $dir to $TMUX_HOME/powerline"
        echo ln -sf "$dir" "$TMUX_HOME/powerline"
        (
            builtin cd "$HOME"
            ln -sf "$dir" "$TMUX_HOME"
        )
    fi
    command tmux source-file "$HOME/.tmux.conf"
}

goclean() {
    if [[ -z "$1" ]]; then
        echo "need package name" >&2
        return 1
    fi
    local pkg=$1;
    shift
    local ost
    local cnt


    # Set local variables
    if [[ "$(uname -m)" == "x86_64" ]];then
        ost="$(uname | tr A-Z a-z)_amd64"
    fi

    # Delete the source directory and compiled package directory(ies)
    local src_dir="$GOPATH/src/$pkg"
    local bin_dir="$GOPATH/pkg/$ost/$pkg"

    if [[ ! -d "$src_dir" ]]; then
        echo "$src_dir from $pkg does not exist" >&2
        return 1
    fi
    if [[ ! -d "$bin_dir" ]]; then
        echo "$bin_dirfrom $pkg does not exist" >&2
    fi
    # Clean removes object files from package source directories (ignore error)
    go clean -i $pkg 2>/dev/null

    echo rm -rf "$src_dir"
    echo rm -rf "$bin_dir"
    rm -rf "$src_dir"
    rm -rf "$bin_dir"

}

timer() {
    local count=100
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
            runtime=$(((end-start)/1000000.0))
            ((total += runtime))
        done
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

changeGitEmail(){
    if [[ -z "$2" ]]; then
        echo "need two args" >&2 && return 1
    fi

    if ! isGitDir; then
        echo "not a git dir" >&2 && return 1
    fi

    oldEmail="$1"
    newEmail="$2"

    git filter-branch --commit-filter '
    if [ "$GIT_AUTHOR_EMAIL" = "'$oldEmail'" ]; then
        GIT_AUTHOR_EMAIL="'$newEmail'"; git commit-tree "$@";
    else
        git commit-tree "$@";
    fi' HEAD
}



#}}}***********************************************************

#{{{                    MARK:Global Alias
#**************************************************************
alias exa="$ZPWR_EXA_COMMAND"
exists hexedit && alias he='hexedit -l 16'
#}}}***********************************************************
