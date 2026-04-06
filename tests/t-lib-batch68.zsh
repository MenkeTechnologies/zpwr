#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (reverse/rvs/cfasd/changenamezpwr/changename); wizard_pages; zpwrEvalTester..zpwrFindFzfNoZLEVim zsh -n; exec/expand/fasd zpwrExists
##### Notes: Continues batch67; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (reverse + fasd + changename)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[reverse]' {
    run grep -Fq 'ZPWR_VERBS[reverse]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[rvs]' {
    run grep -Fq 'ZPWR_VERBS[rvs]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cfasd]' {
    run grep -Fq 'ZPWR_VERBS[cfasd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[changenamezpwr]' {
    run grep -Fq 'ZPWR_VERBS[changenamezpwr]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[changename]' {
    run grep -Fq 'ZPWR_VERBS[changename]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch68 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_026.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_026.zsh"
    assert $state equals 0
}

@test 'wizard page_056.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_056.zsh"
    assert $state equals 0
}

@test 'wizard page_074.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_074.zsh"
    assert $state equals 0
}

@test 'wizard page_094.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_094.zsh"
    assert $state equals 0
}

@test 'wizard page_114.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_114.zsh"
    assert $state equals 0
}

@test 'wizard page_135.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_135.zsh"
    assert $state equals 0
}

@test 'wizard page_156.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_156.zsh"
    assert $state equals 0
}

@test 'wizard page_187.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_187.zsh"
    assert $state equals 0
}

@test 'wizard page_200.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_200.zsh"
    assert $state equals 0
}

@test 'wizard page_207.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_207.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrEvalTester through zpwrFindFzfNoZLEVim (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrEvalTester passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEvalTester"
    assert $state equals 0
}

@test 'autoload common zpwrExecGlob passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecGlob"
    assert $state equals 0
}

@test 'autoload common zpwrExecGlobParallel passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecGlobParallel"
    assert $state equals 0
}

@test 'autoload common zpwrExecpy passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecpy"
    assert $state equals 0
}

@test 'autoload common zpwrExercismDownloadAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExercismDownloadAll"
    assert $state equals 0
}

@test 'autoload common zpwrExpandAliasAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExpandAliasAccept"
    assert $state equals 0
}

@test 'autoload common zpwrExpandAliases passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExpandAliases"
    assert $state equals 0
}

@test 'autoload common zpwrExpandOrCompleteWithDots passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrExpandOrCompleteWithDots"
    assert $state equals 0
}

@test 'autoload common zpwrFasdFList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFList"
    assert $state equals 0
}

@test 'autoload common zpwrFasdFListVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFListVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFasdFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFZF"
    assert $state equals 0
}

@test 'autoload common zpwrFigletfonts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFigletfonts"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLEC passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEC"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLEEmacs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEEmacs"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfEditNoZLEVim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEVim"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLEC passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEC"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLEEmacs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEEmacs"
    assert $state equals 0
}

@test 'autoload common zpwrFindFzfNoZLEVim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEVim"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch68 (eval / exec / expand / fasd / find-fzf cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrEvalTester returns 0' {
    run zpwrExists zpwrEvalTester
    assert $state equals 0
}

@test 'zpwrExists zpwrExecGlob returns 0' {
    run zpwrExists zpwrExecGlob
    assert $state equals 0
}

@test 'zpwrExists zpwrExecpy returns 0' {
    run zpwrExists zpwrExecpy
    assert $state equals 0
}

@test 'zpwrExists zpwrExercismDownloadAll returns 0' {
    run zpwrExists zpwrExercismDownloadAll
    assert $state equals 0
}

@test 'zpwrExists zpwrExpandAliases returns 0' {
    run zpwrExists zpwrExpandAliases
    assert $state equals 0
}

@test 'zpwrExists zpwrExpandOrCompleteWithDots returns 0' {
    run zpwrExists zpwrExpandOrCompleteWithDots
    assert $state equals 0
}

@test 'zpwrExists zpwrFasdFListVerb returns 0' {
    run zpwrExists zpwrFasdFListVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrFasdFZF returns 0' {
    run zpwrExists zpwrFasdFZF
    assert $state equals 0
}

@test 'zpwrExists zpwrFigletfonts returns 0' {
    run zpwrExists zpwrFigletfonts
    assert $state equals 0
}

@test 'zpwrExists zpwrFindFzfNoZLE returns 0' {
    run zpwrExists zpwrFindFzfNoZLE
    assert $state equals 0
}

@test 'zpwrExists zpwrFindFzfNoZLEVim returns 0' {
    run zpwrExists zpwrFindFzfNoZLEVim
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists dd cksum returns 0' {
    run zpwrCommandExists dd cksum
    assert $state equals 0
}

@test 'zpwrCommandExists users who returns 0' {
    run zpwrCommandExists users who
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'ci.yml workflow exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'tests test_lib.zsh exists' {
    run test -f "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'install zpwr.yml exists' {
    run test -f "$ZPWR/install/zpwr.yml"
    assert $state equals 0
}
