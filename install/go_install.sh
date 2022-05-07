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

zpwrPrettyPrintBox "Installing mylg"
go install github.com/mehrdadrad/mylg@latest

( cd "$GOPATH/src/github.com/mehrdadrad/mylg/" && go build mylg.go; )

zpwrPrettyPrintBox "Installing gotop"
go install github.com/cjbassi/gotop@latest

zpwrPrettyPrintBox "Installing lolcat in go"
go install github.com/MenkeTechnologies/lolcat@latest
