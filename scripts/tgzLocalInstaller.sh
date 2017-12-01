#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Aug 19 15:31:53 EDT 2017
#####   Purpose: bash script to install .tgz packages
#####   Notes: 
#}}}***********************************************************
tarbellDirectory="$1"

install(){
    if [[ "$tarbellDirectory" =~ .*.tar.gz ]];then
        directory_name="${tarbellDirectory%.tar.gz}"
    elif [[ "$tarbellDirectory" =~ .*.tgz ]];then
        directory_name="${tarbellDirectory%.tgz}"
    else
        echo "Need to be tar.gz or .tgz for automatic!"
        echo "What is the tarball path?"
        read directory_name
    fi

    tar xvfz "$tarbellDirectory"
    cd "$directory_name" && {
    ./configure && make && sudo make install
    }
}

if [[ -z "$tarbellDirectory" ]]; then
    if [[ ! -f "configure" ]];then
        for file in "$(ls -A)"; do
            if [[ "$file" =~ .*.tar.gz || "$file" =~ .*.tgz ]];then
                install "$file"
                exit 0
            fi
            echo "$file"
        done

        install
    else
        ./configure && make && sudo make install
    fi
else
    install "$tarbellDirectory"
fi


