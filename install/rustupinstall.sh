#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Apr 19 20:33:51 EDT 2019
##### Purpose: bash script to install rust exes
##### Notes:
#}}}***********************************************************
if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh


while true; do
    if zpwrCommandExists curl;then
        break
    fi
    sleep 5
done

function ins() {
    p="$1"
    e="$2"

    zpwrCommandExists "$e" || {
        zpwrPrettyPrintBox "Installing Rustup if cargo does not exist"
        zpwrCommandExists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
        zpwrPrettyPrintBox "Updating rustup"
        "$HOME/.cargo/bin/rustup" update
        zpwrPrettyPrintBox "Installing "$p" with cargo"
        "$HOME/.cargo/bin/cargo" install "$p"
    }
}

if [[ "$ZPWR_OS_TYPE" == "linux" ]];then

    zpwrOsFamily \
        ZPWR_DISTRO_FAMILY=debian \
        ZPWR_DISTRO_FAMILY=redhat \
        ZPWR_DISTRO_FAMILY=suse \
        ZPWR_DISTRO_FAMILY=suse \
        'export CFLAGS=-mno-outline-atomics; ZPWR_DISTRO_FAMILY=alpine' \
        'zpwrPrettyPrintBox "Your ZPWR_DISTRO_FAMILY $ZPWR_DISTRO_NAME is unsupported!" >&2
        exit 1'
fi

ins bat bat
ins hyperfine hyperfine
ins diskus diskus
ins vivid vivid
ins hexyl hexyl
ins fd-find fd
ins exa exa
ins ripgrep rg
ins thumbs thumbs
ins temprs tp
ins git-delta delta

zpwrPrettyPrintBox "Installing cargo-update with Cargo"
"$HOME/.cargo/bin/cargo" install cargo-update
