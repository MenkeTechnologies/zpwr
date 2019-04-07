      #..                   .x+=:.               
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
echo $SHELL | grep -q zsh && {
    exists(){
        #alternative is command -v
        type "$1" &>/dev/null || return 1 && type "$1" 2>/dev/null | command grep -qv "suffix alias" 2>/dev/null
    }

} || {
    exists(){
        #alternative is command -v
        type "$1" >/dev/null 2>&1
    }
}

#}}}***********************************************************

#{{{                    MARK:Global Vars
#**************************************************************
export TMUX_PREFIX=x
export TMUX_REMOTE_PREFIX=b
PI_ARRAY=(r1:apt r2:apt r3:dnf r4:zypper)
export PI_ARRAY
export DELIMITER_CHAR='%'
#bash xtrace
export PS4='>\e[1;4;39m${BASH_SOURCE}\e[37m\e[0;34m__${LINENO}\e[37m__\e[0;32m${FUNCNAME[0]}> \e[0m'
#zsh xtrace
export PROMPT4=$'\e[34m%x\t%0N\t%i\t%_\e[0m\t'
export NMON='mndckt'
export GITHUB_ACCOUNT='MenkeTechnologies'
export REPO_NAME="zpwr"
export ZSH_COMP_REPO_NAME="zsh-more-completions"
export CLICOLOR="YES"
export LSCOLORS="ExFxBxDxCxegedabagacad"
export SCRIPTS="$HOME/Documents/shellScripts"
export PYEXECUTABLES="$HOME/Documents/pythonScripts"
export PYSCRIPTS="$HOME/PycharmProjects/fromShell"
export D="$HOME/Desktop"
export DL="$HOME/Downloads"
export XAUTHORITY="$HOME/.Xauthority"
export TERMINAL_APP="Terminal.app"
export TERM="xterm-256color"
export HOMEBREW_HOME_FORMULAE="/usr/local/Homebrew/Library/taps/homebrew/homebrew-core/formula"
export YARN_HOME="$HOME/.config/yarn"
export NODE_HOME="/usr/local/lib/node_modules"
export PERL5LIB="$HOME/perl5/lib/perl5"
export NODE_PATH="/usr/local/lib/node_modules:$YARN_HOME/global/node_modules"
export HISTSIZE=50000
export HISTTIMEFORMAT=' %F %T _ '
export BLUE="\e[37;44m"
export RED="\e[31m"
export RESET="\e[0m"
export LOGFILE="$HOME/updaterlog.txt"
export UMASK=077
export LESS="-M -N -R -K -F -X -S"
export PSQL_EDITOR='vim -c "setf sql"'
export EXA_COMMAND='command exa --git -il -F -H --extended --color-scale -g -a'

#}}}***********************************************************

#{{{                    MARK:ENV Var
#**************************************************************
echo "$PATH" | grep -iq shellScripts || {
    export PATH="$PATH:$HOME/go/bin:/usr/local/lib/python2.7/site-packages/powerline/scripts/"
    export PATH="$PYEXECUTABLES:$SCRIPTS/save-run:$HOME/.local/bin:$HOME/perl5/bin:$SCRIPTS:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/sbin:$PATH"

    [[ "$(uname)" == Darwin ]] && {
        export PATH="$SCRIPTS/macOnly:$HOME/.tokenScripts:$PATH:$HOME/.platformio/penv/bin"
        export PATH="$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/tools/bin:$HOME/Library/Android/sdk/platform-tools:/Library/Developer/CommandLineTools/usr/bin:$PATH"
    } || {
        export PATH="$PATH:/usr/games"
    }

    exists yarn && export PATH="$(yarn global bin):$PATH"

#}}}***********************************************************

#{{{                           MARK:HOMES
#**********************************************************************
    [[ "$(uname)" == Darwin ]] && {
        if exists jenv;then
            eval "$(jenv init -)"
            test -z "$JAVA_HOME" && jenv enable-plugin export &>/dev/null
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
        export EDITOR='mvim -v'
    } || {
        export EDITOR='vim'
    }
#**************************************************************
#}}}

#{{{                    MARK:Rust
#**************************************************************
    export PATH="$HOME/.cargo/bin:$PATH"
    exists exa && {
        alias exa="$EXA_COMMAND"
        if [[ $CUSTOM_COLORS = true ]]; then
            export LS_COLORS="fi=38:di=32;1:ex=31;1"
            export EXA_COLORS="in=34:ur=32:uw=32:ux=32:gr=33:gw=33:gx=33:tr=31:tw=31:tx=31:xx=34:uu=38:gu=32:lc=32;1:un=41;37;1:gn=43;37;1:sb=4;1:xa=1;34:df=31;46;1:ds=31;45;1:lp=36;1:cc=1;31;46:da=34:b0=31;1;4:gm=32;1;4:ga=36;1;4:gd=34;1;4:gv=35;1;4:gt=37;1;4"
        fi
    }

#}}}***********************************************************

#{{{                    MARK:GO
#**************************************************************
    export GOPATH="$HOME/go"

    test -s "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash" \
        && source "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash"
}
#}}}

