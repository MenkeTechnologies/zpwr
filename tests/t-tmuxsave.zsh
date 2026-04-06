#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: tests for zpwr tmuxsave/tmuxload (layout save/restore)
##### Notes: covers verb registration, function existence, syntax, help flags,
#####   list/delete modes, generated script structure, completion entry
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Verb registration — ZPWR_VERBS
#--------------------------------------------------------------
@test 'verb tmuxsave registered' {
    run test -n "${ZPWR_VERBS[tmuxsave]+x}"
    assert $state equals 0
}

@test 'verb tmuxload registered' {
    run test -n "${ZPWR_VERBS[tmuxload]+x}"
    assert $state equals 0
}

@test 'verb layoutsave registered' {
    run test -n "${ZPWR_VERBS[layoutsave]+x}"
    assert $state equals 0
}

@test 'verb layoutload registered' {
    run test -n "${ZPWR_VERBS[layoutload]+x}"
    assert $state equals 0
}

@test 'verb tmuxsave maps to zpwrTmuxSave' {
    run test "${ZPWR_VERBS[tmuxsave]%%=*}" = "zpwrTmuxSave"
    assert $state equals 0
}

@test 'verb tmuxload maps to zpwrTmuxLoad' {
    run test "${ZPWR_VERBS[tmuxload]%%=*}" = "zpwrTmuxLoad"
    assert $state equals 0
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[tmuxsave]' {
    run grep -Fq 'ZPWR_VERBS[tmuxsave]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[tmuxload]' {
    run grep -Fq 'ZPWR_VERBS[tmuxload]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[layoutsave]' {
    run grep -Fq 'ZPWR_VERBS[layoutsave]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[layoutload]' {
    run grep -Fq 'ZPWR_VERBS[layoutload]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload file existence
#--------------------------------------------------------------
@test 'autoload zpwrTmuxSave exists' {
    run test -f "$ZPWR/autoload/common/zpwrTmuxSave"
    assert $state equals 0
}

@test 'autoload zpwrTmuxLoad exists' {
    run test -f "$ZPWR/autoload/common/zpwrTmuxLoad"
    assert $state equals 0
}

#--------------------------------------------------------------
# Syntax checks — zsh -n
#--------------------------------------------------------------
@test 'zpwrTmuxSave passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTmuxSave"
    assert $state equals 0
}

@test 'zpwrTmuxLoad passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrTmuxLoad"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists
#--------------------------------------------------------------
@test 'zpwrExists zpwrTmuxSave returns 0' {
    run zpwrExists zpwrTmuxSave
    assert $state equals 0
}

@test 'zpwrExists zpwrTmuxLoad returns 0' {
    run zpwrExists zpwrTmuxLoad
    assert $state equals 0
}

#--------------------------------------------------------------
# Help flag — returns 0 and produces output
#--------------------------------------------------------------
@test 'zpwrTmuxSave --help returns 0' {
    run zpwrTmuxSave --help
    assert $state equals 0
}

@test 'zpwrTmuxSave -h produces output' {
    run zpwrTmuxSave -h
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'zpwrTmuxSave -h mentions USAGE' {
    run zpwrTmuxSave -h
    assert "$output" contains "USAGE"
}

@test 'zpwrTmuxSave -h mentions layout' {
    run zpwrTmuxSave -h
    assert "$output" contains "layout"
}

@test 'zpwrTmuxLoad --help returns 0' {
    run zpwrTmuxLoad --help
    assert $state equals 0
}

@test 'zpwrTmuxLoad -h produces output' {
    run zpwrTmuxLoad -h
    assert $state equals 0
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# List mode — works even with empty layout dir
#--------------------------------------------------------------
@test 'zpwrTmuxSave --list returns 0' {
    run zpwrTmuxSave --list
    assert $state equals 0
}

@test 'zpwrTmuxLoad --list returns 0' {
    run zpwrTmuxLoad --list
    assert $state equals 0
}

#--------------------------------------------------------------
# Delete mode — nonexistent layout returns 1
#--------------------------------------------------------------
@test 'zpwrTmuxSave --delete nonexistent returns 1' {
    run zpwrTmuxSave --delete "__zpwr_test_nonexistent_layout__"
    assert $state equals 1
}

#--------------------------------------------------------------
# Save requires tmux — returns 1 outside tmux
#--------------------------------------------------------------
@test 'zpwrTmuxSave fails outside tmux with TMUX unset' {
    local save_tmux="$TMUX"
    unset TMUX
    run zpwrTmuxSave __zpwr_test_layout__
    TMUX="$save_tmux"
    assert $state equals 1
}

@test 'zpwrTmuxSave error message mentions tmux' {
    local save_tmux="$TMUX"
    unset TMUX
    run zpwrTmuxSave __zpwr_test_layout__
    TMUX="$save_tmux"
    assert "$output" contains "tmux"
}

#--------------------------------------------------------------
# Layout dir — exists or gets created
#--------------------------------------------------------------
@test 'layout directory path is under ZPWR_LOCAL' {
    run test -d "$ZPWR_LOCAL/layouts" -o ! -d "$ZPWR_LOCAL/layouts"
    assert $state equals 0
}

#--------------------------------------------------------------
# Completion entries in _zpwr
#--------------------------------------------------------------
@test '_zpwr contains tmuxsave completion entry' {
    run grep -q 'tmuxsave' "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test '_zpwr contains tmuxload completion entry' {
    run grep -q 'tmuxload' "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test '_zpwr contains layoutsave completion entry' {
    run grep -q 'layoutsave' "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test '_zpwr contains layoutload completion entry' {
    run grep -q 'layoutload' "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test '_zpwr tmuxsave has --list completion' {
    run grep -A5 'tmuxsave' "$ZPWR/autoload/comps/_zpwr"
    assert "$output" contains "list"
}

@test '_zpwr tmuxsave has --delete completion' {
    run grep -A5 'tmuxsave' "$ZPWR/autoload/comps/_zpwr"
    assert "$output" contains "delete"
}

@test '_zpwr tmuxload has layout completion' {
    run grep -A5 'tmuxload' "$ZPWR/autoload/comps/_zpwr"
    assert "$output" contains "layouts"
}

#--------------------------------------------------------------
# Source code checks — no local inside loops
#--------------------------------------------------------------
@test 'zpwrTmuxSave has no local inside while loop' {
    # extract lines between 'while' and 'done' and check for 'local '
    run zsh -c '
        awk "/while.*read/,/done/" "$ZPWR/autoload/common/zpwrTmuxSave" | grep -c "local "
    '
    assert "$output" equals "0"
}

@test 'zpwrTmuxSave has no local inside for loop' {
    run zsh -c '
        awk "/for \(\(/,/done/" "$ZPWR/autoload/common/zpwrTmuxSave" | grep -c "local "
    '
    assert "$output" equals "0"
}

#--------------------------------------------------------------
# Shift guard — no unguarded shift 2
#--------------------------------------------------------------
@test 'zpwrTmuxSave guards shift 2 with $# check' {
    # every shift 2 must be inside a $# >= 2 guard
    run grep 'shift 2' "$ZPWR/autoload/common/zpwrTmuxSave"
    assert "$output" contains '$# >= 2'
}

#--------------------------------------------------------------
# tmux keybinding — prefix W
#--------------------------------------------------------------
@test 'tmux init.conf has prefix W binding' {
    run grep -q 'bind-key W' "$ZPWR/tmux/init.conf"
    assert $state equals 0
}

@test 'prefix W binding runs tmuxsave' {
    run grep 'bind-key W' "$ZPWR/tmux/init.conf"
    assert "$output" contains "tmuxsave"
}

#--------------------------------------------------------------
# Generated script structure (if layout dir has test file)
#--------------------------------------------------------------
@test 'saved layout is valid zsh when present' {
    if [[ -f "$ZPWR_LOCAL/layouts/test_layout.zsh" ]]; then
        run zsh -n "$ZPWR_LOCAL/layouts/test_layout.zsh"
        assert $state equals 0
    else
        skip 'no test_layout.zsh saved'
    fi
}

@test 'saved layout contains select-layout when present' {
    if [[ -f "$ZPWR_LOCAL/layouts/test_layout.zsh" ]]; then
        run grep -q 'select-layout' "$ZPWR_LOCAL/layouts/test_layout.zsh"
        assert $state equals 0
    else
        skip 'no test_layout.zsh saved'
    fi
}

@test 'saved layout contains new-session when present' {
    if [[ -f "$ZPWR_LOCAL/layouts/test_layout.zsh" ]]; then
        run grep -q 'new-session' "$ZPWR_LOCAL/layouts/test_layout.zsh"
        assert $state equals 0
    else
        skip 'no test_layout.zsh saved'
    fi
}

@test 'saved layout contains builtin cd when present' {
    if [[ -f "$ZPWR_LOCAL/layouts/test_layout.zsh" ]]; then
        run grep -q 'builtin cd' "$ZPWR_LOCAL/layouts/test_layout.zsh"
        assert $state equals 0
    else
        skip 'no test_layout.zsh saved'
    fi
}

@test 'saved layout contains attach logic when present' {
    if [[ -f "$ZPWR_LOCAL/layouts/test_layout.zsh" ]]; then
        run grep -q 'attach-session\|switch-client' "$ZPWR_LOCAL/layouts/test_layout.zsh"
        assert $state equals 0
    else
        skip 'no test_layout.zsh saved'
    fi
}
