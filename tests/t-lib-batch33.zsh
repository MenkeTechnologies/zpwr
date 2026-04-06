#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrCdUp–zpwrCleanRefreshUpdate autoload zsh -n
##### Notes: Continues batch32 after zpwrCd; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[scriptnew]' {
    run grep -Fq 'ZPWR_VERBS[scriptnew]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[study]' {
    run grep -Fq 'ZPWR_VERBS[study]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[screensaver]' {
    run grep -Fq 'ZPWR_VERBS[screensaver]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[scriptcount]' {
    run grep -Fq 'ZPWR_VERBS[scriptcount]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[stale]' {
    run grep -Fq 'ZPWR_VERBS[stale]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch33 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_004.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_004.zsh"
    assert $state equals 0
}

@test 'wizard page_011.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_011.zsh"
    assert $state equals 0
}

@test 'wizard page_020.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_020.zsh"
    assert $state equals 0
}

@test 'wizard page_045.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_045.zsh"
    assert $state equals 0
}

@test 'wizard page_070.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_070.zsh"
    assert $state equals 0
}

@test 'wizard page_099.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_099.zsh"
    assert $state equals 0
}

@test 'wizard page_115.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_115.zsh"
    assert $state equals 0
}

@test 'wizard page_140.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_140.zsh"
    assert $state equals 0
}

@test 'wizard page_170.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_170.zsh"
    assert $state equals 0
}

@test 'wizard page_198.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_198.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrCdUp through zpwrCleanRefreshUpdate)
#--------------------------------------------------------------
@test 'autoload common zpwrCdUp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCdUp"
    assert $state equals 0
}

@test 'autoload common zpwrCdVimFzfFilesearchWidgetAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCdVimFzfFilesearchWidgetAccept"
    assert $state equals 0
}

@test 'autoload common zpwrChangeGitAuthorEmail passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitAuthorEmail"
    assert $state equals 0
}

@test 'autoload common zpwrChangeGitCommitterEmail passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitCommitterEmail"
    assert $state equals 0
}

@test 'autoload common zpwrChangeGitEmail passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitEmail"
    assert $state equals 0
}

@test 'autoload common zpwrChangeName passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeName"
    assert $state equals 0
}

@test 'autoload common zpwrChangeNameZpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeNameZpwr"
    assert $state equals 0
}

@test 'autoload common zpwrChangeQuotes passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeQuotes"
    assert $state equals 0
}

@test 'autoload common zpwrChpwd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChpwd"
    assert $state equals 0
}

@test 'autoload common zpwrCleanAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanAll"
    assert $state equals 0
}

@test 'autoload common zpwrCleanCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanCompCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanCompCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanDirs"
    assert $state equals 0
}

@test 'autoload common zpwrCleanDirsAndTemp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanDirsAndTemp"
    assert $state equals 0
}

@test 'autoload common zpwrCleanGitRepoCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanGitRepoCleanCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoCleanCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanGitRepoDirtyCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoDirtyCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanLog passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanLog"
    assert $state equals 0
}

@test 'autoload common zpwrCleanRefreshCountsTestUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanRefreshCountsTestUpdate"
    assert $state equals 0
}

@test 'autoload common zpwrCleanRefreshUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanRefreshUpdate"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch33 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrCdUp returns 0' {
    run zpwrExists zpwrCdUp
    assert $state equals 0
}

@test 'zpwrExists zpwrChangeGitEmail returns 0' {
    run zpwrExists zpwrChangeGitEmail
    assert $state equals 0
}

@test 'zpwrExists zpwrChangeName returns 0' {
    run zpwrExists zpwrChangeName
    assert $state equals 0
}

@test 'zpwrExists zpwrChpwd returns 0' {
    run zpwrExists zpwrChpwd
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanAll returns 0' {
    run zpwrExists zpwrCleanAll
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanCache returns 0' {
    run zpwrExists zpwrCleanCache
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanDirs returns 0' {
    run zpwrExists zpwrCleanDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanLog returns 0' {
    run zpwrExists zpwrCleanLog
    assert $state equals 0
}

@test 'zpwrExists zpwrCdVimFzfFilesearchWidgetAccept returns 0' {
    run zpwrExists zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrChangeQuotes returns 0' {
    run zpwrExists zpwrChangeQuotes
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists tee wc returns 0' {
    run zpwrCommandExists tee wc
    assert $state equals 0
}

@test 'zpwrCommandExists whoami logname returns 0' {
    run zpwrCommandExists whoami logname
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'DESCRIPTION.md exists' {
    run test -f "$ZPWR/DESCRIPTION.md"
    assert $state equals 0
}

@test 'docs wizard_pages directory exists' {
    run test -d "$ZPWR/docs/wizard_pages"
    assert $state equals 0
}

@test 'env zpwr.zsh file exists' {
    run test -f "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}
