#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Oct 30 11:31:35 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

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
