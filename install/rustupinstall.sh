#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Apr 19 20:33:51 EDT 2019
##### Purpose: bash script to install bat,fd and exa
##### Notes:
#}}}***********************************************************
if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh


while true; do
    if commandExists curl;then
        break
    fi
    sleep 5
done

commandExists bat || {
    prettyPrintBox "Installing Rustup if cargo does not exist"
    commandExists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrintBox "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrintBox "Installing Bat (cat replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install bat
}

commandExists fd || {
    prettyPrintBox "Installing rustup if cargo does not exist"
    commandExists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrintBox "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrintBox "Installing Fd (find replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install fd-find
}

commandExists exa || {
    prettyPrintBox "Installing rustup if cargo does not exist"
    commandExists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrintBox "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrintBox "Installing Exa with Cargo"
    "$HOME/.cargo/bin/cargo" install exa
}

commandExists rg || {
    prettyPrintBox "Installing rustup if cargo does not exist"
    commandExists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrintBox "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrintBox "Installing ripgrep with Cargo"
    "$HOME/.cargo/bin/cargo" install ripgrep
}


prettyPrintBox "Installing Rustup if cargo does not exist"
commandExists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
prettyPrintBox "Updating rustup"
"$HOME/.cargo/bin/rustup" update
prettyPrintBox "Installing cargo-update with Cargo"
"$HOME/.cargo/bin/cargo" install cargo-update