#{{{                          MARK:ALIASES
#**********************************************************************
#portable aliases
unalias rm &>/dev/null
rm(){
    command rm -v "$@"
}
exists c.pl && {
    alias pp='c.pl'
    alias ppp='c.pl *'
}
alias dirs='dirs -v'
exists proxychains && alias pc='proxychains'
exists proxychains4 && alias pc='proxychains4'
alias lo="tail -n 100 -F $LOGFILE"
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
test -d "$PYSCRIPTS" && alias py="cd $PYSCRIPTS"
alias p2="python2"
alias p3="python3"
test -d "$HOME/Desktop" && alias d="cd \$HOME/Desktop"
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
echo $SHELL | grep -q zsh && {
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
alias brc="vim -S ~/.vim/sessions/aliases.vim + ~/.shell_aliases_functions.sh; source ~/.shell_aliases_functions.sh; bash $SCRIPTS/backupBashConfig.sh 2> /dev/null"
alias zrc="vim -S ~/.vim/sessions/zshrc.vim + ~/.zshrc; source ~/.zshrc"
alias trc="vim -S ~/.vim/sessions/trc.vim ~/.tmux.conf"
#}}}***********************************************************
alias deleteTab="sed '/^[\x20\x09]*$/d'"
alias ba="bash"
alias upper="tr 'a-z' 'A-Z'"
#over aliases
pwd | grep -q --color=always / 2>/dev/null && {
    alias grep="grep --color=always"
}
pwd | egrep -q --color=always / 2>/dev/null && {
    alias egrep="egrep --color=always"
}
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
alias gpf='git push --force'
alias glf='git pull --force'
alias gla='git log --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --stat -p '
alias glaa='git log --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --stat -p --all'
alias glz='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --stat -p'
alias glzz='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --stat -p --all'
alias gacp='git add . && git commit -m "" && git push'
alias gac='git add . && git commit -m '
alias gbv='git branch -a -vv'
alias allRebase='git rebase -i $(git rev-list --max-parents=0 HEAD)'

if [[ "$(uname)" == "Darwin" ]]; then
    #Darwin specific aliases
    alias p_refresh="pio -f -c clion init --ide clion "
    alias spd="du -csh {.[^.]*,..?*} * 2> /dev/null | gsort -h"
    alias cpu="top -o cpu"
    alias mem="top -o mem"
    alias tip="top -o +command"
    alias nd="defaults write com.apple.dock autohide-delay -float 100 && defaults write com.apple.dock tilesize -int 1 && killall Dock"
    alias bsaver="nohup /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background > /dev/null &"
    alias n="open $HOME/mnt/ds/JAKENAS/softwareTutorials"
    alias cps='cd $WCC'
    alias emu='cd $SD/emu'
    alias pkill="pkill -iIl"
    alias q="qlmanage -p &>/dev/null"
    #keep remote tty sessions alive by stopping sleep
    #sudo pmset -c ttyskeepawake 1
    alias v1="open -a 'vnc viewer';execpy enterPasswordForVNC.py & bash $SCRIPTS/sshTunnelVnc.sh" 
    alias v2="open -a 'vnc viewer';execpy enterPasswordForVNC2.py & bash $SCRIPTS/sshTunnelVnc2.sh"
    alias rtsync="$HOME/Documents/shellScripts/macOnly/rsyncr.sh"
    alias ig='cd $HOME/IdeaProjects'
    alias pg='cd $HOME/PycharmProjects'
    alias cg='cd $HOME/ClionProjects'
    alias wg='cd $HOME/WebstormProjects'
    alias rg='cd $HOME/RubymineProjects'
    alias asg='cd $HOME/AndroidStudioProjects'
    alias xg='cd $HOME/Documents/xcode'
    alias ap='cd /Applications'
    alias sudoedit='sudo $EDITOR'
    alias tra='cd $HOME/.Trash'
    alias co="bash $SCRIPTS/macOnly/commandToColors.sh"
    alias bl='brew link --force --overwrite'
    exists gls && \
        alias lr='grc -c "$HOME/conf.gls" gls -iAlhFR --color=always' \
        || alias lr='grc -c "$HOME/conf.gls" ls -iAlhFR'
    exists mvim && { 
        alias v='mvim -v'
        alias vi='mvim -v'
        alias vim='mvim -v'
        alias vm='mvim -v -u ~/.minvimrc'
        alias sv='sudo mvim -v'
    }
else
    #Linux or Unix
    alias ip="grc -c $HOME/conf.ifconfig ip"
    alias lr='grc -c "$HOME/conf.gls" ls -iAlhFR --color=always'
    test -d "$HOME/.local/share/Trash" && \
        alias tra='cd $HOME/.local/share/Trash'
    if [[ "$(uname)" == Linux ]]; then
        alias api="sudo apt-get install -y"
        alias ipt="sudo iptables --line-numbers -L"
        test -z "$distroName" && {
            distroName=$(command grep "^ID=" /etc/os-release | cut -d= -f2 | tr -d \" | head -n 1)
        }
        case $distroName in
            (raspbian)
                source "$HOME/.rpitokens.sh"
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

    exists vim && { 
        alias v=vim
        alias vi=vim
        alias vm='vim -u ~/.minvimrc'
        alias sv='sudo vim'
    }
fi
alias tclsh="rlwrap tclsh"
alias logs="tail -f /var/log/**/*.log | ccze"
alias matr="cmatrix -C blue -abs"
alias tm="python3 $PYSCRIPTS/tmux_starter.py"
alias tmm="python3 $PYSCRIPTS/ssh_starter.py" 
alias tmm_full="python3 $PYSCRIPTS/complete_ssh_starter.py" 
alias inst="bash $SCRIPTS/tgzLocalInstaller.sh"
#**********************************************************************

#                           MARK:PYTHON SCRIPTS
#**********************************************************************
alias mapit="execpy mapIt.py"
alias ,,="execpy amazonSearch.py"
alias shutpy="execpy shutdown.py"
alias pb="execpy bills.py"
alias ud=" execpy udemy.py"
alias ipa="command ifconfig | command grep 'inet\s' | grep -v 127 | awk '{print \$2}' | sed 's@addr:@@' | head -1"
alias pgrep='pgrep -l'
#**********************************************************************
#                           MARK:SHELL SCRIPTS
#**********************************************************************
alias ct="bash $SCRIPTS/createTextFile.sh"
alias u="bash $SCRIPTS/upLoadPi.sh"
alias u2="bash $SCRIPTS/upLoadPi2.sh"
alias pw="bash $SCRIPTS/uploadWebPi.sh"
alias ud="bash $SCRIPTS/upLoadDS.sh"
alias uweb="bash $SCRIPTS/uploadWebDS.sh"
alias sy="bash $SCRIPTS/sync.sh"
alias sf="bash $SCRIPTS/directoryContentsSize.sh"
alias sc='cd $SCRIPTS'
alias bluef='source $SCRIPTS/blueText.sh'
alias dl='cd $HOME/Downloads'
alias docu='cd $HOME/Documents'
alias mus='cd $HOME/Music'
alias jobs="jobs -l"
alias u8="bash -l updater.sh"
alias sd="clear;ssh d "
alias gitgo='$SCRIPTS/gitgo.sh'
alias watchGit='bash $SCRIPTS/watchServiceFSWatchGit.sh'
alias watchPiWeb='bash $SCRIPTS/watchServiceFSWatchPiWeb.sh'
alias cl=clear
alias mkdir='mkdir -pv'
#**********************************************************************
#                           MARK:REMOTE SHELLS SCRIPTS
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
        cd "$cdstr"
    fi
}

[[ "$(uname)" == "Darwin" ]] && {

    exe(){
        python3 "$PYSCRIPTS/ssh_runner.py" "$@"
    }

    nn(){
        [[ -z "$2" ]] && echo \
            "Title is \$1 and message is \$2..." \
            >&2 && return 1
        title="$1"
        msg="$2"
        echo "display notification \"$msg\" with title \"$title\"" | osascript 
    }

    db(){
        python3 "$PYSCRIPTS/loginDBChrome.py"
    }

    db2(){
        python3 "$PYSCRIPTS/logIntoMyDB.py"
    }

    scriptToPDF(){
        tempFile=__test.ps
        vim "$1" -c "hardcopy > $tempFile" -c quitall; cat "$tempFile" | open -fa Preview; rm "$tempFile"
    }

} || {
    exists ps2pdf && {
        scriptToPDF(){
            tempFile=__test.ps
            vim "$1" -c "hardcopy > $tempFile" -c quitall; ps2pdf "$tempFile" "${1%%.*}".pdf ; rm "$tempFile"
        }
    }

    restartpoll(){
        src_dir="$HOME/forkedRepos/$REPO_NAME"
        test -d "$src_dir" || { echo "$src_dir does not exists." >&2 && return 1; }
        test -d "/etc/systemd/system" || { echo "/etc/systemd/system does not exists. Is systemd installed?" >&2 && return 1; }
        git -C "$src_dir" pull
        if [[ $UID != 0 ]]; then
            perl -i -pe "s@pi@$USER@g" "$src_dir/poll.service"
        else
            perl -i -pe "s@pi@$USER@g;s@/home/root@/root@;" "$src_dir/poll.service"
        fi
        sudo cp "$HOME/forkedRepos/$REPO_NAME/poll.service" /etc/systemd/system
        sudo systemctl daemon-reload
        sudo systemctl restart poll.service
        sudo systemctl --no-pager -l status poll.service
        sudo journalctl -f
    }
}
cloneToForked(){
    branch=master
    (
        if [[ -z "$1" ]]; then
            builtin cd "$HOME/forkedRepos" || return 1
        else
            builtin cd "$@" || return 1
        fi
        git clone -b "$branch" "https://github.com/$GITHUB_ACCOUNT/$REPO_NAME.git"
    )
}

s(){

    exists subl && cmd=subl || cmd="$(getOpenCommand)"
    type -a s | grep -qv function && sec_cmd=s || sec_cmd="$cmd"
    if [[ $sec_cmd == s ]]; then
        [[ -z "$1" ]] && $cmd . || command s "$@"
    else
        [[ -z "$1" ]] && $cmd . || $sec_cmd "$@"
    fi
}

logg(){
    if [[ -p /dev/stdin ]]; then
        {
            printf "\n_____________$(date)____"
            cat
            printf "\n"
        } >> "$LOGFILE"
    else
        [[ -z "$1" ]] && echo "need arg" >&2 && return 1
        {
            printf "\n_____________$(date)____"
            printf "%s " "$@"
            printf "\n"
        } >> "$LOGFILE"
    fi
}

xx(){
    local counter cmd DONE
    cmd="$1"
    [[ -z "$2" ]] && counter=100 || counter="$2"

    trap 'DONE=true' QUIT
    DONE=false
    for iter in {1..$counter} ; do
       [[ $DONE == true ]] && break || eval "$cmd"
    done

    trap QUIT
}

url_safe(){
    cat | base64 | tr '+/=' '._-'
}

cgh(){
    [[ -z "$1" ]] && user="$GITHUB_ACCOUNT" || user="$1"
    curl -s "https://github.com/$user" | \
        command grep -E '[0-9] contributions' | sed 1q | tr -s ' '
}

upload(){
    \curl -vvv -fsSL -F file=@"$1" http://"$2"
}

jd(){
    for dir;do
        command mkdir -p "$dir"
    done
}

j(){
    for file;do
        dirname="$(dirname $file)"
        [[ "$dirname" != . ]] && command mkdir -p "$dirname"
        touch "$file"
    done
}

scnew(){
    [[ -z "$1" ]] && echo "no arg..." >&2 && return 1

    bash '$HOME/Documents/shellScripts/createScriptButDontOpenSublime.sh' "$1"
}

p(){
    if [[ "$(uname)" == Linux || "$(uname)" == Darwin ]]; then
        [[ -z $1 ]] && ps -ef && return 0
        out="$(ps -ef)"
    else
        [[ -z $1 ]] && ps aux && return 0
        out="$(ps aux)"
    fi

    for cmd; do
        prettyPrint "SEARCH TERM: $cmd"
        echo "$out" | command fgrep --color=always -a -i -- "$cmd" \
            || echo "Nothing found for $cmd."
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
    subl "$SCRIPTS"
    f "$SCRIPTS"
    python3 "$PYSCRIPTS/textEditorTwoColumns.py"
}

allRemotes(){
    while read; do
        printf "\x1b[1;34m$REPLY"
        printf "\x1b[0m\x0a"
        git remote show "$REPLY"
    done < <(git remote)
}

clearList() {
    if [[ "$(uname)" == "Darwin" ]]; then
        exists exa && ls_command="$EXA_COMMAND" || {
            exists grc && {
                ls_command="grc -c $HOME/conf.gls \
                gls -iFlhAd --color=always"
            } || {
                ls_command="ls -iFlhAOd"
            }
        }
        lib_command="otool -L"
    elif [[ "$(uname)" == Linux ]];then

        exists exa && ls_command="$EXA_COMMAND" || {
            exists grc && {
                ls_command="grc -c $HOME/conf.gls \
                ls -iFlhA --color=always"
            } || {
                ls_command="ls -iFhlA"
            }
        }
        lib_command="ldd"
    else
        exists grc && {
                ls_command="grc -c $HOME/conf.gls \
                ls -iFlhA"
            } || {
                ls_command="ls -iFhlA"
            }
        lib_command="ldd"
        
    fi
        if [[ -n "$1" ]]; then
            for arg in "$@"; do
                exists $arg &&  {
                    #exe matching
                    while read loc;do
                        lf="$(echo $loc|cut -d' ' -f3-10)"
                        [[ -f "$lf" ]] && {
                            prettyPrint "$lf" && \
                            eval "$ls_command" $lf \
                            && prettyPrint "FILE TYPE:" && \
                            eval "file $lf" && \
                            prettyPrint "DEPENDENT ON:" && \
                            eval "$lib_command $lf"
                            prettyPrint "SIZE:"
                            du -sh "$lf"
                            prettyPrint "STATS:"
                            stat "$lf"
                            prettyPrint "MAN:"
                            man -wa "$(basename $lf)"
                            echo
                            echo
                        } || {
                            echo "$loc"
                            echo "$loc" | command grep -q \
                                "function" && {
                                type -f "$(echo "$loc" | \
                                awk '{print $1}')" | cat -n
                            }
                            echo "$loc" | command grep -q \
                                "alias" && {
                                alias "$(echo "$loc" \
                                | awk '{print $1}')"
                            }
                            echo
                            echo
                        }
                    done < <(type -a "$arg" | sort | uniq)
                } || {
                    #path matching, not exe
                    prettyPrint "$arg"
                    eval "$ls_command -d \"$arg\"" \
                            || { echo; continue; }
                    echo
                    prettyPrint "FILE TYPE:"
                    file "$arg"
                    prettyPrint "SIZE:"
                    du -sh "$arg"
                    prettyPrint "STATS:"
                    stat "$arg"
                    #for readibility
                    echo
                    echo
                }
            done
        else
            clear && eval "$ls_command"
        fi
}

listNoClear () {
    exists exa && eval "$EXA_COMMAND" && return 0

    if [[ "$(uname)" == "Darwin" ]]; then
        exists grc && {
            grc -c "$HOME/conf.gls" gls \
            -iFlhA --color=always
        } || ls -iFlhAO
    else
        exists grc && {
            grc -c "$HOME/conf.gls" \
            ls -iFlhA --color=always
        } || ls -ifhla
    fi
}

animate(){
    bash "$SCRIPTS/animation"
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
        echo "$1" | \egrep '\-[0-9]+' && cd "$1" && return 0
        base="$(dirname "$1")"
        while [[ "$base" != / ]]; do
            test -d "$base" && cd "$base"&& return 0
            base="$(dirname "$base")"
        done
        echo "Not a valid file or directory." >&2 && return 1
    fi
}

execpy(){
    script="$1"
    shift
    python3 "$PYSCRIPTS/$script" "$@"

}

search(){
    [[ -z $2 ]] && command grep -iRnC 5 "$1" * || \
        command grep -iRnC 5 "$1" "$2"
}

cd(){
    #builtin is necessary here to distinguish
    #bt function name and builtin cd command
    #don't want to recursively call this function
    builtin cd "$@" && clearList
}

contribcount(){
    lines="$(git status > /dev/null && git log --pretty="%an" | sort | uniq -c | sort -rn)"
    lineCount="$(echo $lines | wc -l)"
    if (( $lineCount > 10 )); then
        echo "$lines" | perl -panE 's@(\d) (\D)(.*)$@\1'" $DELIMITER_CHAR"'\2\3'"$DELIMITER_CHAR@" | \
            alternatingPrettyPrint | less -r
    else
        echo "$lines" | perl -panE 's@(\d) (\D)(.*)$@\1'" $DELIMITER_CHAR"'\2\3'"$DELIMITER_CHAR@" | \
            alternatingPrettyPrint
    fi
}

gsdc(){
    git status &> /dev/null || {
        printf "\x1b[0;1;31m"
        printf "NOT GIT DIR: $(pwd -P)\n" >&2
        printf "\x1b[0m"
        return 1
    }

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

	git status | command grep -q "nothing to commit" && {
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
        if echo "$SHELL" | command grep -q zsh ; then
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
    currentDir="$(pwd -P)"
    for dir in "${BLACKLISTED_DIRECTORIES[@]}" ; do
       if [[ "$currentDir" == "$dir" ]]; then
           return 1
       fi 
    done

    echo
    git pull
    git add .
    git commit -m "$1"
    git push
}

replacer(){
    orig="$1"
    replace="$2"
    shift 2
    test -n "$3" && {
        for file in "$@" ; do
            sed -i'' "s@$orig@$replace@g" "$file"
        done
    } || {
        cat | sed "s@$orig@$replace@g"
    }
}

creategif(){
    outFile=out.gif
    res=600x400

    test -z "$1" && echo "One arg needed..." >&2 && return 1

    test -n "$2" && res="$2"

    test -n "$3" && outFile="$3"	

    ffmpeg -i "$1" -s "$res" -pix_fmt rgb24 -r 10 -f gif - \
        | gifsicle --optimize=3 --delay=3 > "$outFile" 
}

hc(){
    [[ -z "$1" ]] && reponame="$(basename "$(pwd)")" \
        || reponame="$1"
    printf "\e[1m"
    old_dir="$(pwd)"
    test -n "$1" && cd "$reponame"

    git init
    hub create "$reponame"
    echo "# $reponame" > README.md
    echo "# created by $GITHUB_ACCOUNT" >> README.md
    git add .
    git commit -m "first commit"
    git push --set-upstream origin master
    test -n "$1" && cd "$old_dir"
    printf "\e[0m"
}

hd(){
    [[ -n "$1" ]] && repo="$1" && user="$(echo "$GITHUB_ACCOUNT")" || {
		line="$(git remote -v 2>/dev/null | sed 1q)" && {
            echo "$line" | command grep -q 'git@' && {
                #ssh
        
                user="$(echo $line | awk -F':' '{print $2}' | awk -F'/' '{print $1}')"
                repo="$(echo $line | awk -F'/' '{print $2}' | awk '{print $1}')"
            } || {
                #http
                user="$(echo $line | awk -F'/' '{print $4}')"
                repo="$(echo $line | awk -F'/' '{print $5}' | awk '{print $1}')"
            }
		}
	}
    user="$(echo "$user" | tr 'A-Z' 'a-z')"

    test -z "$repo" && echo "bad repo $repo" >&2 && return 1
    test -z "$user" && echo "bad user $user" >&2 && return 1

    out="$(curl -u "$user" -X DELETE "https://api.github.com/repos/$user/$repo")"

    printf "\e[1m"
    [[ -z "$out" ]] && echo "Successful deletion of $repo" \
        || {
        echo "Error in deletion of $repo"
        echo "$out"
    }
    printf "\e[0m"
}

pstreemonitor(){
    bash $SCRIPTS/myWatchNoBlink.sh "pstree -g 2 -u $USER | sed s@$USER@@ | sed s@/.*/@@ | tail -75"
}

return2(){
    exec 2> /dev/tty
}

color2(){
    exec 2> >(redText.sh)
}

escapeRemove(){
    while read; do
        echo "$REPLY" | sed -e 's@\e\[.\{1,5\}m@@g'
    done
}

prettyPrint(){
    [[ -n "$1" ]] && printf "\e[1m$1\e[0m\n" || {
        echo "Need one arg" >&2
        return 1
    }
}

alternatingPrettyPrint(){
    local counter
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$DELIMITER_CHAR" -anE '
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
        echo "$@" | perl -F"$DELIMITER_CHAR" -anE '
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
    command mkdir "$dir" && cd "$dir" && \
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
        command grep -q '<component name="RunManager" selected=' \
            .idea/workspace.xml && {
            perl -E 'say "_"x100' | lolcat
            figletRandomFontOnce.sh "MATCH ENJOY>>>>" \
            | ponysay -W 120
            perl -E 'say "_"x100' | lolcat
            sed 's@<component name="RunManager" selected=.*@<component name="RunManager" selected="Application.PLATFORMIO_JAKE"><configuration name="PLATFORMIO_JAKE" type="CMakeRunConfiguration" factoryName="Application" CONFIG_NAME="Debug" TARGET_NAME="PLATFORMIO_JAKE" PASS_PARENT_ENVS_2="true" PROJECT_NAME="'$1'" RUN_PATH="$PROJECT_DIR$/Runner.sh"><envs /><method> <option name="com.jetbrains.cidr.execution.CidrBuildBeforeRunTaskProvider$BuildBeforeRunTask" enabled="false" /></method></configuration>@' .idea/workspace.xml > x.xml && mv x.xml .idea/workspace.xml && return 0

    } || echo "No Match Yet" >&2
    sleep 1
    done
}

getOpenCommand(){
    OS="$(uname -s)"
    case "$OS" in
        Linux*)     open_cmd=xdg-open;;
        Darwin*)    open_cmd=open;;
        CYGWIN*)    open_cmd=cygstart;;
        MINGW*)     open_cmd=start;;
        *)          echo "Your OS: $OS is unsupported..." >&2 && return 2;;
    esac
    echo "$open_cmd"
}

