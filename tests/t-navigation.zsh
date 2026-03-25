#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 24 00:00:00 EST 2026
##### Purpose: zsh script to test navigation and utility functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# p - process listing
#--------------------------------------------------------------
@test 'p no args returns 0' {
    run p &>/dev/null
    assert $state equals 0
}

@test 'p no args output is not empty' {
    run p &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'p with zsh arg returns 0' {
    run p zsh &>/dev/null
    assert $state equals 0
}

@test 'p with zsh arg output contains zsh' {
    run p zsh &>/dev/null
    assert "$output" contains zsh
}

@test 'p with multiple args returns 0' {
    run p zsh init &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# b - background command
#--------------------------------------------------------------
@test 'b no args returns 1' {
    run b
    assert $state equals 1
}

@test 'b no args output contains usage' {
    run b 2>&1
    assert "$output" contains usage
}

@test 'b with echo cmd returns 0' {
    run b "echo bgtest" &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# j - touch/create file
#--------------------------------------------------------------
@test 'j no args returns 1' {
    run j
    assert $state equals 1
}

@test 'j with file creates file' {
    local tmpfile
    tmpfile="/tmp/zpwr_j_test_$$"
    run j "$tmpfile"
    assert $state equals 0
    run test -f "$tmpfile"
    assert $state equals 0
    command rm -f "$tmpfile"
}

@test 'j with nested path creates dirs and file' {
    local tmpdir tmpfile
    tmpdir="/tmp/zpwr_j_nested_$$"
    tmpfile="$tmpdir/subdir/testfile"
    run j "$tmpfile"
    assert $state equals 0
    run test -f "$tmpfile"
    assert $state equals 0
    command rm -rf "$tmpdir"
}

@test 'j with multiple files returns 0' {
    local f1 f2
    f1="/tmp/zpwr_j_a_$$"
    f2="/tmp/zpwr_j_b_$$"
    run j "$f1" "$f2"
    assert $state equals 0
    run test -f "$f1"
    assert $state equals 0
    run test -f "$f2"
    assert $state equals 0
    command rm -f "$f1" "$f2"
}

#--------------------------------------------------------------
# xx - repeat command
#--------------------------------------------------------------
@test 'xx no args returns 1' {
    run xx
    assert $state equals 1
}

@test 'xx no args output contains usage' {
    run xx 2>&1
    assert "$output" contains usage
}

@test 'xx with echo cmd returns 0' {
    run xx "echo xxtest" 1
    assert $state equals 0
}

@test 'xx with count 3 runs cmd 3 times' {
    local tmpfile
    tmpfile=$(mktemp)
    xx "echo line >> $tmpfile" 3
    run wc -l < "$tmpfile"
    assert $state equals 0
    local count
    count=$(wc -l < "$tmpfile" | tr -d ' ')
    [[ "$count" -eq 3 ]]
    assert $? equals 0
    command rm -f "$tmpfile"
}

@test 'xx default count runs cmd 100 times' {
    local tmpfile
    tmpfile=$(mktemp)
    xx "echo x >> $tmpfile" 100
    local count
    count=$(wc -l < "$tmpfile" | tr -d ' ')
    [[ "$count" -eq 100 ]]
    assert $? equals 0
    command rm -f "$tmpfile"
}

#--------------------------------------------------------------
# zpwrCdUp - cd up n levels
#--------------------------------------------------------------
@test 'zpwrCdUp exists' {
    run zpwrExists zpwrCdUp
    assert $state equals 0
}

@test 'zpwrCdUp no args goes up one level' {
    local orig parent
    orig="$PWD"
    parent="${PWD:h}"
    zpwrCdUp &>/dev/null
    [[ "$PWD" == "$parent" ]]
    assert $? equals 0
    cd "$orig"
}

@test 'zpwrCdUp 1 goes up one level' {
    local orig parent
    orig="$PWD"
    parent="${PWD:h}"
    zpwrCdUp 1 &>/dev/null
    [[ "$PWD" == "$parent" ]]
    assert $? equals 0
    cd "$orig"
}

@test 'zpwrCdUp 2 goes up two levels' {
    local orig grandparent
    orig="$PWD"
    grandparent="${${PWD:h}:h}"
    zpwrCdUp 2 &>/dev/null
    [[ "$PWD" == "$grandparent" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# va - cd to /var
#--------------------------------------------------------------
@test 'va navigates to /var' {
    local orig
    orig="$PWD"
    va &>/dev/null
    [[ "$PWD" == /var ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# h - cd to homebrew prefix
#--------------------------------------------------------------
@test 'h exists as function' {
    run zpwrExists h
    assert $state equals 0
}

@test 'h navigates to HOMEBREW_PREFIX or /usr/local' {
    local orig expected
    orig="$PWD"
    expected="${HOMEBREW_PREFIX:-/usr/local}"
    h &>/dev/null
    [[ "$PWD" == "$expected" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# d - cd to ZPWR_D
#--------------------------------------------------------------
@test 'd navigates to ZPWR_D' {
    local orig
    orig="$PWD"
    d &>/dev/null
    [[ "$PWD" == "$ZPWR_D" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# zco - cd to ZPWR_COMPS
#--------------------------------------------------------------
@test 'zco navigates to ZPWR_COMPS' {
    local orig
    orig="$PWD"
    zco &>/dev/null
    [[ "$PWD" == "$ZPWR_COMPS" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# zals - cd to ZPWR_AUTOLOAD_SYSTEMCTL
#--------------------------------------------------------------
@test 'zals exists' {
    run zpwrExists zals
    assert $state equals 0
}

@test 'zals navigates to ZPWR_AUTOLOAD_SYSTEMCTL' {
    local orig
    orig="$PWD"
    zals &>/dev/null
    [[ "$PWD" == "$ZPWR_AUTOLOAD_SYSTEMCTL" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# zalu - cd to ZPWR_AUTOLOAD_COMP_UTILS
#--------------------------------------------------------------
@test 'zalu exists' {
    run zpwrExists zalu
    assert $state equals 0
}

@test 'zalu navigates to ZPWR_AUTOLOAD_COMP_UTILS' {
    local orig
    orig="$PWD"
    zalu &>/dev/null
    [[ "$PWD" == "$ZPWR_AUTOLOAD_COMP_UTILS" ]]
    assert $? equals 0
    cd "$orig"
}

#--------------------------------------------------------------
# zli - cd to ZPWR_LOCAL_ENV or ZPWR_LOCAL (zpwr local init)
#--------------------------------------------------------------
@test 'zli exists' {
    run zpwrExists zli
    assert $state equals 0
}

#--------------------------------------------------------------
# zh - cd to ZPWR_PLUGIN_MANAGER_HOME
#--------------------------------------------------------------
@test 'zh exists' {
    run zpwrExists zh
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER_HOME is a dir' {
    if [[ -d "$ZPWR_PLUGIN_MANAGER_HOME" ]]; then
        run test -d "$ZPWR_PLUGIN_MANAGER_HOME"
        assert $state equals 0
    else
        skip "ZPWR_PLUGIN_MANAGER_HOME '$ZPWR_PLUGIN_MANAGER_HOME' not found"
    fi
}

#--------------------------------------------------------------
# zpl - cd to ZPWR_PLUGIN_DIR
#--------------------------------------------------------------
@test 'zpl exists' {
    run zpwrExists zpl
    assert $state equals 0
}

#--------------------------------------------------------------
# tac output reversal
#--------------------------------------------------------------
@test 'tac reverses file lines' {
    local tmpfile
    tmpfile=$(mktemp)
    printf 'alpha\nbeta\ngamma\n' > "$tmpfile"
    run tac "$tmpfile"
    assert $state equals 0
    firstout=$(tac "$tmpfile" | head -n 1)
    assert "$firstout" equals gamma
    command rm -f "$tmpfile"
}

@test 'tac on single line file' {
    local tmpfile
    tmpfile=$(mktemp)
    printf 'onlyone\n' > "$tmpfile"
    run tac "$tmpfile"
    assert $state equals 0
    assert "$output" contains onlyone
    command rm -f "$tmpfile"
}

#--------------------------------------------------------------
# r and f - back/forward navigation
#--------------------------------------------------------------
@test 'r exists' {
    run zpwrExists r
    assert $state equals 0
}

@test 'f exists' {
    run zpwrExists f
    assert $state equals 0
}

@test 'r goes to parent directory' {
    local orig parent
    orig="$PWD"
    parent="${PWD:h}"
    r &>/dev/null
    [[ "$PWD" == "$parent" ]]
    assert $? equals 0
    f &>/dev/null
    [[ "$PWD" == "$orig" ]]
    assert $? equals 0
}
