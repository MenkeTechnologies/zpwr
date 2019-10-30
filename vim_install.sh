#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Oct 30 11:31:35 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

vimV="$(vim --version | head -1 | awk '{print $5}')"

if echo "$vimV >= 8.0" | bc | grep -q 1 || vim --version 2>&1 | grep -q '\-python3';then
    prettyPrint "Vim Version less than 8.0 or without python! Installing Vim from Source."
    git clone https://github.com/vim/vim.git vim-master
    builtin cd "vim-master" && {
        ./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=no \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
            make
            sudo make install
    }
fi

