#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: JACOBMENKE
##### Date: Sat Aug 19 15:31:53 EDT 2017
##### Purpose: bash script to install .tgz packages
##### Notes:
#}}}***********************************************************

trap "echo bye; exit 1" INT

__ScriptVersion="1.0.0"

#=== FUNCTION ================================================================
# NAME: usage
# DESCRIPTION: Display usage information.
#===============================================================================
function usage() {
    echo "Usage : $0 [options] [--]

    Options:
    -h|help Display this message
    -v|version Display script version
    -n|no-install No sudo make install" >&2

} # ---------- end of function usage  ----------

#-----------------------------------------------------------------------
# Handle command line arguments
#-----------------------------------------------------------------------

while getopts ":hvn" opt; do
    case $opt in

    h | help)
        usage
        exit 0
        ;;

    v | version)
        echo "$0 -- Version $__ScriptVersion"
        exit 0
        ;;

    n | no-install) no_install=true ;;

    *)
        echo -e "\n Option does not exist : $OPTARG\n"
        usage
        exit 1
        ;;

    esac # --- end of case ---
done
shift $(($OPTIND - 1))

tarbellDirectory="$1"

install() {
    if [[ "$1" =~ .*\.tar\.gz ]]; then
        directory_name="${1%.tar.gz}"
    elif [[ "$1" =~ .*\.tgz ]]; then
        directory_name="${1%.tgz}"
    else
        echo "Need to be tar.gz or .tgz for automatic!"
        echo "What is the tarball path?"
        read directory_name
    fi

    tar xvfz "$1"
    cd *"$directory_name" && {
        if [[ $no_install == true ]]; then
            ./configure && make
        else
            ./configure && make && sudo make install
        fi
    }
}

if [[ -z "$tarbellDirectory" ]]; then
    if [[ ! -f "configure" ]]; then
        for file in $(\ls -A); do
            echo "$file" | egrep -q '\.tar\.gz|\.tgz' && echo "huere" && install "$file" && break
        done
        "$SHELL"
    else
        if [[ $no_install == true ]]; then
            ./configure && make
        else
            ./configure && make && sudo make install
        fi
    fi
else
    install "$tarbellDirectory"
    "$SHELL"
fi
