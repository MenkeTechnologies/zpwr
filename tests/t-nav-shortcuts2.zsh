#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test remaining cd-shortcut functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# a - cd $HOME
#--------------------------------------------------------------
@test 'a exists' {
    run zpwrExists a
    assert $state equals 0
}

@test 'a navigates to HOME' {
    local orig
    orig="$PWD"
    a &>/dev/null
    [[ "$PWD" == "$HOME" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# e - cd /etc
#--------------------------------------------------------------
@test 'e exists' {
    run zpwrExists e
    assert $state equals 0
}

@test 'e navigates to /etc' {
    local orig
    orig="$PWD"
    e &>/dev/null
    [[ "$PWD" == /etc ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# t - cd /
#--------------------------------------------------------------
@test 't exists' {
    run zpwrExists t
    assert $state equals 0
}

@test 't navigates to /' {
    local orig
    orig="$PWD"
    t &>/dev/null
    [[ "$PWD" == / ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# de - cd /dev
#--------------------------------------------------------------
@test 'de exists' {
    run zpwrExists de
    assert $state equals 0
}

@test 'de navigates to /dev' {
    local orig
    orig="$PWD"
    de &>/dev/null
    [[ "$PWD" == /dev ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# ue - cd homebrew etc or /usr/local/etc
#--------------------------------------------------------------
@test 'ue exists' {
    run zpwrExists ue
    assert $state equals 0
}

@test 'ue navigates to etc under HOMEBREW_PREFIX or /usr/local' {
    local orig expected
    orig="$PWD"
    if [[ -d "$HOMEBREW_PREFIX" ]]; then
        expected="$HOMEBREW_PREFIX/etc"
    else
        expected="/usr/local/etc"
    fi
    if [[ ! -d "$expected" ]]; then
        skip "$expected does not exist"
    fi
    ue &>/dev/null
    [[ "$PWD" == "$expected" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# dl - cd ZPWR_DL
#--------------------------------------------------------------
@test 'dl exists' {
    run zpwrExists dl
    assert $state equals 0
}

@test 'dl navigates to ZPWR_DL if it exists' {
    if [[ -d "$ZPWR_DL" ]]; then
        local orig
        orig="$PWD"
        dl &>/dev/null
        [[ "$PWD" == "$ZPWR_DL" ]]
        assert $? equals 0
        cd "$orig"
    else
        skip "ZPWR_DL '$ZPWR_DL' does not exist"
    fi
}

#--------------------------------------------------------------
# docu - cd ZPWR_DOC
#--------------------------------------------------------------
@test 'docu exists' {
    run zpwrExists docu
    assert $state equals 0
}

@test 'docu navigates to ZPWR_DOC if it exists' {
    if [[ -d "$ZPWR_DOC" ]]; then
        local orig
        orig="$PWD"
        docu &>/dev/null
        [[ "$PWD" == "$ZPWR_DOC" ]]
        assert $? equals 0
        cd "$orig"
    else
        skip "ZPWR_DOC '$ZPWR_DOC' does not exist"
    fi
}

#--------------------------------------------------------------
# fp - cd ZPWR_FORKED_DIR
#--------------------------------------------------------------
@test 'fp exists' {
    run zpwrExists fp
    assert $state equals 0
}

@test 'fp navigates to ZPWR_FORKED_DIR' {
    if [[ ! -d "$ZPWR_FORKED_DIR" ]]; then
        skip "ZPWR_FORKED_DIR '$ZPWR_FORKED_DIR' does not exist"
    fi
    local orig
    orig="$PWD"
    fp &>/dev/null
    [[ "$PWD" == "$ZPWR_FORKED_DIR" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# eb - cd ~/.emacs.d/elpa
#--------------------------------------------------------------
@test 'eb exists' {
    run zpwrExists eb
    assert $state equals 0
}

@test 'eb navigates to emacs elpa if it exists' {
    if [[ -d "$HOME/.emacs.d/elpa" ]]; then
        local orig
        orig="$PWD"
        eb &>/dev/null
        [[ "$PWD" == "$HOME/.emacs.d/elpa" ]]
        assert $? equals 0
        cd "$orig"
    else
        skip "$HOME/.emacs.d/elpa does not exist"
    fi
}

#--------------------------------------------------------------
# zlt - cd ZPWR_LOCAL_TEMP
#--------------------------------------------------------------
@test 'zlt exists' {
    run zpwrExists zlt
    assert $state equals 0
}

@test 'zlt navigates to ZPWR_LOCAL_TEMP' {
    if [[ ! -d "$ZPWR_LOCAL_TEMP" ]]; then
        skip "ZPWR_LOCAL_TEMP '$ZPWR_LOCAL_TEMP' does not exist"
    fi
    local orig
    orig="$PWD"
    zlt &>/dev/null
    [[ "$PWD" == "$ZPWR_LOCAL_TEMP" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# zhb - cd ZPWR_PLUGIN_MANAGER_HOME/bin
#--------------------------------------------------------------
@test 'zhb exists' {
    run zpwrExists zhb
    assert $state equals 0
}

@test 'zhb navigates to plugin manager bin if it exists' {
    if [[ -d "$ZPWR_PLUGIN_MANAGER_HOME/bin" ]]; then
        local orig
        orig="$PWD"
        zhb &>/dev/null
        [[ "$PWD" == "$ZPWR_PLUGIN_MANAGER_HOME/bin" ]]
        assert $? equals 0
        cd "$orig"
    else
        skip "ZPWR_PLUGIN_MANAGER_HOME/bin does not exist"
    fi
}

#--------------------------------------------------------------
# zhc - cd ZPWR_PLUGIN_MANAGER_HOME/completions
#--------------------------------------------------------------
@test 'zhc exists' {
    run zpwrExists zhc
    assert $state equals 0
}

@test 'zhc navigates to plugin manager completions if it exists' {
    if [[ -d "$ZPWR_PLUGIN_MANAGER_HOME/completions" ]]; then
        local orig
        orig="$PWD"
        zhc &>/dev/null
        [[ "$PWD" == "$ZPWR_PLUGIN_MANAGER_HOME/completions" ]]
        assert $? equals 0
        cd "$orig"
    else
        skip "ZPWR_PLUGIN_MANAGER_HOME/completions does not exist"
    fi
}

#--------------------------------------------------------------
# zhs - cd ZPWR_PLUGIN_MANAGER_HOME/snippets
#--------------------------------------------------------------
@test 'zhs exists' {
    run zpwrExists zhs
    assert $state equals 0
}

@test 'zhs navigates to plugin manager snippets if it exists' {
    if [[ -d "$ZPWR_PLUGIN_MANAGER_HOME/snippets" ]]; then
        local orig
        orig="$PWD"
        zhs &>/dev/null
        [[ "$PWD" == "$ZPWR_PLUGIN_MANAGER_HOME/snippets" ]]
        assert $? equals 0
        cd "$orig"
    else
        skip "ZPWR_PLUGIN_MANAGER_HOME/snippets does not exist"
    fi
}

#--------------------------------------------------------------
# zlr - cd ZPWR_LOCAL/rcBackups
#--------------------------------------------------------------
@test 'zlr exists' {
    run zpwrExists zlr
    assert $state equals 0
}

@test 'zlr navigates to ZPWR_LOCAL/rcBackups if it exists' {
    if [[ -d "$ZPWR_LOCAL/rcBackups" ]]; then
        local orig
        orig="$PWD"
        zlr &>/dev/null
        [[ "$PWD" == "$ZPWR_LOCAL/rcBackups" ]]
        assert $? equals 0
        cd "$orig"
    else
        skip "ZPWR_LOCAL/rcBackups does not exist"
    fi
}

#--------------------------------------------------------------
# zhp - cd ZPWR_PLUGIN_MANAGER_HOME/plugins
#--------------------------------------------------------------
@test 'zhp exists' {
    run zpwrExists zhp
    assert $state equals 0
}

#--------------------------------------------------------------
# Function existence checks for all nav shortcuts
#--------------------------------------------------------------
@test 'zpwrExists a' {
    run zpwrExists a
    assert $state equals 0
}

@test 'zpwrExists c' {
    run zpwrExists c
    assert $state equals 0
}

@test 'zpwrExists e' {
    run zpwrExists e
    assert $state equals 0
}

@test 'zpwrExists t' {
    run zpwrExists t
    assert $state equals 0
}

@test 'zpwrExists de' {
    run zpwrExists de
    assert $state equals 0
}

@test 'zpwrExists dl' {
    run zpwrExists dl
    assert $state equals 0
}

@test 'zpwrExists docu' {
    run zpwrExists docu
    assert $state equals 0
}

@test 'zpwrExists ue' {
    run zpwrExists ue
    assert $state equals 0
}

@test 'zpwrExists fp' {
    run zpwrExists fp
    assert $state equals 0
}

@test 'zpwrExists eb' {
    run zpwrExists eb
    assert $state equals 0
}

@test 'zpwrExists zlt' {
    run zpwrExists zlt
    assert $state equals 0
}

@test 'zpwrExists zhb' {
    run zpwrExists zhb
    assert $state equals 0
}

@test 'zpwrExists zhc' {
    run zpwrExists zhc
    assert $state equals 0
}

@test 'zpwrExists zhs' {
    run zpwrExists zhs
    assert $state equals 0
}

@test 'zpwrExists zlr' {
    run zpwrExists zlr
    assert $state equals 0
}

@test 'zpwrExists zhp' {
    run zpwrExists zhp
    assert $state equals 0
}

@test 'zpwrExists nz' {
    run zpwrExists nz
    assert $state equals 0
}

@test 'zpwrExists color2' {
    run zpwrExists color2
    assert $state equals 0
}

@test 'zpwrExists return2' {
    run zpwrExists return2
    assert $state equals 0
}

@test 'zpwrExists tma' {
    run zpwrExists tma
    assert $state equals 0
}

@test 'zpwrExists em' {
    run zpwrExists em
    assert $state equals 0
}

@test 'zpwrExists cv' {
    run zpwrExists cv
    assert $state equals 0
}

@test 'zpwrExists ce' {
    run zpwrExists ce
    assert $state equals 0
}

@test 'zpwrExists cca' {
    run zpwrExists cca
    assert $state equals 0
}

@test 'zpwrExists o' {
    run zpwrExists o
    assert $state equals 0
}

@test 'zpwrExists s' {
    run zpwrExists s
    assert $state equals 0
}

@test 'zpwrExists zarg' {
    run zpwrExists zarg
    assert $state equals 0
}

@test 'zpwrExists pre' {
    run zpwrExists pre
    assert $state equals 0
}

@test 'zpwrExists post' {
    run zpwrExists post
    assert $state equals 0
}

@test 'zpwrExists jd' {
    run zpwrExists jd
    assert $state equals 0
}

@test 'zpwrExists rm' {
    run zpwrExists rm
    assert $state equals 0
}

@test 'zpwrExists apz' {
    run zpwrExists apz
    assert $state equals 0
}

@test 'zpwrExists ig' {
    run zpwrExists ig
    assert $state equals 0
}

@test 'zpwrExists wg' {
    run zpwrExists wg
    assert $state equals 0
}

@test 'zpwrExists mg' {
    run zpwrExists mg
    assert $state equals 0
}

@test 'zpwrExists pg' {
    run zpwrExists pg
    assert $state equals 0
}

@test 'zpwrExists asg' {
    run zpwrExists asg
    assert $state equals 0
}

@test 'zpwrExists cg' {
    run zpwrExists cg
    assert $state equals 0
}

@test 'zpwrExists we' {
    run zpwrExists we
    assert $state equals 0
}

@test 'zpwrExists dbz' {
    run zpwrExists dbz
    assert $state equals 0
}

@test 'zpwrExists sub' {
    run zpwrExists sub
    assert $state equals 0
}

@test 'zpwrExists to' {
    run zpwrExists to
    assert $state equals 0
}

@test 'zpwrExists fm' {
    run zpwrExists fm
    assert $state equals 0
}

@test 'zpwrExists digs' {
    run zpwrExists digs
    assert $state equals 0
}

@test 'zpwrExists ge' {
    run zpwrExists ge
    assert $state equals 0
}

@test 'zpwrExists gsdc' {
    run zpwrExists gsdc
    assert $state equals 0
}

@test 'zpwrExists gse' {
    run zpwrExists gse
    assert $state equals 0
}

@test 'zpwrExists lcm' {
    run zpwrExists lcm
    assert $state equals 0
}

@test 'zpwrExists kr' {
    run zpwrExists kr
    assert $state equals 0
}

@test 'zpwrExists gil' {
    run zpwrExists gil
    assert $state equals 0
}

@test 'zpwrExists cgh' {
    run zpwrExists cgh
    assert $state equals 0
}
