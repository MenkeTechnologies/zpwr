#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test plugin count/list functions for zsh/vim/emacs
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# zpwrZshPluginList
#--------------------------------------------------------------
@test 'zpwrZshPluginList exists' {
    run zpwrExists zpwrZshPluginList
    assert $state equals 0
}

@test 'zpwrZshPluginList returns 0' {
    run zpwrZshPluginList &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrZshPluginCount
#--------------------------------------------------------------
@test 'zpwrZshPluginCount exists' {
    run zpwrExists zpwrZshPluginCount
    assert $state equals 0
}

@test 'zpwrZshPluginCount returns 0' {
    run zpwrZshPluginCount &>/dev/null
    assert $state equals 0
}

@test 'zpwrZshPluginCount output is not empty' {
    run zpwrZshPluginCount
    assert "$output" is_not_empty
}

@test 'zpwrZshPluginCount is a number' {
    out=$(zpwrZshPluginCount 2>/dev/null)
    run test "$out" -ge 0
    assert $state equals 0
}

@test 'zpwrZshPluginCount matches zpwrZshPluginList line count' {
    listCount=$(zpwrZshPluginList 2>/dev/null | wc -l | tr -d ' ')
    countOut=$(zpwrZshPluginCount 2>/dev/null)
    [[ "$countOut" -eq "$listCount" ]]
    assert $? equals 0
}

#--------------------------------------------------------------
# zpwrVimPluginList
#--------------------------------------------------------------
@test 'zpwrVimPluginList exists' {
    run zpwrExists zpwrVimPluginList
    assert $state equals 0
}

@test 'zpwrVimPluginList returns 0' {
    run zpwrVimPluginList &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrVimPluginCount
#--------------------------------------------------------------
@test 'zpwrVimPluginCount exists' {
    run zpwrExists zpwrVimPluginCount
    assert $state equals 0
}

@test 'zpwrVimPluginCount returns 0' {
    run zpwrVimPluginCount &>/dev/null
    assert $state equals 0
}

@test 'zpwrVimPluginCount output is not empty' {
    run zpwrVimPluginCount
    assert "$output" is_not_empty
}

@test 'zpwrVimPluginCount is a number' {
    out=$(zpwrVimPluginCount 2>/dev/null)
    run test "$out" -ge 0
    assert $state equals 0
}

@test 'zpwrVimPluginCount matches zpwrVimPluginList line count' {
    listCount=$(zpwrVimPluginList 2>/dev/null | wc -l | tr -d ' ')
    countOut=$(zpwrVimPluginCount 2>/dev/null)
    [[ "$countOut" -eq "$listCount" ]]
    assert $? equals 0
}

#--------------------------------------------------------------
# zpwrEmacsPluginCount
#--------------------------------------------------------------
@test 'zpwrEmacsPluginCount exists' {
    run zpwrExists zpwrEmacsPluginCount
    assert $state equals 0
}

@test 'zpwrEmacsPluginCount returns 0' {
    run zpwrEmacsPluginCount &>/dev/null
    assert $state equals 0
}

@test 'zpwrEmacsPluginCount output is not empty' {
    run zpwrEmacsPluginCount
    assert "$output" is_not_empty
}

@test 'zpwrEmacsPluginCount is a number' {
    out=$(zpwrEmacsPluginCount 2>/dev/null)
    run test "$out" -ge 0
    assert $state equals 0
}

#--------------------------------------------------------------
# Plugin manager home dir structure
#--------------------------------------------------------------
@test 'ZPWR_PLUGIN_MANAGER_HOME is set' {
    run test -n "$ZPWR_PLUGIN_MANAGER_HOME"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_MANAGER_HOME is a directory' {
    run test -d "$ZPWR_PLUGIN_MANAGER_HOME"
    assert $state equals 0
}

@test 'ZPWR_PLUGIN_DIR is set' {
    run test -n "$ZPWR_PLUGIN_DIR"
    assert $state equals 0
}

@test 'zpwrZshPluginList output entries are directories' {
    local entries
    entries=$(zpwrZshPluginList 2>/dev/null)
    if [[ -n "$entries" ]]; then
        local first
        first=$(echo "$entries" | head -n 1)
        run test -d "$first"
        assert $state equals 0
    else
        skip "no zsh plugin dirs found"
    fi
}

#--------------------------------------------------------------
# zpwrVimPluginList output
#--------------------------------------------------------------
@test 'zpwrVimPluginList with ~/.vim/bundle present lists dirs' {
    if [[ -d "$HOME/.vim/bundle" ]]; then
        run zpwrVimPluginList
        assert "$output" is_not_empty
    else
        skip "no ~/.vim/bundle found"
    fi
}

#--------------------------------------------------------------
# zpwr verb shortcuts for plugin counts
#--------------------------------------------------------------
@test 'zpwr zshplugincount is same as zpwrZshPluginCount' {
    v1=$(zpwr zshplugincount 2>/dev/null)
    v2=$(zpwrZshPluginCount 2>/dev/null)
    assert "$v1" equals "$v2"
}

@test 'zpwr vimplugincount is same as zpwrVimPluginCount' {
    v1=$(zpwr vimplugincount 2>/dev/null)
    v2=$(zpwrVimPluginCount 2>/dev/null)
    assert "$v1" equals "$v2"
}

@test 'zpwr emacsplugincount is same as zpwrEmacsPluginCount' {
    v1=$(zpwr emacsplugincount 2>/dev/null)
    v2=$(zpwrEmacsPluginCount 2>/dev/null)
    assert "$v1" equals "$v2"
}
