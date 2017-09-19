#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Aug 19 15:31:53 EDT 2017
#####   Purpose: bash script to install .tgz packages
#####   Notes: 
#}}}***********************************************************
tarball_directory="$1"

install(){

    if [[ "$tarball_directory" =~ .*.tar.gz ]];then
        directory_name="${tarball_directory%.tar.gz}"
    elif [[ "$tarball_directory" =~ .*.tgz ]];then
        directory_name="${tarball_directory%.tgz}"
    else
        echo "Need to be tar.gz or .tgz for automatic!" >&2
        echo "What is the directory_name name?"
        read directory_name
    fi

    tar xvfz "$tarball_directory"
    cd "$directory_name" && {
        ./configure && make && sudo make install}
}

if [[ -z "$tarball_directory" ]]; then
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
    install "$tarball_directory"
fi
