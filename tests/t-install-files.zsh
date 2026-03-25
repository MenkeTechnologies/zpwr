#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test install directory file existence and syntax
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# install .zshrc
#--------------------------------------------------------------
@test 'install .zshrc exists' {
    run test -f "$ZPWR_INSTALL/.zshrc"
    assert $state equals 0
}

@test 'install .zshrc is not empty' {
    run test -s "$ZPWR_INSTALL/.zshrc"
    assert $state equals 0
}

@test 'install .zshrc zsh syntax' {
    run zsh -n "$ZPWR_INSTALL/.zshrc"
    assert $state equals 0
}

#--------------------------------------------------------------
# install .vimrc
#--------------------------------------------------------------
@test 'install .vimrc exists' {
    run test -f "$ZPWR_INSTALL/.vimrc"
    assert $state equals 0
}

@test 'install .vimrc is not empty' {
    run test -s "$ZPWR_INSTALL/.vimrc"
    assert $state equals 0
}

#--------------------------------------------------------------
# install .tmux.conf
#--------------------------------------------------------------
@test 'install .tmux.conf exists' {
    run test -f "$ZPWR_INSTALL/.tmux.conf"
    assert $state equals 0
}

@test 'install .tmux.conf is not empty' {
    run test -s "$ZPWR_INSTALL/.tmux.conf"
    assert $state equals 0
}

#--------------------------------------------------------------
# install .gitconfig
#--------------------------------------------------------------
@test 'install .gitconfig exists' {
    run test -f "$ZPWR_INSTALL/.gitconfig"
    assert $state equals 0
}

@test 'install .gitconfig is not empty' {
    run test -s "$ZPWR_INSTALL/.gitconfig"
    assert $state equals 0
}

#--------------------------------------------------------------
# install .ideavimrc
#--------------------------------------------------------------
@test 'install .ideavimrc exists' {
    run test -f "$ZPWR_INSTALL/.ideavimrc"
    assert $state equals 0
}

@test 'install .ideavimrc is not empty' {
    run test -s "$ZPWR_INSTALL/.ideavimrc"
    assert $state equals 0
}

#--------------------------------------------------------------
# install .minbashrc
#--------------------------------------------------------------
@test 'install .minbashrc exists' {
    run test -f "$ZPWR_INSTALL/.minbashrc"
    assert $state equals 0
}

@test 'install .minbashrc is not empty' {
    run test -s "$ZPWR_INSTALL/.minbashrc"
    assert $state equals 0
}

#--------------------------------------------------------------
# install .globalrc
#--------------------------------------------------------------
@test 'install .globalrc exists' {
    run test -f "$ZPWR_INSTALL/.globalrc"
    assert $state equals 0
}

@test 'install .globalrc is not empty' {
    run test -s "$ZPWR_INSTALL/.globalrc"
    assert $state equals 0
}

#--------------------------------------------------------------
# install zpwrInstall.sh
#--------------------------------------------------------------
@test 'install zpwrInstall.sh exists' {
    run test -f "$ZPWR_INSTALL/zpwrInstall.sh"
    assert $state equals 0
}

@test 'install zpwrInstall.sh is not empty' {
    run test -s "$ZPWR_INSTALL/zpwrInstall.sh"
    assert $state equals 0
}