unalias o &>/dev/null
o(){
    open_cmd="$(getOpenCommand)" || return 1

    if [[ -z "$1" ]]; then
        $open_cmd .
    else
        $open_cmd "$@"
    fi

}

reveal() {
    open_cmd="$(getOpenCommand)" || return 1

    git rev-parse --git-dir &>/dev/null || { echo "Not a git directory" >&2 && return 1; }

    command git remote -v | command grep "$1" | command grep 'heroku' | command grep fetch | command grep -o -E ':.*' | \
    cut -c 19- | command awk '{print $1}' | command sed 's@.git$@@' | \
    command xargs -I {} "$open_cmd" https://dashboard.heroku.com/apps/{} https://{}.herokuapp.com

  {
    command git remote -v | command grep "$1" | command grep '@'  | command grep -o -E '@.*' | cut -c 2-
    command git remote -v | command grep "$1" | command grep '//' | command grep -o -E ':.*' | cut -c 4- | command grep -v 'heroku'
  } | command grep fetch | command sed 's@:/\\@@g' | command awk '{print $1}' | sed 's@.git$@@' | command xargs -I {} "$open_cmd" https://www.{}
}


openmygh(){
    open_cmd="$(getOpenCommand)" || return 1

    $open_cmd "https://github.com/$GITHUB_ACCOUNT"
}
eval "alias $GITHUB_ACCOUNT=openMyGH"

