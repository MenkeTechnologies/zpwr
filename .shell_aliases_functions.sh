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
export DL="$HOME/Downloads"
# Setting PATH for Python 3.5
# The orginal version is saved in .profile.pysave
export PATH="$PATH:$HOME/go/bin:/usr/local/lib/python2.7/site-packages/powerline/scripts/"
export PATH="$PYEXECUTABLES:$SCRIPTS/save-run:$HOME/.local/bin:$HOME/perl5/bin:Library/Frameworks/Python.framework/Versions/3.5/bin:$HOME/Documents/shellScripts:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Developer/CommandLineTools/usr/bin:/usr/local/sbin:$PATH"
export TERMINAL_APP="Terminal.app"
export GITHUB_ACCOUNT='MenkeTechnologies'

if [[ "$(uname)" == Darwin ]]; then
    export WCC="/Volumes/JAKESD/wcc/cps"
    export HOMEBREW_HOME_FORMULAE="/usr/local/Homebrew/Library/taps/homebrew/homebrew-core/formula"
    export PATH="$SCRIPTS/macOnly:$HOME/.tokenScripts:$HOME/.platformio/penv/bin:$PATH"
else
    export PATH="$PATH:/usr/games"
fi
#}}}***********************************************************

#{{{                           MARK:HOMES
#**********************************************************************
if [[ "$(uname)" == Darwin ]]; then
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home"
    export HOMEBREW_HOME='/usr/local/Cellar'
    export GROOVY_HOME="$HOMEBREW_HOME/groovy/2.4.11"
    export SCALA_HOME="$HOMEBREW_HOME/scala/2.12.2"
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
alias please='sudo $(fc -ln -1)'
#{{{                    MARK:ALIASES for editing config files
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
    alias n="open $HOME/mnt/ds/JAKENAS/softwareTutorials"
    alias c="cd /Volumes/JAKESD/wcc/cps"
    alias emu="open /Volumes/JAKESD/EMU"
    alias pkill="pkill -iIl"
    alias q="qlmanage -p &>/dev/null"
    #keep remote tty sessions alive by stopping sleep
    sudo pmset -c ttyskeepawake 1
    alias v1="open -a 'vnc viewer';execpy enterPasswordForVNC.py & bash $SCRIPTS/sshTunnelVnc.sh" 
    alias v2="open -a 'vnc viewer';execpy enterPasswordForVNC2.py & bash $SCRIPTS/sshTunnelVnc2.sh"
    alias rtsync="$HOME/Documents/shellScripts/macOnly/rsyncr.sh"
else
    #Linux
    alias apt="sudo apt-get install -y"
    type lsb_release >/dev/null 2>&1 && {
    distroName=$(lsb_release -a | head -1 | awk '{print $3}')
    if [[ $distroName == Raspbian ]]; then
        source "$HOME/.rpitokens.sh"
    fi

}
fi
alias cf2="sed 's/.*/_\U\l&_/' | boldText.sh | blue"
alias tclsh="rlwrap tclsh"
alias logs="tail -f /var/log/*.log | lolcat"
alias matr="cmatrix -C blue -abs"
alias tm="python3 $PYSCRIPTS/tmux_starter.py"
alias tmm="python3 $PYSCRIPTS/ssh_starter.py" 
alias tmm_full="python3 $PYSCRIPTS/complete_ssh_starter.py" 
alias inst="source $SCRIPTS/tgzLocalInstaller.sh"
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
alias dl="cd $HOME/Downloads"
alias o="open ."
alias jobs="jobs -l"
alias 8="bash -l updater.sh"
alias sd="clear;ssh d "
alias gitgo='$SCRIPTS/gitgo.sh'
alias watchGit='bash $SCRIPTS/watchServiceFSWatchGit.sh'
alias watchPiWeb='bash $SCRIPTS/watchServiceFSWatchPiWeb.sh'
alias vi=vim
alias v=vim
alias cl=clear
alias mkdir='mkdir -pv'
#**********************************************************************
#                           MARK:REMOTE SHELLS SCRIPTS
#**********************************************************************
alias glt="ssh d -t 'sh /var/services/homes/JAKENAS/scripts/downloadTitlesLocal.sh'"
alias grt="ssh d -tt 'sh /var/services/homes/JAKENAS/scripts/downloadTitlesRemote.sh'"
alias mntpi="sshfs -o IdentityFile=$HOME/.ssh/id_rsa r:/var/www/html $HOME/Desktop/tuts/piweb/"
alias mntds="sshfs -o IdentityFile=$HOME/.ssh/id_rsa d:/volume1/homes/JAKENAS/softwareTutorials $HOME/Desktop/tuts/ds/"


