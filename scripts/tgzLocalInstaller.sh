#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Aug 19 15:31:53 EDT 2017
#####   Purpose: bash script to install .tgz packages
#####   Notes: 
#}}}***********************************************************


install(){

    if [[ "$1" =~ .*.tar.gz ]];then
        dir="${1%.tar.gz}"
    elif [[ "$1" =~ .*.tgz ]];then
        dir="${1%.tgz}"
    else
        echo "Need to be tar.gz or .tgz for automatic!" >&2
        echo "What is the dir name?"
        read dir
    fi
    tar xvfz "$1"
    cd "$dir" && {
        ./configure && make && sudo make install}
}

if [[ -z "$1" ]]; then
    if [[ ! -f "configure" ]];then
        for file in $(ls -A); do
            if [[ "$file" =~ .*.tar.gz || "$file" =~ .*.tgz ]];then
                install "$file"
            fi
        done
    else
        ./configure && make && sudo make install
    fi
else
    install "$1"
fi
