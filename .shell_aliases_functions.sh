#{{{                    MARK:Global Fxn
exists(){
    type "$1" >/dev/null 2>&1 #alternative is command -v
}

#}}}***********************************************************

#{{{                    MARK:Global Vars
#**************************************************************
export TMUX_PREFIX=x
export TMUX_REMOTE_PREFIX=b
PI_ARRAY=(r1:apt r2:apt r3:dnf r4:zypper)
export PI_ARRAY
export DELIMITER_CHAR='%'
export PS4='>\e[1;4;39m${BASH_SOURCE}\e[37m\e[0;34m__${LINENO}\e[37m__\e[0;32m${FUNCNAME[0]}> \e[0m'
export PROMPT4=$'\e[34m%x\t%0N\t%i\t%_\e[0m\t'
export NMON='mndckt'
export GITHUB_ACCOUNT='MenkeTechnologies'
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
export LESS="-M -N -R"
export PSQL_EDITOR='vim -c "setf sql"'
export EXA_COMMAND='command exa --git -il -F -H --extended --color-scale -g -a'

#}}}***********************************************************

#{{{                    MARK:ENV Var
#**************************************************************
echo "$PATH" | grep -iq shellScripts || {
    export PATH="$PATH:$HOME/go/bin:/usr/local/lib/python2.7/site-packages/powerline/scripts/"
    export PATH="$PYEXECUTABLES:$SCRIPTS/save-run:$HOME/.local/bin:$HOME/perl5/bin:$SCRIPTS:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Developer/CommandLineTools/usr/bin:/usr/local/sbin:$PATH"

    [[ "$(uname)" == Darwin ]] && {
        export PATH="$SCRIPTS/macOnly:$HOME/.tokenScripts:$PATH:$HOME/.platformio/penv/bin"
        export PATH="$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/tools/bin:$HOME/Library/Android/sdk/platform-tools:$PATH"
    } || {
        export PATH="$PATH:/usr/games"
    }

    exists yarn && export PATH="$(yarn global bin):$PATH"

#}}}***********************************************************

#{{{                           MARK:HOMES
#**********************************************************************
    [[ "$(uname)" == Darwin ]] && {
        export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home"
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
        export LS_COLORS="fi=38:di=32;1:ex=31;1"
        export EXA_COLORS="in=34:ur=32:uw=32:ux=32:gr=33:gw=33:gx=33:tr=31:tw=31:tx=31:xx=34:uu=38:gu=32:lc=32;1:un=41;37;1:gn=43;37;1:sb=4;1:xa=1;34:df=31;46;1:ds=31;45;1:lp=36;1:cc=1;31;46:da=34:b0=31;1;4:gm=32;1;4:ga=36;1;4:gd=34;1;4:gv=35;1;4:gt=37;1;4"
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
alias lo="tail -f $LOGFILE"
alias va='cd /var'
alias plr='rlwrap perl -dE1'
alias cpan='rlwrap cpan'
alias nz='exec zsh'
alias ll="clearList"
alias la="clearList"
alias l="clearList"
alias r="cd .."
alias t="cd /"
alias ca='cat -n'
alias sa='sudo cat -n'
[[ -d "$PYSCRIPTS" ]] && alias py="cd $PYSCRIPTS"
alias p2="python2"
alias p3="python3"
[[ -d "$HOME/Desktop" ]] && alias d="cd \$HOME/Desktop"
exists fc && alias please='sudo $(fc -ln -1)'
exists spotify && {
    alias re='spotify replay'
    alias ne='spotify next'
    alias pe='spotify prev'
    alias spa='spotify pause'
    
}
#{{{                    MARK:ALIASES for editing config files
#**************************************************************
alias vrc="vim -S ~/.vim/sessions/vrc.vim ~/.vimrc"
alias brc="vim -S ~/.vim/sessions/aliases.vim + ~/.shell_aliases_functions.sh; source ~/.shell_aliases_functions.sh; bash $SCRIPTS/backupBashConfig.sh 2> /dev/null"
alias zrc="vim -S ~/.vim/sessions/zshrc.vim + ~/.zshrc; source ~/.zshrc"
alias trc="vim -S ~/.vim/sessions/trc.vim ~/.tmux.conf"
#}}}***********************************************************
alias deleteTab="sed -e '/^[\x20\x09]*$/d'"
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
alias o="open ."
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
}
s(){
    [[ -z "$1" ]] && subl . || command s "$@"
}

logg(){
    [[ -z "$1" ]] && echo "need arg" >&2 && return 1
    printf "\n_____________$(date)____$@_____________\n\n" >> "$LOGFILE"
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

urlsafe(){
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
                gls -iFlhA --color=always"
            } || {
                ls_command="ls -iFlhAO"
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
            for command in "$@"; do
                exists $command &&  {
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
                    done < <(type -a "$command" | sort | uniq)
                } || {
                    #path matching, not exe
                    eval "$ls_command \"$command\"" \
                        || return 1
                    echo
                    prettyPrint "$command"
                    eval "$ls_command -d \"$command\"" \
                        || return 1
                    prettyPrint "FILE TYPE:"
                    file "$command"
                    prettyPrint "SIZE:"
                    du -sh "$command"
                    prettyPrint "STATS:"
                    stat "$command"
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
    bash $SCRIPTS/animation
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

contribCount(){
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

createGIF(){
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

pstreeMonitor(){
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

reveal() {
    OS="$(uname -s)"
    case "$OS" in
        Linux*)     open_cmd=xdg-open;;
        Darwin*)    open_cmd=open;;
        CYGWIN*)    open_cmd=cygstart;;
        MINGW*)     open_cmd=start;;
        *)          echo "Your OS: $OS is unsupported..." >&2 && return 2;;
    esac

    [[ ! -d .git ]] && echo "Not a git directory" >&2 && return 1

    command git remote -v | command grep "$1" | command grep 'heroku' | command grep fetch | command grep -o -E ':.*' | \
    cut -c 19- | command awk '{print $1}' | command sed 's@.git$@@' | \
    command xargs -I {} "$open_cmd" https://dashboard.heroku.com/apps/{} https://{}.herokuapp.com

  {
    command git remote -v | command grep "$1" | command grep '@'  | command grep -o -E '@.*' | cut -c 2-
    command git remote -v | command grep "$1" | command grep '//' | command grep -o -E ':.*' | cut -c 4- | command grep -v 'heroku'
  } | command grep fetch | command sed 's@:/\\@@g' | command awk '{print $1}' | sed 's@.git$@@' | command xargs -I {} "$open_cmd" https://www.{}
}

revealRecurse(){
    for i in **/*(/); do ( builtin cd $i && reveal 2>/dev/null); done
}

openMyGH(){
    open "https://github.com/$GITHUB_ACCOUNT"
}


getrc(){
    REPO_NAME="customTerminalInstaller"
    if [[ $(uname) == Darwin ]]; then
        exists dialog && {
            dialog --inputbox 'Are you sure you want to run getrc on this Apple device?' 8 40 2> /tmp/temp$$
            clear
            REPLY="$(cat /tmp/temp$$)"
            rm /tmp/temp$$
        } || {
            printf "Are you sure? "
            read
        }
        [[ $REPLY != "y" ]] && clearList && return 0
    fi
    cd "$HOME"
    git clone \
        "https://github.com/$GITHUB_ACCOUNT/$REPO_NAME.git"
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

mycurl(){
    \curl -fsSL -A "Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3" -v "$@" &> >(sed "/^*/d" | sed -E "s@(<|>) @@g" | sed -E "/^(\{|\}| ) (\[|C)/d")
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
            if (( $picounter == $2 )); then
                return
            fi
        fi
        ((picounter++))
    done
    trap QUIT
}

digs(){
    [[ -z "$1" ]] && echo "need args" >&2 && return 1
    exists dig && {
        for url in "$@"; do
            noport="$(echo "$url" | sed -E 's@(.*\.[^/]+)(/.*)$@\1@' | sed -E 's@:[0-9]{1,4}$@@')"
            exec 2>&1
            prettyPrint "DIG: $noport"
            dig +trace "$noport"
            noproto="$(echo "$noport" | sed -E 's@https://|http://@@')"
            prettyPrint "HOST: $noproto"
            out="$(host "$noproto")"
            echo "$out"
            echo "$out" | command grep -q 'address' && {
                #regular domain name
                ip="$(echo "$out" | command grep 'address' | head -n 1 | awk '{print $4}')"
                if [[ ${noproto: -1} == "." ]]; then
                    noproto="${noproto:0:-1}"
                fi
                primary="$(echo "$noproto" | sed -E 's@^(.*)\.([^.]+)\.([^.]+)$@\2.\3@')"
                out="$(whois "$primary")"
                echo "$out" | grep -q 'No match' && {
                    prettyPrint "WHOIS: $ip"
                    whois "$ip"
                } || {
                    prettyPrint "WHOIS: $primary"
                    echo "$out"
                    prettyPrint "WHOIS: $ip"
                    whois "$ip"
                }
            } || {
                out="$(whois "$noproto")"
                echo "$out" | grep -q 'No match' && {
                    prettyPrint "WHOIS: $ip"
                    whois "$ip"
                } || {
                    prettyPrint "WHOIS: $noproto"
                    echo "$out"
                    prettyPrint "WHOIS: $ip"
                    whois "$ip"
                }
            }
            prettyPrint "CURL: $url"
            curl -vvv -k -fsSL "$url"
            exec 2>/dev/tty
        done | less -MN
    } || echo "you need dig" >&2
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
    for (( i = 0; i < 10;i++ )); do
        eval "$@"
    done
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

exists pssh && {
    pir(){
        [[ -s "$HOME/hosts.txt" ]] || {\
            echo "you need hosts.txt in your homedir" >&2 && \
            return 1; }
            pssh --inline-stdout --timeout 90 -h "$HOME"/hosts.txt "$@"
    }


}

boxesPrint(){
    width=70
    len=${#1}
    spacerlen=2
    boxesChar='/'
    spaceChar=' '
    sidelen=$(($width - $len - $spacerlen * 2))
    #ceil
    sidelen=$(( ($sidelen + 2 -1) / 2))
    sidelen2=$sidelen
    if (( $len % 2 == 1 )); then
        ((--sidelen2 ))
    fi

    perl -E "say '"$boxesChar"' x $width; print '"$boxesChar"' x $sidelen; print '$spaceChar' x $spacerlen"
    printf "$1"
    perl -E "print '$spaceChar' x $spacerlen; say '"$boxesChar"' x $sidelen2; say '"$boxesChar"' x $width"
    echo
}

c(){
    exists ccat && {
        echo | ccat &>/dev/null && {
            for file in "$@";do
                    if [[ ! -d "$file" && -s "$file" ]]; then
                        if (( $# > 1)); then
                            printf "\x1b[34;1;4m$file\x1b[0m\n"
                        fi
                        ccat "$file" | nl -b a
                    fi
            done
        } || cat -n "$@"
    } || cat -n "$@"
set +x
}

httpie(){
    styles_dir='/usr/local/opt/httpie/libexec/lib/python3.7/site-packages/pygments/styles/'

    if [[ -d "$styles_dir" ]]; then
        declare -a file_ary
        for file in "$styles_dir"/* ; do
            file=${file##*/}
            echo "$file" | grep -q -E "init|pycache" || \
                file_ary+=("${file%.*}")
        done
        len=${#file_ary}

        logg ${file_ary[@]}

        rand=$((RANDOM % len))
        echo $SHELL | grep -q zsh && ((rand++))

        for (( i = 0; i < $len; i++ )); do
            random_color=${file_ary[$i]}
            if (( $rand == $i)); then
                break
            fi
        done
        http -v --follow --style=$random_color GET http://$1 --pretty=colors
    else
        http -v --follow --style=autumn GET http://$1 --pretty=colors
    fi
    set +x
    
}

fz(){
    test -z "$1" && {
        command ag '^.*$' --color| fzf -m --delimiter : --nth 3.. --reverse --border --prompt='-->>> ' --preview '[[ -f $(cut -d: -f1 <<< {}) ]] && pygmentize -g $(cut -d: -f1 <<< {}) \
            2>/dev/null | cat -n | sed -n "$(cut -d: -f2 <<< {}),\$p" || stat $(cut -d: -f1 <<< {}) | fold -80 | head -500' --ansi | cut -d ':' -f1 | perl -pe 's@\n@ @'
    } || {
        command ag '^.*$' --color| fzf --delimiter : --nth 3.. --reverse --border --prompt='-->>> ' --preview '[[ -f $(cut -d: -f1 <<< {}) ]] && pygmentize -g $(cut -d: -f1 <<< {}) \
            2>/dev/null | cat -n | sed -n "$(cut -d: -f2 <<< {}),\$p" || stat $(cut -d: -f1 <<< {}) | fold -80 | head -500' --ansi | perl -pe 's@^(.*?):(\d+):(.*)@+$2 $1@'

    }
}

#}}}***********************************************************

#{{{                    MARK:Source Tokens
#**************************************************************
[[ -f "$HOME/.tokens.sh" ]] && source "$HOME/.tokens.sh"
#}}}***********************************************************

#{{{                    MARK:Global Alias
#**************************************************************
alias exa="$EXA_COMMAND"
exists hexedit && alias he='hexedit -l 16'
#}}}***********************************************************
