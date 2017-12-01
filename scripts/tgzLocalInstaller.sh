#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Aug 19 15:31:53 EDT 2017
#####   Purpose: bash script to install .tgz packages
#####   Notes: 
#}}}***********************************************************
tarbellDirectory="$1"

trap "echo bye | ponysay" INT

install(){
    if [[ "$1" =~ .*\.tar\.gz ]];then
        directory_name="${1%.tar.gz}"
    elif [[ "$1" =~ .*\.tgz ]];then
        directory_name="${1%.tgz}"
    else
        echo "Need to be tar.gz or .tgz for automatic!"
        echo "What is the tarball path?"
        read directory_name
    fi

    tar xvfz "$1"
    cd *"$directory_name" && {
    ./configure && make && sudo make install
    }
}

if [[ -z "$tarbellDirectory" ]]; then
    if [[ ! -f "configure" ]];then
        for file in $(\ls -A); do
            echo "$file" | egrep -q '\.tar\.gz|\.tgz' && echo "huere" && install "$file" && break
        done

    else
        ./configure && make && sudo make install
    fi
else
    install "$tarbellDirectory"
fi

