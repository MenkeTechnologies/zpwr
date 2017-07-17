#created by JACOBMENKE at Mon Jun 12 17:33:50 EDT 2017

#{{{                    MARK:ENV Var
#**************************************************************
export CLICOLOR="YES"
export LSCOLORS="ExFxBxDxCxegedabagacad"
export TERM="xterm-256color"
export SCRIPTS="$HOME/Documents/shellScripts"
export PYEXECUTABLES="$HOME/Documents/pythonScripts"
export PYSCRIPTS="$HOME/PycharmProjects/fromShell"
export D="$HOME/Desktop"
# Setting PATH for Python 3.5
# The orginal version is saved in .profile.pysave
unset PATH
export PATH="$PATH:/usr/local/lib/python2.7/site-packages/powerline/scripts/"
export PATH="$PYEXECUTABLES:$SCRIPTS/save-run:$HOME/.local/bin:$HOME/perl5/bin:Library/Frameworks/Python.framework/Versions/3.5/bin:$HOME/Documents/shellScripts:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Developer/CommandLineTools/usr/bin:/usr/local/sbin:$PATH"
export GITHUB_ACCOUNT='MenkeTechnologies'

if [[ "$(uname)" == Darwin ]]; then
	export WCC="/Volumes/JAKESD/wcc/cps"
    export HOMEBREW_HOME_FORMULAE="/usr/local/Homebrew/Library/taps/homebrew/homebrew-core/formula"
else
    export PATH="$PATH:/usr/games"
fi
#}}}***********************************************************

#{{{                           MARK:HOMES
#**********************************************************************
if [[ "$(uname)" == Darwin ]]; then
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home"
    export GROOVY_HOME="/usr/local/Cellar/groovy/2.4.11"
    export SCALA_HOME="/usr/local/Cellar/scala/2.12.2"
    export HOMEBREW_HOME='/usr/local/Cellar'
    export PERL_HOME='$HOMEBREW_HOME/perl/5.24.1/'
    export HOMEBREW_DBHOME='/usr/local/var'
    export HOMEBREW_DB_CONF='/usr/local/etc'
    eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
    export MANPATH=$HOME/perl5/man:$MANPATH
    export TUTORIAL_FILES="$HOME/Documents/tutorialsRepo"
fi
export YARN_HOME="$HOME/.config/yarn"
export NODE_PATH="/usr/local/lib/node_modules:$YARN_HOME/global/node_modules"
export HISTSIZE=50000
export EDITOR='vim'
export HISTTIMEFORMAT=' %F %T _ '
export BLUE="\e[37;44m"
export RED="\e[31m"
export RESET="\e[0m"
export LOGFILE="$HOME/updaterlog.txt"
export UMASK=077
#}}}

#{{{                          MARK:ALIASES
#**********************************************************************
#portable aliases
alias ll="clearList"
alias la="clearList"
alias l="clearList"
alias r="cd .."
alias t="cd /"
alias py="cd $PYSCRIPTS"
alias p2="python"
alias p3="python3"
alias d="cd ~/Desktop"
#{{{                    MARK:aliaes for editing config files
#**************************************************************
alias vrc="vim -S ~/.vim/sessions/vrc.vim ~/.vimrc"
alias brc="vim -S ~/.vim/sessions/aliases.vim + ~/.shell_aliases_functions.sh; source ~/.shell_aliases_functions.sh; bash $SCRIPTS/backupBashConfig.sh 2> /dev/null"
alias zrc="vim -S ~/.vim/sessions/zshrc.vim + ~/.zshrc; source ~/.zshrc"
alias trc="vim -S ~/.vim/sessions/trc.vim ~/.tmux.conf"
#}}}***********************************************************
alias deleteTab="sed -e '/^[ tab]*$/d'"
alias b="bash"
alias upper='tr '\''a-z'\'' '\''A-Z'\'''
#over alias es
alias grep="grep --color=auto"
alias egrep="egrep --color=always"
alias tree='tree -afC'
alias ta="tmux attach"
#Darwin specific aliases
if [[ "$(uname)" == "Darwin" ]]; then
    #statements
    alias spd="du -csh {.[^.]*,..?*} * 2> /dev/null | gsort -h"
    alias cpu="top -o cpu"
    alias mem="top -o mem"
    alias tip="top -o +command"
    alias nd="defaults write com.apple.dock autohide-delay -float 100 && defaults write com.apple.dock tilesize -int 1 && killall Dock"
    alias back="nohup /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background > /dev/null &"
    alias n="open /Volumes/homes/JAKENAS/softwareTutorials; exit"
    alias cs="cd /Volumes/JAKESD/wcc/cps; clearList"
    alias emu="open /Volumes/JAKESD/EMU"
    alias pkill="pkill -iIl"
