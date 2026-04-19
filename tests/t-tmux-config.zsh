#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test tmux config file existence and syntax
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'tmux config alt-control-window.conf exists' {
    run test -f "$ZPWR_TMUX/alt-control-window.conf"
    assert $state equals 0
}

@test 'tmux config alt-control-window.conf is not empty' {
    run test -s "$ZPWR_TMUX/alt-control-window.conf"
    assert $state equals 0
}

@test 'tmux config config-files.conf exists' {
    run test -f "$ZPWR_TMUX/config-files.conf"
    assert $state equals 0
}

@test 'tmux config config-files.conf is not empty' {
    run test -s "$ZPWR_TMUX/config-files.conf"
    assert $state equals 0
}

@test 'tmux config control-window.conf exists' {
    run test -f "$ZPWR_TMUX/control-window.conf"
    assert $state equals 0
}

@test 'tmux config control-window.conf is not empty' {
    run test -s "$ZPWR_TMUX/control-window.conf"
    assert $state equals 0
}

@test 'tmux config control-window2.conf exists' {
    run test -f "$ZPWR_TMUX/control-window2.conf"
    assert $state equals 0
}

@test 'tmux config control-window2.conf is not empty' {
    run test -s "$ZPWR_TMUX/control-window2.conf"
    assert $state equals 0
}

@test 'tmux config eight-panes.conf exists' {
    run test -f "$ZPWR_TMUX/eight-panes.conf"
    assert $state equals 0
}

@test 'tmux config eight-panes.conf is not empty' {
    run test -s "$ZPWR_TMUX/eight-panes.conf"
    assert $state equals 0
}

@test 'tmux config four-panes.conf exists' {
    run test -f "$ZPWR_TMUX/four-panes.conf"
    assert $state equals 0
}

@test 'tmux config four-panes.conf is not empty' {
    run test -s "$ZPWR_TMUX/four-panes.conf"
    assert $state equals 0
}

@test 'tmux config fourVertical.conf exists' {
    run test -f "$ZPWR_TMUX/fourVertical.conf"
    assert $state equals 0
}

@test 'tmux config fourVertical.conf is not empty' {
    run test -s "$ZPWR_TMUX/fourVertical.conf"
    assert $state equals 0
}

@test 'tmux config init.conf exists' {
    run test -f "$ZPWR_TMUX/init.conf"
    assert $state equals 0
}

@test 'tmux config init.conf is not empty' {
    run test -s "$ZPWR_TMUX/init.conf"
    assert $state equals 0
}

@test 'tmux config learn.conf exists' {
    run test -f "$ZPWR_TMUX/learn.conf"
    assert $state equals 0
}

@test 'tmux config learn.conf is not empty' {
    run test -s "$ZPWR_TMUX/learn.conf"
    assert $state equals 0
}

@test 'tmux config sixteen-panes-repl.conf exists' {
    run test -f "$ZPWR_TMUX/sixteen-panes-repl.conf"
    assert $state equals 0
}

@test 'tmux config sixteen-panes-repl.conf is not empty' {
    run test -s "$ZPWR_TMUX/sixteen-panes-repl.conf"
    assert $state equals 0
}

@test 'tmux config sixteen-panes.conf exists' {
    run test -f "$ZPWR_TMUX/sixteen-panes.conf"
    assert $state equals 0
}

@test 'tmux config sixteen-panes.conf is not empty' {
    run test -s "$ZPWR_TMUX/sixteen-panes.conf"
    assert $state equals 0
}

@test 'tmux config thirtytwo-panes-repl.conf exists' {
    run test -f "$ZPWR_TMUX/thirtytwo-panes-repl.conf"
    assert $state equals 0
}

@test 'tmux config thirtytwo-panes-repl.conf is not empty' {
    run test -s "$ZPWR_TMUX/thirtytwo-panes-repl.conf"
    assert $state equals 0
}

@test 'tmux config thirtytwo-panes.conf exists' {
    run test -f "$ZPWR_TMUX/thirtytwo-panes.conf"
    assert $state equals 0
}

@test 'tmux config thirtytwo-panes.conf is not empty' {
    run test -s "$ZPWR_TMUX/thirtytwo-panes.conf"
    assert $state equals 0
}

@test 'tmux config tmux_ge_21.conf exists' {
    run test -f "$ZPWR_TMUX/tmux_ge_21.conf"
    assert $state equals 0
}

@test 'tmux config tmux_ge_21.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux_ge_21.conf"
    assert $state equals 0
}

@test 'tmux config tmux_ge_29.conf exists' {
    run test -f "$ZPWR_TMUX/tmux_ge_29.conf"
    assert $state equals 0
}

@test 'tmux config tmux_ge_29.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux_ge_29.conf"
    assert $state equals 0
}

@test 'tmux config tmux_ge_31.conf exists' {
    run test -f "$ZPWR_TMUX/tmux_ge_31.conf"
    assert $state equals 0
}

@test 'tmux config tmux_ge_31.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux_ge_31.conf"
    assert $state equals 0
}

@test 'tmux config tmux_lt_21.conf exists' {
    run test -f "$ZPWR_TMUX/tmux_lt_21.conf"
    assert $state equals 0
}

@test 'tmux config tmux_lt_21.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux_lt_21.conf"
    assert $state equals 0
}

@test 'tmux config tmux_lt_29.conf exists' {
    run test -f "$ZPWR_TMUX/tmux_lt_29.conf"
    assert $state equals 0
}

@test 'tmux config tmux_lt_29.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux_lt_29.conf"
    assert $state equals 0
}

@test 'tmux config tmux_lt_31.conf exists' {
    run test -f "$ZPWR_TMUX/tmux_lt_31.conf"
    assert $state equals 0
}

@test 'tmux config tmux_lt_31.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux_lt_31.conf"
    assert $state equals 0
}

@test 'tmux config tmux-linux.conf exists' {
    run test -f "$ZPWR_TMUX/tmux-linux.conf"
    assert $state equals 0
}

@test 'tmux config tmux-linux.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux-linux.conf"
    assert $state equals 0
}

@test 'tmux config tmux-mac.conf exists' {
    run test -f "$ZPWR_TMUX/tmux-mac.conf"
    assert $state equals 0
}

@test 'tmux config tmux-mac.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux-mac.conf"
    assert $state equals 0
}

@test 'tmux config tmux-wsl.conf exists' {
    run test -f "$ZPWR_TMUX/tmux-wsl.conf"
    assert $state equals 0
}

@test 'tmux config tmux-wsl.conf is not empty' {
    run test -s "$ZPWR_TMUX/tmux-wsl.conf"
    assert $state equals 0
}
