#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sat Mar 28 00:00:00 EST 2026
##### Purpose: zsh script to test repo file structure and script syntax
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Core repo directories exist
#--------------------------------------------------------------
@test 'ZPWR dir exists' {
    run test -d "$ZPWR"
    assert $state equals 0
}

@test 'autoload dir exists' {
    run test -d "$ZPWR_AUTOLOAD"
    assert $state equals 0
}

@test 'autoload/common dir exists' {
    run test -d "$ZPWR_AUTOLOAD/common"
    assert $state equals 0
}

@test 'autoload/fzf dir exists' {
    run test -d "$ZPWR_AUTOLOAD/fzf"
    assert $state equals 0
}

@test 'autoload/linux dir exists' {
    run test -d "$ZPWR_AUTOLOAD/linux"
    assert $state equals 0
}

@test 'autoload/darwin dir exists' {
    run test -d "$ZPWR_AUTOLOAD/darwin"
    assert $state equals 0
}

@test 'autoload/systemctl dir exists' {
    run test -d "$ZPWR_AUTOLOAD/systemctl"
    assert $state equals 0
}

@test 'autoload/comps dir exists' {
    run test -d "$ZPWR_COMPS"
    assert $state equals 0
}

@test 'scripts dir exists' {
    run test -d "$ZPWR_SCRIPTS"
    assert $state equals 0
}

@test 'scripts/macOnly dir exists' {
    run test -d "$ZPWR_SCRIPTS_MAC"
    assert $state equals 0
}

@test 'env dir exists' {
    run test -d "$ZPWR_ENV"
    assert $state equals 0
}

@test 'install dir exists' {
    run test -d "$ZPWR_INSTALL"
    assert $state equals 0
}

@test 'tmux dir exists' {
    run test -d "$ZPWR_TMUX"
    assert $state equals 0
}

@test 'tests dir exists' {
    run test -d "$ZPWR_TEST"
    assert $state equals 0
}

#--------------------------------------------------------------
# Core files exist and are not empty
#--------------------------------------------------------------
@test 'scripts/lib.sh exists' {
    run test -f "$ZPWR_LIB"
    assert $state equals 0
}

@test 'scripts/lib.sh is not empty' {
    run test -s "$ZPWR_LIB"
    assert $state equals 0
}

@test 'env/.zpwr_env.sh exists' {
    run test -f "$ZPWR_ENV_FILE"
    assert $state equals 0
}

@test 'env/.zpwr_env.sh is not empty' {
    run test -s "$ZPWR_ENV_FILE"
    assert $state equals 0
}

@test 'env/.zpwr_re_env.sh exists' {
    run test -f "$ZPWR_RE_ENV_FILE"
    assert $state equals 0
}

@test 'env/.zpwr_re_env.sh is not empty' {
    run test -s "$ZPWR_RE_ENV_FILE"
    assert $state equals 0
}

@test 'ZPWR_ALIAS_FILE exists' {
    run test -f "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'ZPWR_ALIAS_FILE is not empty' {
    run test -s "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'ZPWR_VERBS_FILE exists' {
    run test -f "$ZPWR_VERBS_FILE"
    assert $state equals 0
}

@test 'ZPWR_VERBS_FILE is not empty' {
    run test -s "$ZPWR_VERBS_FILE"
    assert $state equals 0
}

@test 'ZPWR_TMUXRC exists' {
    run test -f "$ZPWR_TMUXRC"
    assert $state equals 0
}

@test 'ZPWR_TMUXRC is not empty' {
    run test -s "$ZPWR_TMUXRC"
    assert $state equals 0
}

@test '.zpwr_root marker exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test '.zunit.yml exists' {
    run test -f "$ZPWR/.zunit.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Install files
#--------------------------------------------------------------
@test 'install/.zshrc exists' {
    run test -f "$ZPWR_INSTALL/.zshrc"
    assert $state equals 0
}

@test 'install/.gitconfig exists' {
    run test -f "$ZPWR_INSTALL/.gitconfig"
    assert $state equals 0
}

@test 'install/zpwrInstall.sh exists' {
    run test -f "$ZPWR_INSTALL/zpwrInstall.sh"
    assert $state equals 0
}

@test 'install/zpwr.yml exists' {
    run test -f "$ZPWR_INSTALL/zpwr.yml"
    assert $state equals 0
}

@test 'install/.tmux.conf exists' {
    run test -f "$ZPWR_INSTALL/.tmux.conf"
    assert $state equals 0
}

@test 'install/.inputrc exists' {
    run test -f "$ZPWR_INSTALL/.inputrc"
    assert $state equals 0
}

#--------------------------------------------------------------
# GitHub Actions workflow
#--------------------------------------------------------------
@test '.github/workflows/ci.yml exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test '.github/workflows/ci.yml is not empty' {
    run test -s "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Key scripts exist
#--------------------------------------------------------------
@test 'scripts/about.sh exists' {
    run test -f "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
}

@test 'scripts/crossOSCommands.sh exists' {
    run test -f "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
}

@test 'scripts/crossOSExecute.sh exists' {
    run test -f "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
}

@test 'scripts/boxPrint.pl exists' {
    run test -f "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

@test 'scripts/init.sh exists' {
    run test -f "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Script syntax validation
#--------------------------------------------------------------
@test 'lib.sh bash syntax valid' {
    run bash -n "$ZPWR_LIB"
    assert $state equals 0
}

@test '.zpwr_env.sh bash syntax valid' {
    run bash -n "$ZPWR_ENV_FILE"
    assert $state equals 0
}

@test 'crossOSCommands.sh bash syntax valid' {
    run bash -n "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
}

@test 'crossOSExecute.sh bash syntax valid' {
    run bash -n "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
}

@test 'about.sh bash syntax valid' {
    run bash -n "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
}

@test 'init.sh bash syntax valid' {
    run bash -n "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

@test 'zpwrInstall.sh bash syntax valid' {
    run bash -n "$ZPWR_INSTALL/zpwrInstall.sh"
    assert $state equals 0
}

@test 'boxPrint.pl perl syntax valid' {
    run perl -c "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

#--------------------------------------------------------------
# README / documentation
#--------------------------------------------------------------
@test 'README.md exists' {
    run test -f "$ZPWR/README.md"
    assert $state equals 0
}

@test 'README.md is not empty' {
    run test -s "$ZPWR/README.md"
    assert $state equals 0
}

#--------------------------------------------------------------
# Git repo integrity
#--------------------------------------------------------------
@test 'ZPWR is a git repo' {
    run git -C "$ZPWR" rev-parse --git-dir
    assert $state equals 0
}

@test 'git remote origin exists' {
    run git -C "$ZPWR" remote get-url origin
    assert $state equals 0
}

@test 'git log has commits' {
    run git -C "$ZPWR" log --oneline -1
    assert $state equals 0
    assert "$output" is_not_empty
}