else
    #Linux
    alias apt="sudo apt-get install -y"
    source "$HOME/.rpitokens.sh"
fi
alias cf2="sed 's/.*/_\U\l&_/' | boldText.sh | blue"
alias tclsh="rlwrap tclsh"
alias logs="tail -f /var/log/*.log | lolcat"
alias matr="cmatrix -C blue -abs"
alias tm="python3 $PYSCRIPTS/tmux_starter.py"
#**********************************************************************
#                           MARK:PYTHON SCRIPTS
#**********************************************************************
alias b="execpy blackBoard.py"
alias m="execpy mapIt.py"
alias a="execpy amazonSearch.py"
alias shut="execpy shutdown.py"
alias pb="execpy bills.py"
alias ud=" execpy udemy.py"
alias i="ipconfig getifaddr en0"
alias pgrep='pgrep -l'
#**********************************************************************
#                           MARK:SHELL SCRIPTS
#**********************************************************************
alias ct="bash $SCRIPTS/createTextFile.sh"
alias u="bash $SCRIPTS/upLoadPi.sh"
alias u2="bash $SCRIPTS/upLoadPi2.sh"
alias piweb="bash $SCRIPTS/uploadWebPi.sh"
alias ud="bash $SCRIPTS/upLoadDS.sh"
alias uweb="bash $SCRIPTS/uploadWebDS.sh"
alias sy="bash $SCRIPTS/sync.sh"
alias sf="bash $SCRIPTS/directoryContentsSize.sh"
alias sc="cd $SCRIPTS"
alias blue="source $SCRIPTS/blueText.sh"
alias dl="cd $HOME/Downloads; open ."
alias o="open ."
alias jobs="jobs -l"
alias 8="bash updater.sh"
alias sd="clear;ssh d "
alias sftpd="sftp d:/homes/JAKENAS/music"
alias sr="clear;ssh r"
alias sr2="clear;ssh r2"
alias sdroot="clear;ssh -p 7777 root@$IP"
alias gitgo='$SCRIPTS/gitgo.sh'
alias watchGit='bash $SCRIPTS/watchServiceFSWatchGit.sh'
alias watchPiWeb='bash $SCRIPTS/watchServiceFSWatchPiWeb.sh'
alias vi=vim
alias v=vim
alias c=clear
alias mkdir='mkdir -pv'
#**********************************************************************
#                           MARK:REMOTE SHELLS SCRIPTS
#**********************************************************************
alias glt="ssh d -t 'sh /var/services/homes/JAKENAS/scripts/downloadTitlesLocal.sh'"
alias grt="ssh d -tt 'sh /var/services/homes/JAKENAS/scripts/downloadTitlesRemote.sh'"
alias v1="open -a 'vnc viewer';execpy enterPasswordForVNC.py & bash $SCRIPTS/sshTunnelVnc.sh" 
alias v2="open -a 'vnc viewer';execpy enterPasswordForVNC2.py & bash $SCRIPTS/sshTunnelVnc2.sh"
alias rr="$HOME/Documents/shellScripts/rsyncr.sh"
alias mntpi="sshfs -o IdentityFile=$HOME/.ssh/id_rsa r:/var/www/html $HOME/Desktop/tuts/piweb/"
alias mntds="sshfs -o IdentityFile=$HOME/.ssh/id_rsa d:/volume1/homes/JAKENAS/softwareTutorials $HOME/Desktop/tuts/ds/"

bold=$(tput bold || tput md)
red=$(tput setaf 1)
alias ic="idea create"
alias il="idea list"
#**********************************************************************
#                           MARK:RUST                           
#**********************************************************************
export PATH="$PATH:$HOME/.cargo/bin:$PATH"
#**********************************************************************
#                           MARK:RVM                           
#**********************************************************************
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
#**************************************************************
#}}}

which yarn > /dev/null
if [[ $? == 0 ]]; then
    export PATH="$(yarn global bin):$PATH"
fi