getrc(){
    if [[ -z "$1" ]]; then
        branch=master
    else
        branch="$1"
    fi

    if [[ $(uname) == Darwin ]]; then
        if exists dialog;then
            dialog --inputbox "Are you sure that you want to overwrite your .zshrc,.vimrc,.tmux.conf, .shell_aliases_functions.sh?(y/n) >>> " 12 40 2> /tmp/temp$$
            clear
            REPLY="$(cat /tmp/temp$$)"
            rm /tmp/temp$$
        else
            printf "Are you sure that you want to overwrite your .zshrc,.vimrc,.tmux.conf, .shell_aliases_functions.sh?(y/n) >>> "
            read
        fi
        [[ $REPLY != "y" ]] && clearList && return 0
    fi
    cd "$HOME"
    git clone -b "$branch" "https://github.com/$GITHUB_ACCOUNT/$REPO_NAME.git"
    cd "$REPO_NAME"
    cp .shell_aliases_functions.sh "$HOME"
    cp .zshrc "$HOME"
    cp .vimrc "$HOME"
    cp .tmux.conf "$HOME"
    cp conf.gls "$HOME"
    cp conf.df "$HOME"
    cp .powerlevel9kconfig.sh "$HOME"
    cp conf.ifconfig "$HOME"
    cp grc.zsh "$HOME"
    cp .inputrc "$HOME"
    cp -R .tmux/* "$HOME/.tmux"
    cp -f scripts/* "$SCRIPTS"
    cd ..

    COMPLETION_DIR="$HOME/.oh-my-zsh/custom/plugins/zsh-more-completions"
    test -d "$COMPLETION_DIR" && git -C "$COMPLETION_DIR" pull

    rm -rf "$REPO_NAME"
    test -n "$TERM" && exec "$SHELL"

}

getrcdev(){
    getrc dev
}

rename(){
    search="$1"
    shift
    for file in "$@"; do
        [[ -d "$file" ]] && continue
        out=$(echo "$file" | sed -n "$search"p \
            |  wc -l | tr -d ' ')
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
    printf 'AUTHENTICATE ""\r\nsignal NEWNYM\r\nQUIT' \
    | nc 127.0.0.1 9051
}

mycurl(){
    \curl -fsSL -A "Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3" -v "$@" 2>&1 | sed "/^*/d" | sed -E "s@(<|>) @@g" | sed -E "/^(\{|\}| ) (\[|C)/d"
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

    [[ -z "$1" ]] && echo "need an arg" >&2 && return 1
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
            echo $SHELL | grep -q zsh && \
                exe=(proxychains4 -q) || \
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
                exists lolcat && echo "$out" | \
                    lolcat -f || echo "$out"
                echo
                if echo "$out" | command grep -q 'address';then 
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
                    if echo "$out" | grep -q 'No match';then
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
                    if echo "$out" | grep -q 'No match';then
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
                if exists http;then 
                    prettyPrint "HTTPIE: $url"
                    $exe http -v --follow --pretty=all "$url"
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

        echo $SHELL | grep -q zsh && \
            colo=(grc --colour=on) || \
            colo="grc --colour=on "

        if exists dig;then
            for url in "$@"; do
                noport="$(echo "$url" | sed -E 's@(.*\.[^/]+)(/.*)$@\1@' | sed -E 's@:[0-9]{1,4}$@@')"
                exec 2>&1
                prettyPrint "DIG: $noport"
                $colo $exe dig +trace "$noport"
                noproto="$(echo "$noport" | sed -E 's@https://|http://@@')"
                prettyPrint "HOST: $noproto"
                out="$($colo $exe host "$noproto")"
                exists lolcat && echo "$out" | lolcat -f || echo "$out"
                echo
                echo
                if echo "$out" | command grep -q 'address';then 
                    #regular domain name
                    ip="$(echo "$out" | command grep 'address' | head -n 1 | awk '{print $4}')"
                    if [[ ${noproto: -1} == "." ]]; then
                        noproto="${noproto:0:-1}"
                    fi
                    prettyPrint "DIG: $ip"
                    $colo $exe dig -x "$ip"
                    primary="$(echo "$noproto" | sed -E 's@^(.*)\.([^.]+)\.([^.]+)$@\2.\3@')"
                    out="$($exe whois "$primary")"
                    if echo "$out" | grep -q 'No match';then
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
                    if echo "$out" | grep -q 'No match';then
                        prettyPrint "WHOIS: $ip"
                        $colo -c "$HOME/conf.whois" $exe whois "$ip"
                    else
                        prettyPrint "WHOIS: $noproto"
                        echo "$out" | grcat  "$HOME/conf.whois"
                        prettyPrint "WHOIS: $ip"
                        $colo -c "$HOME/conf.whois" $exe whois "$ip"
                    fi
                fi
                if exists http;then 
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
    cat "$file" | grep -q "external_ip" && {
        perl -pi -E 's@^.*external_ip.*$@@' "$file"
        printf "Removing External IP\n"
    } || {
        perl -0pi -E 's@\{\s*\n+\s*\}@{\n\t\t\t\t"function": "powerline.segments.common.net.external_ip"\n\t\t\t}@' "$file"
        printf "Adding External IP\n"
    }
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
        [[ -s "$HOME/hosts.txt" ]] || {\
            echo "you need hosts.txt in your homedir" >&2 && \
            return 1; }
            pssh --inline-stdout --timeout 90 -h "$HOME"/hosts.txt "$@"
    }

c(){
    colorizer=bat
    if [[ ! -p /dev/stdout ]];then
        {
            exists $colorizer && {
                echo | $colorizer &>/dev/null && {
                    for file in "$@";do
                            if [[ ! -d "$file" && -s "$file" ]]; then
                                if (( $# > 1)); then
                                    printf "\x1b[34;1;4m$file\x1b[0m\n"
                                fi
                               case "$file" in
                            *.tgz|*.tar|*.tar.gz)
                            eval "tar tf \"$file\" | $COLORIZER $COLORIZER_NL"
                                ;;
                            *.zip)
                            eval "unzip -l \"$file\" | $COLORIZER $COLORIZER_NL"
                            ;;
                            *.[jw]ar)
                            eval "jar tf \"$file\" | $COLORIZER $COLORIZER_NL"
                                ;;
                            *)
                            eval "$COLORIZER \"$file\" $COLORIZER_NL"
                               esac 
                            fi
                        done
                } || cat -n "$@"
            } || cat -n "$@"
        } | less
    else
        exists $colorizer && {
            echo | $colorizer &>/dev/null && {
                for file in "$@";do
                        if [[ ! -d "$file" && -s "$file" ]]; then
                            if (( $# > 1)); then
                                printf "\x1b[34;1;4m$file\x1b[0m\n"
                            fi
                               case "$file" in
                            *.tgz|*.tar|*.tar.gz)
                            eval "tar tf \"$file\" | $COLORIZER $COLORIZER_NL"
                                ;;
                            *.zip)
                            eval "unzip -l \"$file\" | $COLORIZER $COLORIZER_NL"
                            ;;
                            *.[jw]ar)
                            eval "jar tf \"$file\" | $COLORIZER $COLORIZER_NL"
                                ;;
                            *)
                            eval "$COLORIZER \"$file\" $COLORIZER_NL"
                               esac 
                        fi
                done
            } || cat -n "$@"
        } || cat -n "$@"
    fi
}

