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
        #export CPATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
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
alias sa='sudo -E cat -n'
alias ra='sudo -E rm -rf --'
alias die='sudo -E kill -9 --'
alias da=detachall

if exists emacs; then
    alias emacs="$ZPWR_EMACS"
    alias ee="$ZPWR_EMACS_CLIENT"
    alias me='source em-server.sh'
fi

test -d "$PYSCRIPTS" && alias py="cd $PYSCRIPTS"
alias p2="python2"
alias p3="python3"

exists fc && alias please='sudo -E $(fc -ln -1)'

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
alias sin="./configure && make && sudo -E make install"
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
    alias sudoedit='sudo -E $EDITOR'
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
                alias sv='sudo -E mvim -v'
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
            alias api="sudo -E pacman -Sy --noconfirm"
            alias apa="sudo -E pacman -Syyu --noconfirm --overwrite='*'"
            alias apz="sudo -E pacman -Syyu --noconfirm --overwrite='*';u8"
        elif exists zypper;then
            alias api="sudo -E zypper install -y"
            alias apa="sudo -E zypper update; sudo -E zypper dist-upgrade -y"
            alias apz="sudo -E zypper update; sudo -E zypper dist-upgrade -y; u8"
        elif exists apt;then
            alias api="sudo -E apt install -y"
            alias apa="sudo -E apt update; sudo -E apt dist-upgrade -y; sudo -E apt autoremove -y; sudo -E apt clean"
            alias apz="sudo -E apt update; sudo -E apt dist-upgrade -y; sudo -E apt autoremove -y; sudo -E apt clean; u8"
        elif exists yum;then
            alias api="sudo -E yum install -y"
            alias apa="sudo -E yum check-update; sudo -E yum upgrade -y "
            alias apz="sudo -E yum check-update; sudo -E yum upgrade -y; u8"
        fi

        alias ipt="sudo -E iptables --line-numbers -L"
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
            alias api="sudo -E pkg install -y"
            alias apa="yes | sudo pkg -E update; sudo -E pkg upgrade -y"
            alias apz="yes | sudo pkg -E update; sudo -E pkg upgrade -y;u8"
    else
        loggErr "unsupported OS $ZPWR_OS_TYPE"
    fi
    chooseNvimVim
fi
alias tclsh="rlwrap tclsh"
alias logs="sudo -E tail -f /var/log/**/*.log | ccze"
alias beats="sudo -E tail -f /var/log/*beat/* | ccze"
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
if commandExists systemctl; then

    if isZsh; then
        eval 'autoload -z $ZPWR_AUTOLOAD_SYSTEMCTL/*(.:t)'
    fi

fi

alias gcl >/dev/null 2>&1 && {
    unalias gcl
}

alias zpg=zpgh
alias zp=zpwr
alias zpw=zpwr
alias zpwrgh=zpwr

function cd(){

    # builtin is necessary here to distinguish
    # bt function name and builtin cd command
    # don't want to recursively call this function
    builtin cd "$@"
    if [[ $ZPWR_CD_AUTO_LS == true ]]; then
        clearList
    fi
}

exists pssh && function pir(){

    if ! test -s "$ZPWR_LOCAL/hosts.txt"; then
        loggErr "you need hosts.txt in your $ZPWR_LOCAL"
        return 1
    fi
    pssh --inline-stdout --timeout 90 -h "$ZPWR_LOCAL/hosts.txt" "$@"
}

if [[ $ZPWR_LEARN != false ]]; then
    export ZPWR_SCHEMA_NAME=root
    export ZPWR_TABLE_NAME=LearningCollection
fi
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
