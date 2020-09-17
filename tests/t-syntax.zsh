#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Feb 25 19:37:50 EST 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'autoload syntax' {
    run prettyPrintBox syntax
    assert $state equals 0
    assert "$output" is_not_empty
}

@test '$ZPWR_ENV/.zpwr_env.sh bash syntax check' {
	test -f $ZPWR_ENV/.zpwr_env.sh
	run bash -n $ZPWR_ENV/.zpwr_env.sh
    assert $state equals 0
}

@test '$ZPWR_ENV/.zpwr_env.sh zsh syntax check' {
	test -f $ZPWR_ENV/.zpwr_env.sh
	run zsh -n $ZPWR_ENV/.zpwr_env.sh
    assert $state equals 0
}

@test '$ZPWR_ENV/.zpwr_re_env.sh bash syntax check' {
	test -f $ZPWR_ENV/.zpwr_re_env.sh
	run bash -n $ZPWR_ENV/.zpwr_re_env.sh
    assert $state equals 0
}

@test '$ZPWR_ENV/.zpwr_re_env.sh zsh syntax check' {
	test -f $ZPWR_ENV/.zpwr_re_env.sh
	run zsh -n $ZPWR_ENV/.zpwr_re_env.sh
    assert $state equals 0
}

@test '$ZPWR_PROMPT_FILE zsh syntax check' {
	test -f $ZPWR_PROMPT_FILE
	run zsh $ZPWR_PROMPT_FILE
    assert $state equals 0
}

@test '$ZPWR_PROMPT_FILE bash syntax check' {
	test -f $ZPWR_PROMPT_FILE
	run bash -n $ZPWR_PROMPT_FILE
    assert $state equals 0
}

@test '$ZPWR_TMUX/google.sh bash syntax check' {
	test -f "$ZPWR_TMUX/google.sh"
	run bash -n "$ZPWR_TMUX/google.sh"
    assert $state equals 0
}

@test 'local/.tokens.sh syntax check' {
    if [[ -f $TOKENS_FILE ]]; then
        run zsh -n $TOKENS_FILE
        assert $state equals 0
    else
        skip "where is TOKENS_FILE $TOKENS_FILE? $(ls -l local)"
    fi
}

@test 'ZPWR_INSTALL/s file exists' {
	test -f "$ZPWR_INSTALL/s"
    assert $? equals 0
}

@test 'ZPWR_INSTALL/s bash syntax check' {
	run bash -n "$ZPWR_INSTALL/s"
    assert $state equals 0
}

@test 'ZPWR_INSTALL/s zsh syntax check' {
	run zsh -n "$ZPWR_INSTALL/s"
    assert $state equals 0
}

@test 'ZPWR_PROMPT_FILE file exists' {
	test -f "$ZPWR_PROMPT_FILE"
    assert $? equals 0
}

@test 'ZPWR_PROMPT_FILE bash syntax check' {
	run bash -n "$ZPWR_PROMPT_FILE"
    assert $state equals 0
}

@test 'ZPWR_PROMPT_FILE zsh syntax check' {
	run zsh -n "$ZPWR_PROMPT_FILE"
    assert $state equals 0
}

@test 'install/zshrc exists' {
	test -f "$ZPWR_INSTALL/".zshrc
    assert $? equals 0
}

@test 'scripts bash alias file syntax check' {
	run bash -n "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'shell alias syntax check' {
	run zsh -n "$ZPWR_ALIAS_FILE"
    assert $state equals 0
}

@test 'scripts vim vimrc syntax check' {
    if [[ -t 1 ]]; then
       skip "$- must be interactive term"
    fi

    tty 2>/dev/null 1>&2 || skip 'not a tty'

    run vim -u NONE -c 'try | source install/.vimrc | catch | cq | endtry | q';
    if [[ $state != 0 ]]; then
        echo "$state was not 0"
    fi
    pass
}
@test 'scripts vim minvimrc syntax check' {
    if [[ -t 1 ]]; then
       skip "$- must be interactive term"
    fi

    run vim -u NONE -c 'try | source env/.minvimrc | catch | cq | endtry | q';
    assert $state equals 0
}

@test 'mac only scripts bash syntax check' {
	for file in "$ZPWR_SCRIPTS_MAC/"*.sh;do
        run bash -n $file
        assert $state equals 0
    done
}

@test 'mac only scripts zsh syntax check' {
	for file in "$ZPWR_SCRIPTS_MAC/"*.{sh,zsh};do
        run zsh -n $file
        assert $state equals 0
    done
}

@test 'install scripts bash syntax check' {
	run bash -n "$ZPWR_INSTALL/"*.sh
    assert $state equals 0
}

@test 'install scripts zsh syntax check' {
	run zsh -n "$ZPWR_INSTALL/"*.{sh,zsh}
    assert $state equals 0
}

@test 'scripts bash syntax check' {
	run bash -n "$ZPWR_SCRIPTS/"*.sh
    assert $state equals 0
}

@test 'scripts zsh syntax check' {
	run zsh -n "$ZPWR_SCRIPTS/"*.{sh,zsh}
    assert $state equals 0
}

@test 'zshrc syntax check' {
	zsh -n "$ZPWR_INSTALL/".zshrc
    assert $? equals 0
}