exists http && ge(){
    styles_dir='/usr/local/opt/httpie/libexec/lib/python3.7/site-packages/pygments/styles/'

    url="$(echo $1 | sed 's#[^/]*//\([^@]*@\)\?\([^:/]*.*\)#\2#')"
    echo $1 | grep -q https && proto=https|| proto=http
    shift

    if [[ -d "$styles_dir" ]]; then
        declare -a file_ary
        for file in "$styles_dir"/* ; do
            file=${file##*/}
            echo "$file" | grep -q -E "init|pycache" || \
                file_ary+=("${file%.*}")
        done
        len=${#file_ary}
        randscript="print int(rand()*$len)"
        rand=$(echo "$randscript" | perl)
        logg $rand
        echo $SHELL | grep -q zsh && ((rand++))

        for (( i = 0; i < $len; i++ )); do
            random_color=${file_ary[$i]}
            if (( $rand == $i)); then
                break
            fi
        done
        logg http -v --follow --style=$random_color GET $proto://$url --pretty=all "$@"
        http -v --follow --style=$random_color GET $proto://$url --pretty=all "$@"
    else
        http -v --follow --style=autumn GET $proto://$url --pretty=colors "$@"
    fi 2>&1 | less
}

fz(){
    test -z "$1" && {
        command ag '^.*$' --color| fzf -m --delimiter : --nth 3.. --reverse --border --prompt='-->>> ' --preview '[[ -f $(cut -d: -f1 <<< {}) ]] && '"$COLORIZER"' $(cut -d: -f1 <<< {}) '"$COLORIZER_NL"' \
        2>/dev/null | sed -n "$(cut -d: -f2 <<< {}),\$p" || stat $(cut -d: -f1 <<< {}) | fold -80 | head -500' --ansi | cut -d ':' -f1 | perl -pe 's@^(.*)\n$@"$1" @'
    } || {
        command ag '^.*$' --color| fzf --delimiter : --nth 3.. --reverse --border --prompt='-->>> ' --preview '[[ -f $(cut -d: -f1 <<< {}) ]] && '"$COLORIZER"' $(cut -d: -f1 <<< {}) '"$COLORIZER_NL"'\
            2>/dev/null | sed -n "$(cut -d: -f2 <<< {}),\$p" || stat $(cut -d: -f1 <<< {}) | fold -80 | head -500' --ansi | perl -pe 's@^(.*?):(\d+):(.*)@+$2 "$1"@'

    }
}

