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
function zpwrIsZsh(){

    test -n "$ZSH_VERSION"
}

if zpwrIsZsh; then

    function zpwrValidatePipPackage() {

        if [[ -z "$1" ]]; then
            return 1
        fi

        local package="$1"

        #get last package
        if (( $+zpwrPipBlacklist )); then
            if (( zpwrPipBlacklist[(Ie)$package] )); then
                zpwrLogInfo "skip update of $package due to blacklist"
                return 1
            fi
        fi

        return 0
    }

    function zpwrUpdatePip() {

        if [[ -z "$1" || -z "$2" || -z "$3" ]]; then
            zpwrLogConsoleErr "usage: zpwrUpdatePip COMMAND PACKAGE_MANAGER FORCE_SUDO"
            return 1
        fi

        local cmd="$1"
        local packageManager="$2"
        local forceSudo="$3"
        local needSudoBase installDir

        typeset -Tgx ZPWR_PIP_BLACKLIST zpwrPipBlacklist

        zpwrCommandExists ${=cmd} && ${=cmd} -c 'import pip' &> /dev/null && {

            zpwrPrettyPrint "Updating $cmd packages"

            installDir="$PIP3_HOME"

            needSudoBase=false

            zpwrPrettyPrint "Outdated $packageManager list with sudo needed: $needSudoBase"

            if [[ "$needSudoBase" == true ]]; then
                outdated=$(sudo -EH ${=cmd} -m pip list --user --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
            else
                outdated=$(${=cmd} -m pip list --user --outdated --format=columns | sed -n '3,$p' | awk '{print $1}')
            fi

            for package in "${(@f)outdated}"; do

                zpwrValidatePipPackage "$package" || continue

                installDir="$PIP3_HOME/$package"

                if [[ $forceSudo == true || ! -w "$installDir" ]]; then
                    zpwrNeedSudo=true
                else
                    zpwrNeedSudo=false
                fi

                zpwrPrettyPrint "sudo needed: $zpwrNeedSudo for $package at $installDir"

                if [[ "$zpwrNeedSudo" == true ]]; then
                    sudo -EH ${=cmd} -m pip install --break-system-packages --user --upgrade --ignore-installed -- "$package"
                else
                    ${=cmd} -m pip install --break-system-packages --user --upgrade --ignore-installed -- "$package"
                fi

            done

            zpwrPrettyPrint "Updating $packageManager with sudo needed: $needSudoBase"

            if [[ "$needSudoBase" == true ]]; then
                sudo -EH ${=cmd} -m pip install --break-system-packages --user --upgrade pip setuptools wheel
            else
                ${=cmd} -m pip install --break-system-packages --user --upgrade pip setuptools wheel
            fi

        }
    }

    if ! type -a -- zpwrExists>/dev/null 2>&1; then

        function zpwrExists(){

            if [[ -z "$1" ]]; then
                zpwrLogConsoleErr "usage: zpwrExists <item...>"
                return 1
            fi
            local i
            #alternative is command -v
            for i in "$@";do
                type -a -- "$i" &>/dev/null || return 1 &&
                [[ $(type -a -- "$i" 2>/dev/null) != *"suffix alias"* ]]
            done
        }
    fi
else
    function zpwrExists(){

        if [[ -z "$1" ]]; then
            zpwrLogConsoleErr "usage: zpwrExists <item...>"
            return 1
        fi
        local i

        #alternative is command -v
        for i in "$@";do
            type -a -- "$i" >/dev/null 2>&1
        done
    }
fi

function zpwrStdinExists(){

    local in arg
    in="$(cat)"
    arg="$1"
    if [[ -n "$in" ]]; then
        echo "$in"
    else
        echo "No input found for $arg!"
    fi
}

function zpwrCommandExists(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrCommandExists <command...>"
        return 1
    fi
    local cmd

    for cmd in "$@"; do
        type -ap -- "$cmd" >/dev/null 2>&1 || return 1
    done
}

function zpwrBlocksToSize(){

    local bytes input

    read input
    bytes=$(( input * 512 ))
    echo $bytes | humanreadable
}

function zpwrHumanReadable(){

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

function zpwrPerlRemoveSpaces(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrPerlRemoveSpaces <file...>"
        return 1
    fi

    local file

    for file;do
        printf "\x1b[38;5;129mRemoving from \x1b[38;5;57m${file}\x1b[38;5;46m"'!'"\n\x1b[0m"
        perl -pi -e 's@\s+$@\n@g; s@\x09$@    @g;s@\x20@ @g; s@^s*\n$@@; s@(\S)[\x20]{2,}@$1\x20@' "$file"
    done
}

function zpwrEscapeRemove(){

    while read; do
        echo "$REPLY" | sed -e 's@\e\[.\{1,5\}m@@g'
    done
}

function zpwrPrettyPrintNoNewline(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrPrettyPrintNoNewline <string>"
        return 1
    fi

    printf "\x1b[1m"
    printf "%s " "$@"
    printf "\x1b[0m"
}

function zpwrIsBinary() {

    [[ $(LC_MESSAGES=C command grep -Hm1 '^' < "${1:-$REPLY}") =~ '^Binary' ]]
}

function zpwrLogColor(){

    if [[ -z $2 ]]; then
        zpwrLogConsoleErr "usage: zpwrLogColor <lvl> <msg>"
        return 1
    fi

    printf "${ZPWR_LOG_UNDER_COLOR}_____________$ZPWR_LOG_DATE_COLOR$(date)\x1b[0m${ZPWR_LOG_UNDER_COLOR}____$1: "
    shift
    printf "_$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_START_CHAR$ZPWR_LOG_MSG_COLOR%b\x1b[0m$ZPWR_LOG_QUOTE_COLOR$ZPWR_QUOTE_END_CHAR${ZPWR_LOG_UNDER_COLOR}_" "$*"
    printf "\x1b[0m"
    printf "\n"
}

function zpwrLogConsoleInfo(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrLogConsoleInfo <msg>"
        return 1
    fi
    zpwrLogColor INFO "$*" >&1
}

function zpwrLogConsoleErr(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrLogConsoleErr <msg>"
        return 1
    fi
    zpwrLogColor ERROR "$*" >&2
}

function zpwrLogConsoleDebug(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrLogConsoleDebug <msg>"
        return 1
    fi

    if [[ $ZPWR_DEBUG == true ]]; then
       zpwrLogColor DEBUG "$*"
    fi
}

function zpwrLogConsoleTrace(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrLogConsoleTrace <msg>"
        return 1
    fi

    if [[ $ZPWR_TRACE == true ]]; then
       zpwrLogColor TRACE "$*"
    fi
}

function zpwrLogConsoleNotGit() {

    zpwrLogConsoleErr "'$(pwd)' is not a git dir"
}

function zpwrLogConsolePrefix(){

    zpwrPrettyPrint "$ZPWR_CHAR_LOGO $*"
    zpwrLogInfo "$ZPWR_CHAR_LOGO $*"

}

function zpwrLogConsoleHeader(){

    zpwrPrettyPrint "$*"
    zpwrLogColor "$*"

}

function zpwrLog(){

    local lvl

    if [[ $ZPWR_COLORS == true ]]; then
        if [[ -n $2 ]]; then
            lvl=$1
            shift
            zpwrLogColor $lvl "$*" >> "$ZPWR_LOGFILE"
        elif [[ -p /dev/stdin ]]; then
            zpwrLogColor STDIN "$(cat)" >> "$ZPWR_LOGFILE"
        elif [[ -z "$2" ]]; then
                zpwrLogConsoleErr "usage: zpwrLog <lvl> <msg>"
                return 1
        fi
    else
        if [[ -n $2 ]]; then
            lvl=$1
            shift
            {
                printf "\n_____________$(date)____ "
                printf "_$lvl: '%s'_ " "$@"
                printf "\n"
            } >> "$ZPWR_LOGFILE"
        elif [[ -p /dev/stdin ]]; then
            {
                printf "\n_____________$(date)____ _STDIN: '"
                cat
                printf "'_ \n"
            } >> "$ZPWR_LOGFILE"
        else
            if [[ -z "$1" ]]; then
                zpwrLogConsoleErr "usage: zpwrLog <msg>"
                return 1
            fi
        fi
    fi
}

function zpwrLogInfo(){

    zpwrLog INFO "$*"
}

function zpwrLogError(){

    zpwrLog ERROR "$*"
}

function zpwrLogDebug(){

    if [[ $ZPWR_DEBUG == true ]]; then
       zpwrLog DEBUG "$*"
    fi
}

function zpwrLogTrace(){

    if [[ $ZPWR_TRACE == true ]]; then
       zpwrLog TRACE "$*"
    fi
}
function zpwrNeedSudo(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrNeedSudo <file>"
        return 1
    fi

    if [[ ! -w "$1" ]]; then
        return 0
    else
        return 1
    fi
}

function zpwrFail(){

        echo "Failure due to $1" >&2
        exit 1
}

function zpwrFileMustExist(){

    if [[ ! -f "$1" ]]; then
        echo "Where is the file '$1'?" >&2
        exit 1
    fi
}

function zpwrIsGitDir(){

    command git rev-parse --git-dir 2> /dev/null 1>&2
}

function zpwrIsGitDirMessage(){

    if ! command git rev-parse --git-dir 2> /dev/null 1>&2; then
        printf "\x1b[0;1;31m"
        zpwrLogConsoleErr "NOT GIT DIR: $(pwd -P)"
        printf "\x1b[0m"
        return 1
    fi
}


function zpwrGoInstallerDir(){

    local ret

    ret=0

    builtin cd "$ZPWR_INSTALL" || ret=1

    if [[ "$(pwd)" != "$ZPWR_INSTALL" ]]; then
        echo "pwd '$PWD' is not ZPWR_INSTALL '$ZPWR_INSTALL'" >&2
    fi

    if (( ret == 1 )); then
        echo "where is ZPWR_INSTALL '$ZPWR_INSTALL'" >&2
        exit 1
    fi
}


function zpwrGoInstallerOutputDir(){

    local ret

    ret=0

    if [[ ! -d "$ZPWR_INSTALLER_OUTPUT" ]]; then
        command mkdir -p "$ZPWR_INSTALLER_OUTPUT"
    fi

    builtin cd "$ZPWR_INSTALLER_OUTPUT" || ret=1

    if [[ "$(pwd)" != "$ZPWR_INSTALLER_OUTPUT" ]]; then
        echo "pwd '$PWD' is not '$ZPWR_INSTALLER_OUTPUT'" >&2
    fi

    if (( ret == 1 )); then
        echo "where is ZPWR_INSTALLER_OUTPUT '$ZPWR_INSTALLER_OUTPUT'" >&2
        exit 1
    fi
}

function zpwrInstallGitHubPluginsFromFile(){

    function usage (){
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
        zpwrLogConsoleErr "usage: zpwrInstallGitHubPluginsFromFile <repo_file>"
        return 1
    fi

    local file

    file="$1"

    if [[ $forceFlag == true ]]; then
        while read repo; do
            zpwrOverwriteGitHubPlugin "$repo"
        done < "$file"
    else
        while read repo; do
            zpwrInstallGitHubPlugin "$repo"
        done < "$file"
    fi
    unset usage

}

function zpwrOverwriteGitHubPlugin(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrOverwriteGitHubPlugin <repo>"
        return 1
    fi

    local user repo

    repo=${1#*/}
    user=${1%/*}

    echo "Installing plugin $user/$repo."
    if [[ -d "$repo" ]]; then
        zpwrPrettyPrint "rm -rf $repo"
        rm -rf "$repo"
    fi

    test -d "$repo" || git clone "https://github.com/$1.git"
}

function zpwrInstallGitHubPlugin(){

    if [[ -z "$1" ]]; then
        zpwrLogConsoleErr "usage: zpwrInstallGitHubPlugin <repo>"
        return 1
    fi

    local user repo

    repo=${1#*/}
    user=${1%/*}

    echo "Installing plugin $user/$repo."

    git clone "https://github.com/$1.git"
}

function zpwrInstallerUpdate(){

    zpwrExists "$1" || {

        if [[ $2 == mac ]]; then
            brew install "$1"
        elif [[ $2 == debian ]];then
            sudo apt-get install -y "$1"
        elif [[ $2 == alpine ]];then
            sudo apk add "$1"
        elif [[ $2 == suse ]];then
            sudo zypper --non-interactive install "$1"
        elif [[ $2 == arch ]];then
            sudo pacman -S --noconfirm "$1"
        elif [[ $2 == redhat ]];then
            sudo yum install -y "$1"
        elif [[ $2 == freebsd ]];then
            sudo pkg install -y "$1"
        else
            zpwrPrettyPrint "Error at install of '$1' on '$2'." >&2
        fi
    }
}

function zpwrInstallerUpgrade(){

    if [[ $1 == mac ]]; then
        brew update
        brew upgrade
    elif [[ $1 == debian ]];then
        sudo apt-get update -y
        sudo apt-get upgrade -y
    elif [[ $1 == alpine ]];then
        sudo apk update
        sudo apk upgrade
    elif [[ $1 == suse ]];then
        sudo zypper --non-interactive update
    elif [[ $1 == arch ]];then
        sudo pacman -Syu --noconfirm
    elif [[ $1 == redhat ]];then
        sudo yum upgrade -y
    elif [[ $1 == freebsd ]];then
        sudo pkg upgrade -y
    else
        zpwrPrettyPrint "Error with upgrade with '$1'." >&2
    fi
}

function zpwrInstallerRefresh(){

    if [[ $1 == mac ]]; then
        brew update
    elif [[ $1 == debian ]];then
        sudo apt-get update -y
        sudo apt-get autoremove -y
    elif [[ $1 == alpine ]];then
        sudo apk update
    elif [[ $1 == suse ]];then
        sudo zypper refresh
    elif [[ $1 == arch ]];then
        sudo pacman -Syy --noconfirm
    elif [[ $1 == freebsd ]];then
        sudo pkg update
    elif [[ $1 == redhat ]];then
        sudo yum check-update -y
    else
        zpwrPrettyPrint "Error with refresh with '$1'." >&2
    fi

}

function zpwrPrettyPrintInstaller(){

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

function zpwrNeedSudo(){

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
                zpwrLogConsoleErr "You must enter y(es) or n(no)"
                ;;
        esac
    done
}

function zpwrPrettyPrint(){

    if [[ -n "$1" ]];then
        printf "\x1b[1;4m"
        printf "%s " "$@"
        printf "\x1b[0m\n"
    else
        zpwrLogConsoleErr "usage: zpwrPrettyPrint <msg>"
        return 1
    fi
}

function zpwrPrettyPrintBoxStdin(){

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

function zpwrPrettyPrintBox(){

    local perlfile

    perlfile="$ZPWR_SCRIPTS/boxPrint.pl"

    [[ ! -e "$perlfile" ]] && echo "where is perlfile '$perlfile'?" >&1 && exit 1
    (( ++INSTALL_COUNTER ))
    printf "$INSTALL_COUNTER>>> $@\n" | "$perlfile" -f
    echo
}

function zpwrTurnOffDebugging(){

    set +x
    set +v
    exec 2> /dev/tty
}

function zpwrTurnOnDebugging(){

    set -x
    set -v
    exec 2>> >(tee "$ZPWR_INSTALLER_OUTPUT/logfile.txt")
    exec >> >(tee "$ZPWR_INSTALLER_OUTPUT/logfile.txt")
}

function zpwrAlternatingPrettyPrint(){

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

function zpwrClearGitCache(){

    if ! zpwrIsGitDir; then
        zpwrLogConsoleNotGit
        return 1
    fi

    git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d 2>/dev/null
    git reflog expire --expire=now --all 2>/dev/null
    git gc --prune=now 2>/dev/null
}

function zpwrGitRepoUpdater() {

    local enclosing_dir generic_git_repo_plugin

    enclosing_dir="$1"

    if [[ -d "$enclosing_dir" ]]; then
        for generic_git_repo_plugin in "$enclosing_dir/"*; do
            if [[ -d "$generic_git_repo_plugin" ]]; then
                    (
                        builtin cd "$generic_git_repo_plugin" &&
                        zpwrIsGitDir && 
                        printf "\x1b[1m%s:\x1b[0m " "$(basename "$generic_git_repo_plugin")" &&
                        git fetch --all --prune &&
                        git pull --all && zpwrClearGitCache
                    )
            fi
        done
    fi
}

function zpwrClearList() {

    local FOUND out out2 ls_command lib_command rank loc arg

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        if zpwrCommandExists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if zpwrCommandExists grc; then
                ls_command="grc -c $HOME/conf.gls gls -iFlhAd --color=always"
            else
                ls_command="ls -iFlhAOd"
            fi
        fi
        lib_command="otool -L"
    elif [[ "$ZPWR_OS_TYPE" == linux ]];then

        if zpwrCommandExists exa;then
            ls_command="$ZPWR_EXA_COMMAND"
        else
            if zpwrCommandExists grc; then
                ls_command="grc -c $HOME/conf.gls ls -iFlhA --color=always"
            else
                ls_command="ls -iFlhA"
            fi
        fi
        lib_command="ldd"
    else
        if zpwrCommandExists grc;then
            ls_command="grc -c $HOME/conf.gls ls -iFlhA"
        else
            ls_command="ls -iFhlA"
        fi
        lib_command="ldd"
    fi

    if [[ -n "$1" ]]; then
        for arg in "$@"; do
            FOUND=false
            zpwrPrettyPrint "/--------------- $arg --------------/"
            # perl boxPrint.pl "$arg"
            echo
            if zpwrExists $arg; then
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
                        zpwrPrettyPrint "$lf" &&
                        eval "$ls_command -- $lf" &&
                        zpwrPrettyPrint "FILE TYPE:" &&
                        eval "file -- $lf" &&
                        zpwrPrettyPrint "DEPENDENT ON:" &&
                        eval "$lib_command $lf"
                        zpwrPrettyPrint "SIZE:"
                        du -sh -- "$lf" 2>/dev/null
                        zpwrPrettyPrint "STATS:"
                        stat -- "$lf" 2>/dev/null
                        out=$(man -wa "$(basename $lf)" 2>/dev/null)
                        if [[ -n "$out" ]]; then
                            zpwrPrettyPrint "MAN:"
                            echo "$out"
                        fi
                        if zpwrIsZsh; then
                            out="$(hash | command grep "^$arg=")"
                            if [[ -n "$out" ]]; then
                                zpwrPrettyPrint "HASH TABLE:"
                                echo "$(hash | command grep "^$arg=")"
                            fi
                        fi
                        zpwrPrettyPrint "PRECEDENCE: "
                        echo "$rank"
                        echo
                        echo
                    else
                        zpwrPrettyPrint "FILE TYPE:"
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
                        zpwrPrettyPrint "PRECEDENCE: "
                        echo "$rank"
                        echo
                        echo
                    fi
                done < <(type -a -- "$arg" 2>/dev/null | sort | uniq)
            fi
            # path matching, not exe
            if eval "$ls_command -d -- \"$arg\"" 2>/dev/null; then
                FOUND=true
                zpwrPrettyPrint "$arg"
                zpwrPrettyPrint "FILE TYPE:"
                file -- "$arg"
                zpwrPrettyPrint "SIZE:"
                du -sh -- "$arg" 2>/dev/null
                zpwrPrettyPrint "STATS:"
                stat -- "$arg" 2>/dev/null
                # for readability
                echo
                echo
            else
                out=$(typeset -m -- "$arg")

                if [[ -n $out ]]; then
                    FOUND=true
                    zpwrPrettyPrint "DATA TYPE:"
                    print -rl -- ${(tP)arg}
                    zpwrPrettyPrint "VALUE:"
                    echo $out
                    # for readability
                    echo
                    echo
                else
                    out2=$(set | command grep "^$arg=")
                    if [[ -n $out2 ]]; then
                        FOUND=true
                        zpwrPrettyPrint "DATA TYPE:"
                        print -rl -- ${(tP)arg}
                        zpwrPrettyPrint "ENV:"
                        echo $out2
                        # for readability
                        echo
                        echo
                    fi
                fi
            fi
            if [[ $FOUND == false ]]; then
                zpwrLogConsoleErr "NOT FOUND: '"'$arg'"'_____ = ""'$arg'"
            fi
        done
    else
        clear && eval "$ls_command"
    fi
}

#}}}***********************************************************
