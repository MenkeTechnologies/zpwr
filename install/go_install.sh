#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Sep 22 14:50:21 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
source common.sh || { echo "Must be in zpwr directory" >&2; exit 1; }

ZPWR_INSTALLER_DIR="$(pwd -P)"

export GOPATH="$HOME/go"

prettyPrint "Installing mylg"
go get github.com/mehrdadrad/mylg

( cd "$GOPATH/src/github.com/mehrdadrad/mylg/" && go build mylg.go; )

prettyPrint "Installing gotop"
go get github.com/cjbassi/gotop

prettyPrint "Installing lolcat in go"
go get github.com/MenkeTechnologies/lolcat
