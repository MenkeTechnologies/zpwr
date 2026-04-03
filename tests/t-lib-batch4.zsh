#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: Perl/boxPrint, extra ZPWR_VERBS, and tooling checks
##### Notes: Complements t-lib-batch3.zsh verb coverage
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# scripts/boxPrint.pl (wizard / installer boxes)
#--------------------------------------------------------------
@test 'boxPrint.pl passes perl -c' {
    run perl -c "$ZPWR_SCRIPTS/boxPrint.pl" 2>&1
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — git / GitHub cluster
#--------------------------------------------------------------
@test 'verb gitclearcache registered' {
    run test -n "${ZPWR_VERBS[gitclearcache]+x}"
    assert $state equals 0
}

@test 'verb gitdir registered' {
    run test -n "${ZPWR_VERBS[gitdir]+x}"
    assert $state equals 0
}

@test 'verb gitwho registered' {
    run test -n "${ZPWR_VERBS[gitwho]+x}"
    assert $state equals 0
}

@test 'verb gitignore registered' {
    run test -n "${ZPWR_VERBS[gitignore]+x}"
    assert $state equals 0
}

@test 'verb gitlargest registered' {
    run test -n "${ZPWR_VERBS[gitlargest]+x}"
    assert $state equals 0
}

@test 'verb gh registered' {
    run test -n "${ZPWR_VERBS[gh]+x}"
    assert $state equals 0
}

@test 'verb github registered' {
    run test -n "${ZPWR_VERBS[github]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — navigation / home
#--------------------------------------------------------------
@test 'verb home registered' {
    run test -n "${ZPWR_VERBS[home]+x}"
    assert $state equals 0
}

@test 'verb homeenv registered' {
    run test -n "${ZPWR_VERBS[homeenv]+x}"
    assert $state equals 0
}

@test 'verb homescripts registered' {
    run test -n "${ZPWR_VERBS[homescripts]+x}"
    assert $state equals 0
}

@test 'verb hometest registered' {
    run test -n "${ZPWR_VERBS[hometest]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — features (matrix, lint, logs, ports)
#--------------------------------------------------------------
@test 'verb matrix registered' {
    run test -n "${ZPWR_VERBS[matrix]+x}"
    assert $state equals 0
}

@test 'verb lint registered' {
    run test -n "${ZPWR_VERBS[lint]+x}"
    assert $state equals 0
}

@test 'verb loginfo registered' {
    run test -n "${ZPWR_VERBS[loginfo]+x}"
    assert $state equals 0
}

@test 'verb logerror registered' {
    run test -n "${ZPWR_VERBS[logerror]+x}"
    assert $state equals 0
}

@test 'verb pathaudit registered' {
    run test -n "${ZPWR_VERBS[pathaudit]+x}"
    assert $state equals 0
}

@test 'verb ports registered' {
    run test -n "${ZPWR_VERBS[ports]+x}"
    assert $state equals 0
}

@test 'verb resolve registered' {
    run test -n "${ZPWR_VERBS[resolve]+x}"
    assert $state equals 0
}

@test 'verb regenpdf registered' {
    run test -n "${ZPWR_VERBS[regenpdf]+x}"
    assert $state equals 0
}

@test 'verb snapshot registered' {
    run test -n "${ZPWR_VERBS[snapshot]+x}"
    assert $state equals 0
}

@test 'verb stale registered' {
    run test -n "${ZPWR_VERBS[stale]+x}"
    assert $state equals 0
}

@test 'verb startup registered' {
    run test -n "${ZPWR_VERBS[startup]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — tests / timeline / top / trace
#--------------------------------------------------------------
@test 'verb test registered' {
    run test -n "${ZPWR_VERBS[test]+x}"
    assert $state equals 0
}

@test 'verb tests registered' {
    run test -n "${ZPWR_VERBS[tests]+x}"
    assert $state equals 0
}

@test 'verb timeline registered' {
    run test -n "${ZPWR_VERBS[timeline]+x}"
    assert $state equals 0
}

@test 'verb top registered' {
    run test -n "${ZPWR_VERBS[top]+x}"
    assert $state equals 0
}

@test 'verb trace registered' {
    run test -n "${ZPWR_VERBS[trace]+x}"
    assert $state equals 0
}

@test 'verb taillog registered' {
    run test -n "${ZPWR_VERBS[taillog]+x}"
    assert $state equals 0
}

@test 'verb study registered' {
    run test -n "${ZPWR_VERBS[study]+x}"
    assert $state equals 0
}

@test 'verb wizard registered' {
    run test -n "${ZPWR_VERBS[wizard]+x}"
    assert $state equals 0
}

@test 'verb manual registered' {
    run test -n "${ZPWR_VERBS[manual]+x}"
    assert $state equals 0
}

@test 'verb tutorial registered' {
    run test -n "${ZPWR_VERBS[tutorial]+x}"
    assert $state equals 0
}

@test 'verb docs registered' {
    run test -n "${ZPWR_VERBS[docs]+x}"
    assert $state equals 0
}

@test 'verb help registered' {
    run test -n "${ZPWR_VERBS[help]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — extra
#--------------------------------------------------------------
@test 'zpwrCommandExists perl returns 0' {
    run zpwrCommandExists perl
    assert $state equals 0
}

@test 'zpwrCommandExists curl returns 0' {
    run zpwrCommandExists curl
    assert $state equals 0
}

@test 'zpwrCommandExists git returns 0' {
    run zpwrCommandExists git
    assert $state equals 0
}

@test 'zpwrCommandExists vim returns 0' {
    run zpwrCommandExists vim
    assert $state equals 0
}

@test 'zpwrCommandExists zsh returns 0' {
    run zpwrCommandExists zsh
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — bench / profile / monitor verbs (overlap ok with t-new-verbs)
#--------------------------------------------------------------
@test 'verb bench registered' {
    run test -n "${ZPWR_VERBS[bench]+x}"
    assert $state equals 0
}

@test 'verb flame registered' {
    run test -n "${ZPWR_VERBS[flame]+x}"
    assert $state equals 0
}

@test 'verb doctor registered' {
    run test -n "${ZPWR_VERBS[doctor]+x}"
    assert $state equals 0
}

@test 'verb deps registered' {
    run test -n "${ZPWR_VERBS[deps]+x}"
    assert $state equals 0
}

@test 'verb aliasrank registered' {
    run test -n "${ZPWR_VERBS[aliasrank]+x}"
    assert $state equals 0
}

@test 'verb funcrank registered' {
    run test -n "${ZPWR_VERBS[funcrank]+x}"
    assert $state equals 0
}

@test 'verb watch registered' {
    run test -n "${ZPWR_VERBS[watch]+x}"
    assert $state equals 0
}

@test 'verb replay registered' {
    run test -n "${ZPWR_VERBS[replay]+x}"
    assert $state equals 0
}

@test 'verb restore registered' {
    run test -n "${ZPWR_VERBS[restore]+x}"
    assert $state equals 0
}

@test 'verb prettyprint registered' {
    run test -n "${ZPWR_VERBS[prettyprint]+x}"
    assert $state equals 0
}

@test 'verb recompile registered' {
    run test -n "${ZPWR_VERBS[recompile]+x}"
    assert $state equals 0
}

@test 'verb refreshzwc registered' {
    run test -n "${ZPWR_VERBS[refreshzwc]+x}"
    assert $state equals 0
}

