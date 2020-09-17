#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Jun  3 22:47:49 EDT 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'autoload banner' {
    run prettyPrintBox autoload
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'zpwr about' {
    run zpwr about
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains fetch
    assert "$output" contains push
}

@test 'zpwr ps' {
    run zpwr ps &>/dev/null
    assert $state equals 0
    out="$output"
    run p &>/dev/null
    assert $state equals 0
    assert "$output" contains "$out"
}

@test 'zpwrListVerbs count' {
    run zpwr verbscount &>/dev/null
    assert $state equals 0
    assert "$output" equals $#ZPWR_VERBS
}


@test 'zpwrListVerbs == zpwr verbslist' {
    run zpwr verbslist &>/dev/null
    assert $state equals 0
    out="$output"
    run zpwrListVerbs &>/dev/null
    assert $state equals 0
    assert "$output" contains "$out"
}

@test 'zpwrListVerbs vimall' {
    run zpwr verbslist &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains vimall
}

@test 'zpwrListVerbs update' {
    run zpwr verbslist &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains update
    run zpwrListVerbs &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains update
}

@test 'zpwrListVerbs poll' {
    run zpwr verbslist &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains poll
}

@test 'zpwrListFiles' {
    run zpwrListFiles &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains zpwrListFiles
}

@test 'zpwrAutoloadList' {
    run zpwrAutoloadList &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains zpwr
}

@test 'zpwrAutoloadList poll' {
    run zpwrAutoloadList &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains zpwrPoll
}

@test 'zpwrAutoloadList zs' {
    run zpwrAutoloadList &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains zs
}

@test 'zpwrAutoloadList zal' {
    run zpwrAutoloadList &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains zal
}

@test 'zpwrAutoloadList ze' {
    run zpwrAutoloadList &>/dev/null
    assert $state equals 0
    assert "$output" is_not_empty
    assert "$output" contains zs
}


@test 'zs' {
    zs &>/dev/null
    [[ "$PWD" == "$ZPWR_SCRIPTS" ]]
    assert $? equals 0
}

@test 'zin' {
    zin &>/dev/null
    [[ "$PWD" == "$ZPWR_INSTALL" ]]
    assert $? equals 0
}

@test 'ztm' {
    ztm &>/dev/null
    [[ "$PWD" == "$ZPWR_TMUX" ]]
    assert $? equals 0
}

@test 'zt' {
    zt &>/dev/null
    [[ "$PWD" == "$ZPWR_TEST" ]]
    assert $? equals 0
}

@test 'ze' {
    ze &>/dev/null
    [[ "$PWD" == "$ZPWR_ENV" ]]
    assert $? equals 0
}

@test 'vl' {
    vl &>/dev/null
    [[ "$PWD" == /var/log ]]
    assert $? equals 0
}

@test 'zal' {
    zal &>/dev/null
    [[ "$PWD" == "$ZPWR_AUTOLOAD_COMMON" ]]
    assert $? equals 0
}

@test 'zpwr comps zsh syntax check' {
    for file in $ZPWR_COMPS/**/*~*.zwc~*.zwc.old(.);do
        run zsh -n $file
        assert $state equals 0
    done
}

@test 'zpwr autoload zsh syntax check' {
    for file in $ZPWR_AUTOLOAD/**/*~*.zwc~*.zwc.old(.);do
        run zsh -n $file
        assert $state equals 0
    done
}
