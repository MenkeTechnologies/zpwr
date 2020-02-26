#!/usr/bin/env zunit
#{{{ MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Feb 25 19:37:50 EST 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************
#
@setup {
    load ~/.zpwr/.shell_aliases_functions.sh
    TEST_FILE=tests/testfile
}

@test 'zshrc exists' {
	test -f install/.zshrc
    assert $? equals 0
}

@test 'scripts syntax check' {
	zsh -n scripts/*.{sh,zsh}
    assert $? equals 0
}
@test 'zshrc syntax check' {
	zsh -n install/.zshrc
    assert $? equals 0
}

@test 'shell alias syntax check' {
	zsh -n .shell_aliases_functions.sh
    assert $? equals 0
}

@test 'ZPWR_LOCAL' {
    test -n $ZPWR_LOCAL
    assert $? equals 0
}
@test 'ZPWR_OS_TYPE' {
    test -n $ZPWR_OS_TYPE
    assert $? equals 0
}

@test 'ZPWR_GITHUB_ACCOUNT' {
    test -n $ZPWR_GITHUB_ACCOUNT
    assert $? equals 0
}

@test 'ZPWR_REPO_NAME' {
    test -n $ZPWR_REPO_NAME
    assert $? equals 0
    assert $ZPWR_REPO_NAME equals zpwr
}

@test 'ZPWR_COMPETION_DIR' {
    test -n $ZPWR_COMPETION_DIR
    assert $? equals 0
}
@test 'ZPWR_GITHUB_ACCOUNT' {
    test -n $ZPWR_GITHUB_ACCOUNT
    assert $? equals 0
}

@test 'ZPWR_GITHUB_URL' {
    test -n $ZPWR_GITHUB_URL
    assert $? equals 0
}

@test 'gcl' {
    run gcl 
    assert $state equals 1
}

@test 'tac' {
    run tac $TEST_FILE
    assert $? equals 0

    assert "$output" is_not_empty
}

@test 'tac content' {
    run tac $TEST_FILE
    assert $? equals 0

    firstline=$(cat $TEST_FILE | head -n 1)
    out=$(echo $output | tail -n 1)

    assert "$firstline" equals "$out"
}

@test 'tac content' {
    run tac $TEST_FILE
    assert $? equals 0

    lastline=$(cat $TEST_FILE | tail -n 1)
    out=$(echo $output | head -n 1)

    assert "$lastline" equals "$out"
}

