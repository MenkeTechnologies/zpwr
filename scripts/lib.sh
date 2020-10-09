#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:19:29 EDT 2018
#####   Purpose: bash script to hold installer lib fns
#####   Notes: 
#}}}***********************************************************

#{{{                    MARK:installer lib fns
#**************************************************************
function isZsh(){

     [[ $(command ps -o command= -p $$) =~ '^-?zsh' ]]
}

if isZsh; then

    if ! type -- exists>/dev/null 2>&1; then

        function exists(){
            #alternative is command -v
            type -- "$1" &>/dev/null || return 1 &&
            [[ $(type -- "$1" 2>/dev/null) != *"suffix alias"* ]]
        }
    fi
else
    function exists(){

        #alternative is command -v
        type -- "$1" >/dev/null 2>&1
    }
fi

function stdinExists(){
    local in arg
    in="$(cat)"
    arg="$1"
    if [[ -n "$in" ]]; then
        echo "$in"
    else
        echo "No input found for $arg!"
    fi
}

function commandExists(){
    type -ap -- "$1" >/dev/null 2>&1
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

function isBinary() {

    [[ $(LC_MESSAGES=C command grep -Hm1 '^' < "${1:-$REPLY}") =~ '^Binary' ]]
}

function loggNotGit() {

    loggErr "$(pwd) is not a git dir"
}

function loggInfo(){

    test -z "$1" && loggErr "need arg" >&2 && return 1
    {
        printf "${ZPWR_LOG_UNDER_COLOR}_____________$ZPWR_LOG_DATE_COLOR$(date)\x1b[0m${ZPWR_LOG_UNDER_COLOR}____INFO: "
        printf "_$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_START_CHAR$ZPWR_LOG_MSG_COLOR%b\x1b[0m$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_END_CHAR${ZPWR_LOG_UNDER_COLOR}_" "$*"
        printf "\x1b[0m"
        printf "\n"
    } >&1
}

function loggErr(){

    test -z "$1" && loggErr "need arg" >&2 && return 1
    {
        printf "${ZPWR_LOG_UNDER_COLOR}_____________$ZPWR_LOG_DATE_COLOR$(date)\x1b[0m${ZPWR_LOG_UNDER_COLOR}____ERROR: "
        printf "_$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_START_CHAR$ZPWR_LOG_MSG_COLOR%b\x1b[0m$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_END_CHAR${ZPWR_LOG_UNDER_COLOR}_" "$*"
        printf "\x1b[0m"
        printf "\n"
    } >&2
}

function needSudo(){

    if [[ -z "$1" ]]; then
        loggErr "usage: needSudo <file>"
        return 1
    fi

    if [[ ! -w "$1" ]]; then
        return 0
    else
        return 1
    fi
}

function loggConsolePrefix(){

    prettyPrint "$ZPWR_CHAR_LOGO $*"
    logg "$ZPWR_CHAR_LOGO $*"

}

function loggConsole(){

    prettyPrint "$*"
    logg "$*"

}

function logg(){

    if [[ $ZPWR_COLORS == true ]]; then
        if [[ -n $1 ]]; then
            {
                printf "\n${ZPWR_LOG_UNDER_COLOR}_____________$ZPWR_LOG_DATE_COLOR$(date)\x1b[0m${ZPWR_LOG_UNDER_COLOR}____ "
                printf "_$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_START_CHAR$ZPWR_LOG_MSG_COLOR%b\x1b[0m$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_END_CHAR${ZPWR_LOG_UNDER_COLOR}_" "$*"
                printf "\x1b[0m"
                printf "\n"
            } >> "$ZPWR_LOGFILE"
        elif [[ -p /dev/stdin ]]; then
            {
                printf "\n${ZPWR_LOG_UNDER_COLOR}_____________$ZPWR_LOG_DATE_COLOR$(date)\x1b[0m${ZPWR_LOG_UNDER_COLOR}____ "
                printf "_${ZPWR_LOG_QUOTE_COLOR}$ZPWR_QUOTE_START_CHAR$ZPWR_LOG_MSG_COLOR"
                cat
                printf "\x1b[0m$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_END_CHAR${ZPWR_LOG_UNDER_COLOR}_"
                printf "\x1b[0m"
                printf "\n"
            } >> "$ZPWR_LOGFILE"
        else
            test -z "$1" && loggErr "need arg" && return 1
        fi
    else
        if [[ -n $1 ]]; then
            {
                printf "\n_____________$(date)____ "
                printf "_'%s'_ " "$@"
                printf "\n"
            } >> "$ZPWR_LOGFILE"
        elif [[ -p /dev/stdin ]]; then
            {
                printf "\n_____________$(date)____ _'"
                cat
                printf "'_ \n"
            } >> "$ZPWR_LOGFILE"
        else
            test -z "$1" && loggErr "need arg" && return 1
        fi
    fi
}

function loggDebug(){

    if [[ $ZPWR_DEBUG == true ]]; then
       logg "$@" 
    fi
}

function fail(){

        echo "failure due to $1" >&2
        exit 1
}

function fileMustExist(){

    if [[ ! -f "$1" ]]; then
        echo "where is the file '$1'?" >&2
        exit 1
    fi
}

function isGitDir(){

    command git rev-parse --git-dir 2> /dev/null 1>&2
}

function isGitDirMessage(){

    if ! command git rev-parse --git-dir 2> /dev/null 1>&2; then
        printf "\x1b[0;1;31m"
        loggErr "NOT GIT DIR: $(pwd -P)"
        printf "\x1b[0m"
        return 1
    fi
}

function gil(){

    if ! isGitDir; then
       loggNotGit
       return 1
    fi

    local file

    file=".git/info/exclude"

    if [[ ! -f "$file" ]]; then
       loggErr "$file must exist"
       return 1
    fi

    vim "$file"

}

function goInstallerDir(){

    local ret

    ret=0

    builtin cd "$ZPWR_INSTALL" || ret=1

    if [[ "$(pwd)" != "$ZPWR_INSTALL" ]]; then
        echo "pwd $PWD is not $ZPWR_INSTALL"
    fi

    if (( ret == 1 )); then
        echo "where is ZPWR_INSTALL '$ZPWR_INSTALL'" >&2
        exit 1
    fi
}


function goInstallerOutputDir(){

    local ret

    ret=0

    builtin cd "$ZPWR_INSTALLER_OUTPUT" || ret=1

    if [[ "$(pwd)" != "$ZPWR_INSTALLER_OUTPUT" ]]; then
        echo "pwd $PWD is not $ZPWR_INSTALLER_OUTPUT"
    fi

    if (( ret == 1 )); then
        echo "where is ZPWR_INSTALLER_OUTPUT '$ZPWR_INSTALLER_OUTPUT'" >&2
        exit 1
    fi
}

function installGitHubPluginsFromFile(){

    function usage ()
    {
        echo "Usage :  $0 [options] [--]

        Options:
        -h|help       Display this message
        -f|force)     overwrite dest"

    }

    while getopts ":hf" opt;  do
      case $opt in

        h|help) usage; exit 0   ;;

        f|force) forceFlag=true ;;

        * ) printf "\n  Option does not exist : $OPTARG\n"
            usage; exit 1   ;;

        esac
    done

    shift $((OPTIND-1))

    if [[ -z "$1" ]]; then
        loggErr "need an repo file"
        return 1
    fi

    local file

    file="$1"

    if [[ $forceFlag == true ]]; then
        while read repo; do
            overwriteGitHubPlugin "$repo"
        done < "$file"
    else
        while read repo; do
            installGitHubPlugin "$repo"
        done < "$file"
    fi

}

