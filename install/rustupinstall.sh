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

# rustup installs cargo here; without it on PATH every ins call reinstalls
# rustup and never sees binaries an earlier ins already put there
export PATH="$HOME/.cargo/bin:$PATH"

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

zpwrPrettyPrintBox "Installing Rustup if cargo does not exist"
zpwrCommandExists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
zpwrPrettyPrintBox "Updating rustup"
"$HOME/.cargo/bin/rustup" update

ins pythonrs pythonrs
ins powerliners powerliners
# crates.io `arb` is an unrelated Flutter localization tool that also
# installs an `arb` binary; MenkeTech arb is published as `arblang`
if "$HOME/.cargo/bin/cargo" install --list 2>/dev/null | grep -q "^arb v"; then
    zpwrPrettyPrintBox "Removing crates.io arb, which is not MenkeTech arb"
    "$HOME/.cargo/bin/cargo" uninstall arb
fi
ins arblang arb
ins grcrs grcrs
ins htoprs htoprs
ins ztmux ztmux
ins zcolorizer zcolorizer
ins bat bat
ins git-delta git-delta
ins lsofrs lsofrs
ins awkrs awkrs
ins strykelang stryke
ins zshrs zshrs
ins nmaprs nmaprs
ins storageshower storageshower
ins iftoprs iftoprs
ins hyperfine hyperfine
ins diskus diskus
ins vivid vivid
ins hexyl hexyl
ins fd-find fd
ins eza eza
ins ripgrep rg
ins thumbs thumbs
ins temprs tp
ins git-delta delta
ins lolcat lolcat
ins bottom btm
ins trippy trip

zpwrPrettyPrintBox "Installing cargo-update with Cargo"
"$HOME/.cargo/bin/cargo" install cargo-update
