#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jul  7 20:42:55 EDT 2017
#####   Purpose: bash script to install vim plugins
#####   Notes: 
#}}}***********************************************************

installVimPlugin(){
    git clone "https://github.com/$1.git" 
}

printf "Installing Vim Plugins\n"
if [[ d "$HOME/.vim/bundle" ]]; then
    mkdir -p "$HOME/.vim/bundle"
fi

INSTALLER_DIR="$(pwd)"

cd "$HOME/.vim/bundle" && {
while read repo; do
    installVimPlugin "$repo"
done < "$INSTALLER_DIR/.vimbundle"

printf "Installing Taglist Plugin"
cp -R "$INSTALLER_DIR/taglist_46" .
}
