#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Sep 22 14:50:21 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
if ! test -f common.sh; then
    echo "Must be in ~/.zpwr/install directory" >&2
    exit 1
fi

source common.sh

export GOPATH="$HOME/go"

prettyPrint "Installing mylg"
go get github.com/mehrdadrad/mylg

( cd "$GOPATH/src/github.com/mehrdadrad/mylg/" && go build mylg.go; )

prettyPrint "Installing gotop"
go get github.com/cjbassi/gotop

prettyPrint "Installing lolcat in go"
go get github.com/MenkeTechnologies/lolcat