@test 'install zpwrInstall.sh bash syntax' {
    run bash -n "$ZPWR_INSTALL/zpwrInstall.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# install zpwr.yml
#--------------------------------------------------------------
@test 'install zpwr.yml exists' {
    run test -f "$ZPWR_INSTALL/zpwr.yml"
    assert $state equals 0
}

@test 'install zpwr.yml is not empty' {
    run test -s "$ZPWR_INSTALL/zpwr.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# install s
#--------------------------------------------------------------
@test 'install s exists' {
    run test -f "$ZPWR_INSTALL/s"
    assert $state equals 0
}

@test 'install s is not empty' {
    run test -s "$ZPWR_INSTALL/s"
    assert $state equals 0
}

#--------------------------------------------------------------
# env .zpwr_env.sh
#--------------------------------------------------------------
@test 'env .zpwr_env.sh exists' {
    run test -f "$ZPWR_ENV/.zpwr_env.sh"
    assert $state equals 0
}

@test 'env .zpwr_env.sh is not empty' {
    run test -s "$ZPWR_ENV/.zpwr_env.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# env .zpwr_re_env.sh
#--------------------------------------------------------------
@test 'env .zpwr_re_env.sh exists' {
    run test -f "$ZPWR_ENV/.zpwr_re_env.sh"
    assert $state equals 0
}

@test 'env .zpwr_re_env.sh is not empty' {
    run test -s "$ZPWR_ENV/.zpwr_re_env.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# env .shell_aliases_functions.sh
#--------------------------------------------------------------
@test 'env .shell_aliases_functions.sh exists' {
    run test -f "$ZPWR_ENV/.shell_aliases_functions.sh"
    assert $state equals 0
}

@test 'env .shell_aliases_functions.sh is not empty' {
    run test -s "$ZPWR_ENV/.shell_aliases_functions.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# env zpwr.zsh
#--------------------------------------------------------------
@test 'env zpwr.zsh exists' {
    run test -f "$ZPWR_ENV/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh is not empty' {
    run test -s "$ZPWR_ENV/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# env .p10k.zsh
#--------------------------------------------------------------
@test 'env .p10k.zsh exists' {
    run test -f "$ZPWR_ENV/.p10k.zsh"
    assert $state equals 0
}

@test 'env .p10k.zsh is not empty' {
    run test -s "$ZPWR_ENV/.p10k.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# env .minvimrc
#--------------------------------------------------------------
@test 'env .minvimrc exists' {
    run test -f "$ZPWR_ENV/.minvimrc"
    assert $state equals 0
}

@test 'env .minvimrc is not empty' {
    run test -s "$ZPWR_ENV/.minvimrc"
    assert $state equals 0
}

#--------------------------------------------------------------
# env grc.zsh
#--------------------------------------------------------------
@test 'env grc.zsh exists' {
    run test -f "$ZPWR_ENV/grc.zsh"
    assert $state equals 0
}

@test 'env grc.zsh is not empty' {
    run test -s "$ZPWR_ENV/grc.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# root .zpwr_root
#--------------------------------------------------------------
@test 'root .zpwr_root exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'root .zpwr_root is not empty' {
    run test -s "$ZPWR/.zpwr_root"
    assert $state equals 0
}

#--------------------------------------------------------------
# root .zunit.yml
#--------------------------------------------------------------
@test 'root .zunit.yml exists' {
    run test -f "$ZPWR/.zunit.yml"
    assert $state equals 0
}

@test 'root .zunit.yml is not empty' {
    run test -s "$ZPWR/.zunit.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# root .gitignore
#--------------------------------------------------------------
@test 'root .gitignore exists' {
    run test -f "$ZPWR/.gitignore"
    assert $state equals 0
}

@test 'root .gitignore is not empty' {
    run test -s "$ZPWR/.gitignore"
    assert $state equals 0
}

#--------------------------------------------------------------
# root .travis.yml
#--------------------------------------------------------------
@test 'root .travis.yml exists' {
    run test -f "$ZPWR/.travis.yml"
    assert $state equals 0
}

@test 'root .travis.yml is not empty' {
    run test -s "$ZPWR/.travis.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# root README.md
#--------------------------------------------------------------
@test 'root README.md exists' {
    run test -f "$ZPWR/README.md"
    assert $state equals 0
}

@test 'root README.md is not empty' {
    run test -s "$ZPWR/README.md"
    assert $state equals 0
}

#--------------------------------------------------------------
# root license.md
#--------------------------------------------------------------
@test 'root license.md exists' {
    run test -f "$ZPWR/license.md"
    assert $state equals 0
}

@test 'root license.md is not empty' {
    run test -s "$ZPWR/license.md"
    assert $state equals 0
}