function overwriteGitHubPlugin(){

    if [[ -z "$1" ]]; then
        loggErr "need an repo"
        return 1
    fi

    local user repo

    repo=${1#*/}
    user=${1%/*}

    echo "Installing plugin $user/$repo."
    if [[ -d "$repo" ]]; then
        prettyPrint "rm -rf $repo"
        rm -rf "$repo"
    fi

    test -d "$repo" || git clone "https://github.com/$1.git"
}

function installGitHubPlugin(){

    if [[ -z "$1" ]]; then
        loggErr "need an repo"
        return 1
    fi

    local user repo

    repo=${1#*/}
    user=${1%/*}

    echo "Installing plugin $user/$repo."

    git clone "https://github.com/$1.git"
}

function update(){

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

function upgrade(){

    if [[ $1 == mac ]]; then
        brew update
        brew upgrade
    elif [[ $1 == debian ]];then
        sudo apt-get update -y
        sudo apt-get upgrade -y
    elif [[ $1 == suse ]];then
        sudo zypper --non-interactive update
    elif [[ $1 == arch ]];then
        sudo pacman -Syu
    elif [[ $1 == redhat ]];then
        sudo yum upgrade -y
    elif [[ $1 == freebsd ]];then
        sudo pkg upgrade -y
    else
        prettyPrint "Error with upgrade with $1." >&2
    fi
}

function refresh(){

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

function prettyPrintInstaller(){

    (( ++INSTALL_COUNTER ))
    printf "\x1b[32;1m"
    perl -le "print '#'x80"
    printf "\x1b[34;4m"
    printf "$INSTALL_COUNTER>>> $1\n"
    printf "\x1b[0;32;1m"
    perl -le "print '#'x80"
    printf "\x1b[0m"
    printf "\n"
}

function needSudo(){

    if [[ ! -w "$1" ]]; then
        return 0
    else
        return 1
    fi
}

function proceed(){

    while true; do
        printf "Proceed?(y/n) >>> "
        read -n1
        echo
        case $REPLY in
            [yY])
                break;
                ;;
            [nN])
                exit 1
                ;;
            *)
                loggErr "You must enter y(es) or n(no)"
                ;;
        esac
    done
}

function prettyPrint(){

    if [[ -n "$1" ]];then
        printf "\x1b[1;4m"
        printf "%s " "$@"
        printf "\x1b[0m\n"
    else
        loggErr "Need one arg" 
        return 1
    fi
}

function bannerSleep(){

    local time
    time=1

    if [[ -n $1 ]]; then
        time=$1
    fi

    bash "$ZPWR_SCRIPTS/about.sh"
    sleep $time
}

function prettyPrintBoxStdin(){

    local perlfile

    perlfile="$ZPWR_SCRIPTS/boxPrint.pl"

    [[ ! -e "$perlfile" ]] && echo "where is perlfile '$perlfile'?" >&1 && exit 1
    (( ++INSTALL_COUNTER ))
    {
        printf "$INSTALL_COUNTER>>> $@\n"
        cat
    } | "$perlfile" -f
    echo
}

function prettyPrintBox(){

    local perlfile

    perlfile="$ZPWR_SCRIPTS/boxPrint.pl"

    [[ ! -e "$perlfile" ]] && echo "where is perlfile '$perlfile'?" >&1 && exit 1
    (( ++INSTALL_COUNTER ))
    printf "$INSTALL_COUNTER>>> $@\n" | "$perlfile" -f
    echo
}

function turnOffDebugging(){

    set +x
    set +v
    exec 2> /dev/tty
}

function turnOnDebugging(){

    set -x
    set -v
    exec 2>> >(tee "$ZPWR_INSTALLER_OUTPUT/logfile.txt")
    exec >> >(tee "$ZPWR_INSTALLER_OUTPUT/logfile.txt")
}

function alternatingPrettyPrint(){

    local counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        ++$counter;
        };print "\x1b[0m"'
    else
        perl -F"$ZPWR_DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        ++$counter
        }; print "\x1b[0m"' <<< "$@"

    fi

}

function clearGitCache(){

    if ! isGitDir; then
        loggNotGit
        return 1
    fi

    git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d 2>/dev/null
    git reflog expire --expire=now --all 2>/dev/null
    git gc --prune=now 2>/dev/null
}

function gitRepoUpdater() {

    local enclosing_dir generic_git_repo_plugin

    enclosing_dir="$1"

    if [[ -d "$enclosing_dir" ]]; then
        for generic_git_repo_plugin in "$enclosing_dir/"*; do
            if [[ -d "$generic_git_repo_plugin" ]]; then
                    (
                        builtin cd "$generic_git_repo_plugin" &&
                        isGitDir && 
                        printf "\x1b[1m%s:\x1b[0m " "$(basename "$generic_git_repo_plugin")" &&
                        git fetch --all --prune &&
                        git pull --all && clearGitCache
                    )
            fi
        done
    fi
}

function listNoClear () {

    if commandExists exa; then
        eval "$ZPWR_EXA_COMMAND"
        return 0
    fi

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        if commandExists grc; then
            grc -c "$HOME/conf.gls" gls \
            -iFlhA --color=always
        else
            ls -iFlhAO
        fi
    else
        if commandExists grc; then
            grc -c "$HOME/conf.gls" \
            ls -iFlhA --color=always
        else
            ls -ifhlA
        fi
    fi
}


function clearList() {

    local FOUND out out2 ls_command lib_command rank loc arg

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        if commandExists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if commandExists grc; then
                ls_command="grc -c $HOME/conf.gls gls -iFlhAd --color=always"
            else
                ls_command="ls -iFlhAOd"
            fi
        fi
        lib_command="otool -L"
    elif [[ "$ZPWR_OS_TYPE" == linux ]];then

        if commandExists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if commandExists grc; then
                ls_command="grc -c $HOME/conf.gls ls -iFlhA --color=always"
            else
                ls_command="ls -iFlhA"
            fi
        fi
        lib_command="ldd"
    else
        if commandExists grc;then
            ls_command="grc -c $HOME/conf.gls ls -iFlhA"
        else
            ls_command="ls -iFhlA"
        fi
        lib_command="ldd"
    fi

    if [[ -n "$1" ]]; then
        for arg in "$@"; do
            FOUND=false
            prettyPrint "/--------------- $arg --------------/"
            # perl boxPrint.pl "$arg"
            echo
            if exists $arg; then
                FOUND=true
                # exe matching
                while read loc;do
                    lf="$(echo $loc | cut -d' ' -f3-10)"
                    if [[ $(type -- "$arg") == "$loc" ]]; then
                        rank="Primary"
                    else
                        rank="Secondary"
                    fi
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
                        out=$(man -wa "$(basename $lf)" 2>/dev/null)
                        if [[ -n "$out" ]]; then
                            prettyPrint "MAN:"
                            echo "$out"
                        fi
                        if isZsh; then
                            out="$(hash | command grep "^$arg=")"
                            if [[ -n "$out" ]]; then
                                prettyPrint "HASH TABLE:"
                                echo "$(hash | command grep "^$arg=")"
                            fi
                        fi
                        prettyPrint "PRECEDENCE: "
                        echo "$rank"
                        echo
                        echo
                    else
                        prettyPrint "FILE TYPE:"
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
                        prettyPrint "PRECEDENCE: "
                        echo "$rank"
                        echo
                        echo
                    fi
                done < <(type -a -- "$arg" 2>/dev/null | sort | uniq)
            fi
            # path matching, not exe
            if eval "$ls_command -d -- \"$arg\"" 2>/dev/null; then
                FOUND=true
                prettyPrint "$arg"
                prettyPrint "FILE TYPE:"
                file -- "$arg"
                prettyPrint "SIZE:"
                du -sh -- "$arg"
                prettyPrint "STATS:"
                stat -- "$arg"
                # for readibility
                echo
                echo
            else
                out=$(declare -m -- "$arg")

                if [[ -n $out ]]; then
                    FOUND=true
                    prettyPrint "DATA TYPE:"
                    print -rl -- ${(tP)arg}
                    prettyPrint "VALUE:"
                    echo $out
                    # for readibility
                    echo
                    echo
                else
                    out2=$(set | command grep "^$arg=")
                    if [[ -n $out2 ]]; then
                        FOUND=true
                        prettyPrint "DATA TYPE:"
                        print -rl -- ${(tP)arg}
                        prettyPrint "ENV:"
                        echo $out2
                        # for readibility
                        echo
                        echo
                    fi
                fi
            fi
            if [[ $FOUND == false ]]; then
                loggErr "NOT FOUND: '"'$arg'"'_____ = ""'$arg'"
            fi
        done
    else
        clear && eval "$ls_command"
    fi
}

#}}}***********************************************************


