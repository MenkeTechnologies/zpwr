#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Apr 19 20:33:51 EDT 2019
##### Purpose: bash script to install bat,fd and exa
##### Notes:
#}}}***********************************************************
source common.sh || { echo "Must be in zpwr directory" >&2; exit 1; }
INSTALLER_DIR="$(pwd -P)"

while true; do
    if exists curl;then
        break
    fi
    sleep 5
done
exists bat || {
    prettyPrint "Installing Rustup if cargo does not exist"
    exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrint "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrint "Installing Bat (cat replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install bat
    prettyPrint "Installing Fd (find replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install fd-find
}

exists fd-find || {
    prettyPrint "Installing rustup if cargo does not exist"
    exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrint "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrint "Installing Fd (find replacement) with Cargo"
    "$HOME/.cargo/bin/cargo" install fd-find
}

exists exa || {
    prettyPrint "Installing rustup if cargo does not exist"
    exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrint "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrint "Installing Exa with Cargo"
    "$HOME/.cargo/bin/cargo" install exa
}

exists ripgrep || {
    prettyPrint "Installing rustup if cargo does not exist"
    exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
    prettyPrint "Updating rustup"
    "$HOME/.cargo/bin/rustup" update
    prettyPrint "Installing ripgrep with Cargo"
    "$HOME/.cargo/bin/cargo" install ripgrep
}


prettyPrint "Installing Rustup if cargo does not exist"
exists cargo || curl https://sh.rustup.rs -sSf | sh -s -- -y
prettyPrint "Updating rustup"
"$HOME/.cargo/bin/rustup" update
prettyPrint "Installing cargo-update with Cargo"
"$HOME/.cargo/bin/cargo" install cargo-update


