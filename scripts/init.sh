#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Aug 29 00:34:22 EDT 2020
##### Purpose: bash/zsh script to load zpwr env files
##### Notes: need to source lib files because functions not exported
#}}}***********************************************************

if ! type -- "zpwrExists" >/dev/null 2>&1;then
    if [[ -z "$1" ]]; then
        test -z "$ZPWR" && export ZPWR="$HOME/.zpwr"
    else
        export ZPWR="$1"
    fi
    test -z "$ZPWR_ENV" && export ZPWR_ENV="$ZPWR/env"
    test -z "$ZPWR_ENV_FILE" && export ZPWR_ENV_FILE="$ZPWR_ENV/.zpwr_env.sh"
    test -z "$ZPWR_RE_ENV_FILE" && export ZPWR_RE_ENV_FILE="$ZPWR_ENV/.zpwr_re_env.sh"

    if [[ -z "$ZPWR_LIB" ]]; then
        if source "$ZPWR_ENV_FILE"; then
            : zpwrLogInfo "loaded ZPWR_ENV_FILE '$ZPWR_ENV_FILE'"
        else
            echo "cannot source ZPWR_ENV_FILE '$ZPWR_ENV_FILE'" >&2
            exit 1
        fi

        if test -f "$ZPWR_TOKEN_PRE"; then
            if source "$ZPWR_TOKEN_PRE"; then
                : zpwrLogInfo "loaded ZPWR_TOKEN_PRE '$ZPWR_TOKEN_PRE'"
            else
                zpwrLogConsoleErr "could not source ZPWR_TOKEN_PRE '$ZPWR_TOKEN_PRE'"
            fi
        else
            touch "$ZPWR_TOKEN_PRE"
        fi

        if source "$ZPWR_RE_ENV_FILE"; then
            : zpwrLogInfo "loaded ZPWR_RE_ENV_FILE '$ZPWR_RE_ENV_FILE'"
        else
            zpwrLogConsoleErr "where is ZPWR_RE_ENV_FILE '$ZPWR_RE_ENV_FILE'"
            exit 1
        fi

        if test -f "$ZPWR_TOKEN_POST"; then
            if source "$ZPWR_TOKEN_POST"; then
                : zpwrLogInfo "loaded ZPWR_TOKEN_POST '$ZPWR_TOKEN_POST'"
            else
                zpwrLogConsoleErr "could not source ZPWR_TOKEN_POST '$ZPWR_TOKEN_POST'"
            fi
        else
            touch "$ZPWR_TOKEN_POST"
        fi
    else

        # env vars are exported
        # so just get the functions
        if source "$ZPWR_LIB"; then
            : zpwrLogInfo "loaded ZPWR_LIB '$ZPWR_LIB'"
        else
            zpwrLogConsoleErr "where is ZPWR_LIB '$ZPWR_LIB'"
            exit 1
        fi
        if source "$ZPWR_ALIAS_FILE"; then
            : zpwrLogInfo "loaded ZPWR_ALIAS_FILE '$ZPWR_ALIAS_FILE'"
        else
            zpwrLogConsoleErr "where is ZPWR_ALIAS_FILE '$ZPWR_ALIAS_FILE '"
            exit 1
        fi
    fi

    if ! zpwrIsZsh; then
        # bash xtrace prompt
        export PS4=$'>\e[1;4;39m${BASH_SOURCE}\e[37m\e[0;34m__${LINENO}\e[37m__\e[0;32m${FUNCNAME[0]}> \e[0m'
    fi

fi