#{{{                    MARK:Shell functions
#**************************************************************
scnew(){
    if [[ -z "$1" ]];then
        echo "no arg..."
        return 1
    fi

    bash '$HOME/Documents/shellScripts/createScriptButDontOpenSublime.sh' "$1"
}
nn(){
    if [[ -z "$1" ]];then
        echo "Title is \$1 and message is \$2..."
        return 1
    fi

    title="$1"
    msg="$2"

    echo "display notification \"$msg\" with title \"$title\"" | osascript 

}
suc(){
    subl $SCRIPTS
    f $SCRIPTS
    python3 $PYSCRIPTS/textEditorTwoColumns.py
}
db(){
    #open -a Firefox $IP:8080/db
    ( python3 $PYSCRIPTS/logIntoMyDB.py & )
}
clearList () {
    clear
    if [[ "$(uname)" == "Darwin" ]]; then
        ls -iFlhAO
    else
        ls -iFlhA
    fi
}
listNoClear () {
    if [[ "$(uname)" == "Darwin" ]]; then
        ls -iFlhAO
    else
        ls -iFlhA
    fi
}
animate(){
    bash $SCRIPTS/animation.sh
}
blocksToSize(){
    read input
    local bytes=$(( input * 512 ))
    echo $bytes | humanReadable 
}

humanReadable(){
    awk 'function human(x) {
    s=" B   KiB MiB GiB TiB EiB PiB YiB ZiB"
    while (x>=1024 && length(s)>1)
        {x/=1024; s=substr(s,5)}
        s=substr(s,1,4)
        xf=(s==" B  ")?"%5d   ":"%8.2f"
        return sprintf("Your size:"xf"%s", x, s)
    }
    {gsub(/^[0-9]+/, human($1));print}'
    }
    f(){
        cd "$1"
    }
    execpy(){
        python3 $PYSCRIPTS/"$1"

    }
    search(){
        if [[ -z $2 ]];then
            grep -iRnC 5 "$1" *
        else
            grep -iRnC 5 "$1" "$2"
        fi

    }
    cd(){
        #builtin is necessary here to distinguish bt function name and builtin cd command
        #don't want to recursively call this function
        builtin cd "$@";
        clearList
    }
    gitCommitAndPush(){
        printf "\e[1m"
        /usr/local/bin/git add .
        /usr/local/bin/git commit -m "$1"
        /usr/local/bin/git push
        printf "\e[0m"
    }
    replacer(){
        orig="$1"
        shift
        replace="$1"
        shift
        sed -i'' "s/$orig/$replace/g" $@

    }
    createGIF(){
        outFile=out.gif
        res=600x400

        if [[ -z "$1" ]]; then
            echo "One arg need..." >&2
            return 1
        fi

        if [[ ! -z "$2" ]]; then
            res="$2"
        fi

        if [[ ! -z "$3" ]];then
            outFile="$3"	
        fi

        ffmpeg -i "$1" -s "$res" -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > "$outFile" 
    }
    hub_create(){
        printf "\e[1m"
        git init
        hub create
        echo "# `basename $(pwd)`" > README.md
        echo "# created by Jacob Menke" >> README.md
        git add .
        git commit -m "first commit"
        git push --set-upstream origin master
        printf "\e[0m"

    }
    hub_delete(){
        if [[ -z "$1" ]]; then
            echo "need a REPO NAME" >&2
            return 1
        fi
        REPO="$1"
        out="$(curl -u menketechnologies -X "DELETE" https://api.github.com/repos/menketechnologies/"$REPO")"

        printf "\e[1m"
        if [[ -z "$out" ]]; then
            echo "Successful deletion of $REPO"
        else
            echo "Error in deletion of $REPO"
            echo "$out"
        fi
        printf "\e[0m"
    }

    pstreeMonitor(){
        bash $SCRIPTS/myWatchNoBlink.sh "pstree -g 2 -u $USER | sed s/$USER// | sed s@/.*/@@ | tail -75"

    }
    return2(){
        exec 2> /dev/tty
    }
    color2(){
        exec 2> >(redText.sh)
    }
    escapeRemove(){
        while read INPUT; do
            echo "$INPUT" | sed -e 's/\e\[.\{1,5\}m//g'
        done
    }
    mp3(){
        youtube-dl --extract-audio --audio-format mp3 "$1"
    }
    mp4(){
        youtube-dl --no-playlist -f mp4 "$1"
    }
    prettyPrint(){
        if [[ ! -z "$1" ]]; then
            printf "\e[1m$1\e[0m\n"
        else 
            echo "Need one arg" >&2
            return 1
        fi
    }
    tac(){
        sed '1!G;h;$!d' "$@"
    }
    #}}}***********************************************************

    source "$HOME/.tokens.sh"