figletfonts(){

    [[ "$(uname)" == Darwin ]] && {
        FIGLET_DIR="/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts"
    } || {
        FIGLET_DIR="/usr/share/figlet"
    }

    if [[ ! -d "$FIGLET_DIR" ]]; then
        echo "Can not find $FIGLET_DIR" >&2 && return 1
    fi

    declare -a ary

    for file in $(find "$FIGLET_DIR" -iname "*.flf"); do
        ary+=${file##*/}
    done

    if [[ "$MYBANNER" == ponies ]]; then
        exists ponysay || { echo "you need ponysay" >&2 && return 1; }
    fi
    exists lolcat || { echo "you need lolca" >&2 && return 1; }
    exists splitReg.sh || { echo "you need splitReg.sh" >&2 && return 1; }
    exists tput || { echo "you need tput" >&2 && return 1; }

    alternatingPrettyPrint "${DELIMITER_CHAR}F${DELIMITER_CHAR}iglet ${DELIMITER_CHAR}F${DELIMITER_CHAR}onts ${DELIMITER_CHAR}A${DELIMITER_CHAR}re:"


    if [[ "$MYBANNER" == ponies ]]; then
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
    dir="$(python3 -m pip show pygments | grep Location | awk '{print $2}')"
    for i in "$dir/pygments/styles/"* ; do
        echo "$i"
    done
}

alias da=detachall
detachall(){
    tmux list-clients | tr -d : | perl -ane '`tmux detach-client -t $F[0]`'
}


scripts(){
    ( {
        gvim -S ~/.vim/sessions/gvim.vim &> /dev/null
        sleep 2
        open -a Terminal.app
    } &>/dev/null & )
}

export SCHEMA_NAME=root
export TABLE_NAME=LearningCollection

le(){
    test -z "$1" && return 1
    category="programming"
    if [[ -n "$2" ]]; then
        category="$2"
    fi
    echo "insert into $SCHEMA_NAME.$TABLE_NAME (category, learning, dateAdded) values ('"$category"', '""$1""', now())" | mysql 2>> "$LOGFILE"
}


see(){
    if test -z "$1"; then
        echo "select dateAdded,learning,category from $SCHEMA_NAME.$TABLE_NAME" | mysql 2>> $LOGFILE | cat -n
    else
        echo "select dateAdded, learning,category from $SCHEMA_NAME.$TABLE_NAME" | mysql 2>> $LOGFILE | cat -n | perl -lanE 'print "$F[0])\t@F[1..$#F]" if (grep /'"$1"'/i, "@F[1..$#F]")' | ag -i -- "$1"
    fi
}

se(){
    if test -z "$1"; then
        if [[ "$CUSTOM_COLORS" = true ]]; then
        echo "select learning,category from $SCHEMA_NAME.$TABLE_NAME" | mysql 2>> $LOGFILE | cat -n | perl -pe 's@\s+(\d+)\s+(.*)@\x1b[35m$1\x1b[0m \x1b[32m$2\x1b[0m@g'
    else
        echo "select learning,category from $SCHEMA_NAME.$TABLE_NAME" | mysql 2>> $LOGFILE | cat -n
        fi
     
    else
        arg="$1"
        # escaping for perl $ and @ sigils
        argdollar=${arg//$/\\$}
        arg=${argdollar//@/\\@}
        echo "select learning,category from $SCHEMA_NAME.$TABLE_NAME" | mysql 2>> $LOGFILE | cat -n | perl -E 'open $fh, ">>", "'$HOME/temp1-$$'"; open $fh2, ">>", "'$HOME/temp2-$$'";while (<>){my @F = split;if (grep /'"$arg"'/i, "@F[1..$#F]"){say $fh "$F[0]   "; say $fh2 "@F[1..$#F]";}}';
        if [[ "$CUSTOM_COLORS" = true ]]; then
            paste -- ~/temp1-$$ <(cat -- ~/temp2-$$ | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@\x1b[0;35m$1\x1b[0m \x1b[0;32m$2\x1b[0m@g' | perl -pe 's@\x1b\[0m@\x1b\[0;1;34m@g'
        else
        paste -- ~/temp1-$$ <(cat -- ~/temp2-$$ | ag -i --color -- "$1") | perl -pe 's@\s*(\d+)\s+(.*)@$1 $2@g'
        fi
        command rm ~/temp1-$$ ~/temp2-$$
    fi
}

createLearningCollection(){
    alternatingPrettyPrint "Creating$DELIMITER_CHAR $SCHEMA_NAME.$TABLE_NAME$DELIMITER_CHAR with$DELIMITER_CHAR MySQL$DELIMITER_CHAR"
    if [[ -n "$1" ]]; then
        #use first arg as mysql password
        if ! echo "select * from information_schema.tables" | mysql -u root -p "$1" | \grep --color=always -q "$TABLE_NAME";then
            echo  "create schema $SCHEMA_NAME if not exists"
            echo  "create schema $SCHEMA_NAME if not exists" | mysql -u root -p "$1"

            echo 'CREATE TABLE `'"$TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$TABLE_NAME"'learning_index` (`learning`))'
            echo 'CREATE TABLE `'"$TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$TABLE_NAME"'learning_index` (`learning`))' | mysql -u root -D "$SCHEMA_NAME" -p "$1"
        else
            echo "$SCHEMA_NAME.$TABLE_NAME already exists" >&2
        fi
    else
        #use my.cnf
        if ! echo "select * from information_schema.tables" | mysql | \grep --color=always -q "$TABLE_NAME";then
            echo  "create schema if not exists $SCHEMA_NAME"
            echo  "create schema if not exists $SCHEMA_NAME" | mysql

            echo 'CREATE TABLE `'"$TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$TABLE_NAME"'learning_index` (`learning`))'
            echo 'CREATE TABLE `'"$TABLE_NAME"'` ( `category` varchar(20) DEFAULT NULL, `learning` varchar(200) DEFAULT NULL,`dateAdded` datetime DEFAULT NULL, `id` int(11) NOT NULL AUTO_INCREMENT,  PRIMARY KEY (`id`), KEY `'"$TABLE_NAME"'learning_index` (`learning`))' | mysql -D "$SCHEMA_NAME"
        else
            echo "$SCHEMA_NAME.$TABLE_NAME already exists" >&2
        fi
    fi
}

del(){

    [[ -z "$1" ]] && count=1 || count="$1"
    echo "delete from $SCHEMA_NAME.$TABLE_NAME order by id desc limit $count" | mysql
}

gitCheckoutRebasePush(){
    git branch -a | head -2 | perl -ane 'if ($F[0] eq "*"){$cur=$F[1]}else{$alt=$F[0]};if ($. == 2){$cmd="git checkout $alt; git rebase $cur;git push;";print "$cmd\n"; `$cmd`}'
}

#}}}***********************************************************

#{{{                    MARK:Global Alias
#**************************************************************
alias exa="$EXA_COMMAND"
exists hexedit && alias he='hexedit -l 16'
#}}}***********************************************************
