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

if ! test -f install.sh; then
    echo "install.sh ust be in ~/.zpwr/install directory" >&2
    exit 1
fi

if ! test -f common.sh; then
    echo "common.sh Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

ZPWR_OS_TYPE="$(uname -s | tr A-Z a-z)"

# resolve all symlinks
ZPWR_INSTALL="$(pwd -P)"
ZPWR_BASE_DIR="$(dirname $ZPWR_INSTALL)"
ZPWR_BASE_SCRIPTS="$ZPWR_BASE_DIR/scripts"
ZPWR_INSTALLER_OUTPUT="$ZPWR_BASE_DIR/local/installer"

export ZPWR_DELIMITER_CHAR='%'
#}}}***********************************************************

#{{{                    MARK:installer lib fns
#**************************************************************

if source "$ZPWR_BASE_SCRIPTS/lib.sh";then
    echo "loaded $ZPWR_BASE_SCRIPTS/lib.sh"
else
    echo "where is $ZPWR_BASE_SCRIPTS/lib.sh" >&2
    exit 1
fi

#}}}***********************************************************

