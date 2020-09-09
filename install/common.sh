#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:19:29 EDT 2018
#####   Purpose: bash script to hold installer lib fns
#####   Notes: 
#}}}***********************************************************

#{{{                    MARK:sanity
#**************************************************************
# do not want any surprises when relative cd to other dirs
unset CDPATH

source="${BASH_SOURCE[0]}"
while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
source="$(readlink "$source")"
[[ $source != /* ]] && source="$zpwrBaseDir/$source" # if $source was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
zpwrBaseDir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

while [[ ! -f "$zpwrBaseDir/.zpwr_root" ]]; do
    zpwrBaseDir="$(dirname "$zpwrBaseDir")"
    if [[ "$zpwrBaseDir" == / ]]; then
        echo "Could not find .zpwr_root file up the directory tree." >&2
        exit 1
    fi
done
export ZPWR="$zpwrBaseDir"
unset zpwrBaseDir

if ! test -f install.sh; then
    echo "install.sh must be in $ZPWR/install directory" >&2
    exit 1
fi

if ! test -f common.sh; then
    echo "common.sh must be in $ZPWR/install directory" >&2
    exit 1
fi

# resolve all symlinks
ZPWR_INSTALL="$(pwd -P)"
ZPWR_BASE_DIR="$ZPWR"
ZPWR_SCRIPTS="$ZPWR_BASE_DIR/scripts"
ZPWR_BASE_SCRIPTS="$ZPWR_BASE_DIR/scripts"
ZPWR_INSTALLER_OUTPUT="$ZPWR_BASE_DIR/local/installer"
test -z $ZINIT_HOME && export ZINIT_HOME="$HOME/.zinit"
#}}}***********************************************************

#{{{                    MARK:installer lib fns
#**************************************************************

if source "$ZPWR_BASE_DIR/.zpwr_env.sh";then
    echo "loaded $ZPWR_BASE_DIR/.zpwr_env.sh"
else
    echo "where is ZPWR_BASE_DIR/.zpwr_env.sh '$ZPWR_BASE_DIR/.zpwr_env.sh'?" >&2
    exit 1
fi

if source "$ZPWR_BASE_SCRIPTS/lib.sh";then
    echo "loaded $ZPWR_BASE_SCRIPTS/lib.sh"
else
    echo "where is ZPWR_BASE_SCRIPTS '$ZPWR_BASE_SCRIPTS/lib.sh'" >&2
    exit 1
fi
#}}}***********************************************************

#{{{                    MARK:source tokens
#**************************************************************
if [[ -f "$ZPWR_TOKEN_PRE" ]] && source "$ZPWR_TOKEN_PRE"; then
    echo "loaded $ZPWR_TOKEN_PRE"
fi

if source "$ZPWR_RE_ENV_FILE"; then
    echo "loaded $ZPWR_RE_ENV_FILE"
else
    echo "where is ZPWR_RE_ENV_FILE '$ZPWR_RE_ENV_FILE'" >&2
fi
#**************************************************************
