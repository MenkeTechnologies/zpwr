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

if ! type -- "zpwrExists" >/dev/null 2>&1;then
    test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR/env/.zpwr_env.sh"
    source "$ZPWR_ENV_FILE" || {
        echo "cannot access $ZPWR_ENV_FILE" >&2
        exit 1
    }
fi

source "$ZPWR_SCRIPTS/crossOSCommands.sh" || {
    echo "where is $ZPWR_SCRIPTS/crossOSCommands.sh" >&2
    return 1
}

source "$ZPWR_SCRIPTS/crossOSExecute.sh" || {
    echo "where is $ZPWR_SCRIPTS/crossOSExecute.sh" >&2
    return 1
}


if [[ ! -d "$ZPWR_LOCAL_TEMP" ]]; then
    mkdir -p "$ZPWR_LOCAL_TEMP"
fi

#}}}***********************************************************

#{{{                    MARK:Env Vars
#**************************************************************
export Z_DATA="$HOME/.z"
# ANSI quotes not single quotes needed here for \
export PS3=$'\e[1;34m-->>>> \e[0m'
# defaut layout config for nmon
export NMON='mndckt'
export CLICOLOR="YES"
export LSCOLORS="ExFxBxDxCxegedabagacad"
export D="$HOME/Desktop"
export PYEXECUTABLES="$HOME/Documents/pythonScripts"
export ZPWR_PYSCRIPTS="$HOME/PycharmProjects/fromShell"
export XAUTHORITY="$HOME/.Xauthority"
export TERMINAL_APP="Terminal.app"
export YARN_HOME="$HOME/.config/yarn"
export TMUX_HOME="$HOME/.tmux"
export HISTSIZE=50000
export HISTTIMEFORMAT=' %F %T _ '
export UMASK=077
export LESS="-M -N -R -K -F -X -i"

if [[ -z "$TMUX" ]]; then
    export TERM="xterm-256color"
else
    export NCURSES_NO_UTF8_ACS=1
fi

if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
    #export CPATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"

    if [[ -d "/opt/homebrew" ]]; then
        eval $(/opt/homebrew/bin/brew shellenv)
        export HOMEBREW_HOME_FORMULAE="$HOMEBREW_PREFIX/Library/taps/homebrew/homebrew-core/formula"
    else
        export HOMEBREW_HOME_FORMULAE="$HOMEBREW_PREFIX/Homebrew/Library/taps/homebrew/homebrew-core/formula"
        eval $(brew shellenv)
    fi
    export NODE_HOME="$HOMEBREW_PREFIX/lib/node_modules"
    export NODE_PATH="$NODE_HOME:$YARN_HOME/global/node_modules"
    export HOMEBREW_OPT_HOME="$HOMEBREW_PREFIX/opt"
    export HOMEBREW_DBHOME="$HOMEBREW_PREFIX/var"
    export HOMEBREW_DB_CONF="$HOMEBREW_PREFIX/etc"
    export GROOVY_LIB="$HOMEBREW_OPT_HOME/groovy"
    export SCALA_HOME="$HOMEBREW_OPT_HOME/scala"
    export PERL_HOME="$HOMEBREW_OPT_HOME/perl"
    #eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
    export MANPATH=$HOME/perl5/man:$MANPATH
    export MANPATH="$HOMEBREW_OPT_HOME/erlang/lib/erlang/man:$HOMEBREW_PREFIX/share/man:$MANPATH"
    export TUTORIAL_FILES="$HOME/Documents/tutorialsRepo"

    if [[ "$ZPWR_EDITOR_TO_VIM" == true ]]; then
        if zpwrCommandExists nvim; then
            export EDITOR="$ZPWR_VIM"
            export PSQL_EDITOR="$ZPWR_VIM -c \"setf sql\""
        fi
    fi
else
    if [[ "$ZPWR_EDITOR_TO_VIM" == true ]]; then
        if zpwrCommandExists nvim; then
            export EDITOR="$ZPWR_VIM"
            export PSQL_EDITOR="$ZPWR_VIM -c \"setf sql\""
        fi
    fi
fi
#}}}***********************************************************

#}}}

#{{{                    MARK:PATH
#**************************************************************
if ! echo "$PATH" | command grep -isq "$ZPWR_SCRIPTS"; then
    export PATH="$PATH:$HOME/go/bin"

    export PATH="$PYEXECUTABLES:$ZPWR_SCRIPTS/save-run:$HOME/.local/bin:$HOME/perl5/bin:$ZPWR_SCRIPTS:/opt/X11/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"

    if [[ "$ZPWR_OS_TYPE" == darwin ]]; then
        #export CPATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"

        export PATH="$ZPWR_SCRIPTS_MAC:$PATH:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/tools/bin:$HOME/Library/Android/sdk/platform-tools:/Library/Developer/CommandLineTools/usr/bin:$HOME/.platformio/penv/bin"

        if [[ -d "/opt/homebrew" ]]; then
            export PATH="/opt/homebrew/bin:$PATH"
        fi
    else
        export PATH="$PATH:/usr/games"
    fi

    zpwrCommandExists yarn && export PATH="$(yarn global bin):$PATH"

#}}}***********************************************************


#{{{                    MARK:Rust Config
#**************************************************************
    export PATH="$HOME/.cargo/bin:$PATH"
    if zpwrCommandExists exa; then
        alias exa="$ZPWR_EXA_COMMAND"
    fi

#}}}***********************************************************

#{{{                    MARK:GO
#**************************************************************
    export GOPATH="$HOME/go"

fi
#}}}


#{{{                    MARK:Shell functions
#**************************************************************
if zpwrCommandExists systemctl; then

    if zpwrIsZsh; then
        eval 'autoload -z $ZPWR_AUTOLOAD_SYSTEMCTL/*(.:t)'
    fi

fi

zpwrCommandExists pssh && function pir(){

    if ! test -s "$ZPWR_LOCAL/hosts.txt"; then
        zpwrLogConsoleErr "you need hosts.txt in your $ZPWR_LOCAL"
        return 1
    fi
    pssh --inline-stdout --timeout ${ZPWR_PSSH_TIMEOUT:-0} -h "$ZPWR_LOCAL/hosts.txt" "$@"
}

if [[ $ZPWR_LEARN != false ]]; then
    export ZPWR_SCHEMA_NAME=root
    export ZPWR_TABLE_NAME=LearningCollection
fi
#}}}***********************************************************

#{{{                    MARK:Global Alias
#**************************************************************

if zpwrIsZsh; then
    declare -Tgx INFOPATH infopath
else
    if test -f "$ZPWR_TOKEN_PRE"; then
        if ! source "$ZPWR_TOKEN_PRE"; then
            zpwrLogConsoleErr "could not source ZPWR_TOKEN_PRE '$ZPWR_TOKEN_PRE'"
        fi
    else
        touch "$ZPWR_TOKEN_PRE"
    fi

    if test -f "$ZPWR_TOKEN_POST"; then
        if ! source "$ZPWR_TOKEN_POST"; then
            zpwrLogConsoleErr "could not source ZPWR_TOKEN_POST '$ZPWR_TOKEN_POST'"
        fi
    else
        touch "$ZPWR_TOKEN_POST"
    fi
fi

if [[ $ZPWR_REMOTE == false ]]; then
    return 0
fi
#}}}***********************************************************