type tput >/dev/null 2>&1 && {
bold=$(tput bold || tput md)
red=$(tput setaf 1)
}
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
    [[ -z "$1" ]] && echo "no arg..." >&2 && return 1

    bash '$HOME/Documents/shellScripts/createScriptButDontOpenSublime.sh' "$1"
}
nn(){
    [[ -z "$1" ]] && echo "Title is \$1 and message is \$2..." > &2 && return 1

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

    if [[ "$(uname)" == "Darwin" ]]; then
        exists grc && {
        ls_command="grc -c /usr/local/share/grc/conf.gls gls -iFlhA --color=always"
    } || {
    ls_command="ls -iFlhAO"
}
lib_command="otool -L"
    else
        exists grc && {

        ls_command="grc -c /usr/share/grc/conf.gls ls -iFlhA --color=always"
    } || {
    ls_command="ls -iFhlA"
}
lib_command="ldd -v"
    fi

    if [[ ! -z "$1" ]]; then
        for command in "$@"; do
            exists $command &&  {
            #exe matching
            while read locale;do
                last_fields="$(echo $locale | cut -d' ' -f3-10)"
                [[ -f "$last_fields" ]] && { 

                eval "$ls_command" $last_fields && eval "file $last_fields" && eval "$lib_command $last_fields";
                du -sh "$last_fields"
                stat "$last_fields"
                echo
            } || echo "$locale"
        done < <(type -a "$command" | sort | uniq)
    } || {
    #path matching, not exe
    eval "$ls_command -d \"$command\"" || return 1
    file "$command"
    du -sh "$command"
    stat "$command"
    echo #for readibility
}
        done
    else
        clear && eval "$ls_command"
    fi
}
listNoClear () {
    if [[ "$(uname)" == "Darwin" ]]; then
        exists grc && {
        grc -c /usr/local/share/grc/conf.gls gls -iFlhA --color=always
    } || {
    ls -iFlhAO
}
    else
        exists grc && {

        grc -c /usr/share/grc/conf.gls ls -iFlhA --color=always
    } || {
    ls -iFhlA
}
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
    [[ -z $2 ]] && grep -iRnC 5 "$1" * || grep -iRnC 5 "$1" "$2"

}
cd(){
    #builtin is necessary here to distinguish bt function name and builtin cd command
    #don't want to recursively call this function
    builtin cd "$@" && clearList
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

    [[ -z "$1" ]] && echo "One arg need..." >&2 && return 1

    [[ "$2" ]] && res="$2"

    [[ "$3" ]] && outFile="$3"	

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
    [[ -z "$1" ]] && echo "need a REPO NAME" >&2 && return 1
    REPO="$1"
    out="$(curl -u menketechnologies -X "DELETE" https://api.github.com/repos/menketechnologies/"$REPO")"

    printf "\e[1m"
    [[ -z "$out" ]] && echo "Successful deletion of $REPO" || {
        echo "Error in deletion of $REPO"
        echo "$out"
    }
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
    [[ -z "$2" ]] && youtube-dl --no-playlist -f mp4 "$1" || youtube-dl -f mp4 "$1"
}

prettyPrint(){
    [[ "$1" ]] && printf "\e[1m$1\e[0m\n" || {
        echo "Need one arg" >&2
        return 1
    }
}
tac(){
    sed '1!G;h;$!d' "$@"
}

backup(){
    newfile="$1".$(date +%Y%m%d.%H.%M.bak)
    mv "$1" "$newfile"
    cp -pR "$newfile" "$1"
    printf "\e[4;1m$1\e[0m backed up to \e[4;1m$newfile\e[0m\n"
}

exists(){
    type "$1" >/dev/null 2>&1
}

#}}}***********************************************************

[[ -f "$HOME/.tokens.sh" ]] && source "$HOME/.tokens.sh"

