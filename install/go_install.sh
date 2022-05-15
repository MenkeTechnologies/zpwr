#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Sep 22 14:50:21 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
if ! test -f common.sh; then
    echo "Must be in $ZPWR/install directory" >&2
    exit 1
fi

source common.sh

export GOPATH="$HOME/go"

goV=$(go version | perl -ne 'print "$1$2" if /(\d+)\.(\d+)\./')

function goInstall() {
    if (( goV >= 117 )); then
        go install github.com/$1@latest
    else
        go get github.com/$1
    fi
}

zpwrPrettyPrintBox "Installing mylg"
goInstall mehrdadrad/mylg

( cd "$GOPATH/src/github.com/mehrdadrad/mylg/" && go build mylg.go; )

zpwrPrettyPrintBox "Installing gotop"
goInstall cjbassi/gotop

zpwrPrettyPrintBox "Installing lolcat in go"
goInstall MenkeTechnologies/lolcat
