#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (dirsearch/doctor/doc/checkup/dockerwipe); wizard_pages; zpwrRegenGtagsCtags..zpwrRevealRecurse zsh -n; regen/reload/resolve zpwrExists
##### Notes: Continues batch74; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (doctor + docker)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[dirsearch]' {
    run grep -Fq 'ZPWR_VERBS[dirsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[doctor]' {
    run grep -Fq 'ZPWR_VERBS[doctor]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[doc]' {
    run grep -Fq 'ZPWR_VERBS[doc]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[checkup]' {
    run grep -Fq 'ZPWR_VERBS[checkup]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[dockerwipe]' {
    run grep -Fq 'ZPWR_VERBS[dockerwipe]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch75 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_006.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_006.zsh"
    assert $state equals 0
}

@test 'wizard page_016.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_016.zsh"
    assert $state equals 0
}

@test 'wizard page_026.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_026.zsh"
    assert $state equals 0
}

@test 'wizard page_036.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_036.zsh"
    assert $state equals 0
}

@test 'wizard page_046.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_046.zsh"
    assert $state equals 0
}

@test 'wizard page_056.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_056.zsh"
    assert $state equals 0
}

@test 'wizard page_066.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_066.zsh"
    assert $state equals 0
}

@test 'wizard page_086.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_086.zsh"
    assert $state equals 0
}

@test 'wizard page_116.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_116.zsh"
    assert $state equals 0
}

@test 'wizard page_136.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_136.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrRegenGtagsCtags through zpwrRevealRecurse (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrRegenGtagsCtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsCtags"
    assert $state equals 0
}

@test 'autoload common zpwrRegenGtagsPygments passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsPygments"
    assert $state equals 0
}

@test 'autoload common zpwrRegenGtagsType passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsType"
    assert $state equals 0
}

@test 'autoload common zpwrRegenHistory passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenHistory"
    assert $state equals 0
}

@test 'autoload common zpwrRegenMost passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenMost"
    assert $state equals 0
}

@test 'autoload common zpwrRegenPowerlineLink passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenPowerlineLink"
    assert $state equals 0
}

@test 'autoload common zpwrRegenSearchEnv passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenSearchEnv"
    assert $state equals 0
}

@test 'autoload common zpwrRegenZshCompCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenZshCompCache"
    assert $state equals 0
}

@test 'autoload common zpwrRegexp-replace-single passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegexp-replace-single"
    assert $state equals 0
}

@test 'autoload common zpwrReload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReload"
    assert $state equals 0
}

@test 'autoload common zpwrRelPath passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRelPath"
    assert $state equals 0
}

@test 'autoload common zpwrRename passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRename"
    assert $state equals 0
}

@test 'autoload common zpwrReplacer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReplacer"
    assert $state equals 0
}

@test 'autoload common zpwrReplay passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReplay"
    assert $state equals 0
}

@test 'autoload common zpwrReset passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrReset"
    assert $state equals 0
}

@test 'autoload common zpwrResolve passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrResolve"
    assert $state equals 0
}

@test 'autoload common zpwrRestore passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRestore"
    assert $state equals 0
}

@test 'autoload common zpwrRestoreHistfile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRestoreHistfile"
    assert $state equals 0
}

@test 'autoload common zpwrRetryZcompdump passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRetryZcompdump"
    assert $state equals 0
}

@test 'autoload common zpwrRevealRecurse passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrRevealRecurse"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch75 (regen / reload / restore / reveal cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrRegenGtagsCtags returns 0' {
    run zpwrExists zpwrRegenGtagsCtags
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenGtagsPygments returns 0' {
    run zpwrExists zpwrRegenGtagsPygments
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenGtagsType returns 0' {
    run zpwrExists zpwrRegenGtagsType
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenHistory returns 0' {
    run zpwrExists zpwrRegenHistory
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenMost returns 0' {
    run zpwrExists zpwrRegenMost
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenPowerlineLink returns 0' {
    run zpwrExists zpwrRegenPowerlineLink
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenSearchEnv returns 0' {
    run zpwrExists zpwrRegenSearchEnv
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenZshCompCache returns 0' {
    run zpwrExists zpwrRegenZshCompCache
    assert $state equals 0
}

@test 'zpwrExists zpwrRegexp-replace-single returns 0' {
    run zpwrExists zpwrRegexp-replace-single
    assert $state equals 0
}

@test 'zpwrExists zpwrReload returns 0' {
    run zpwrExists zpwrReload
    assert $state equals 0
}

@test 'zpwrExists zpwrRelPath returns 0' {
    run zpwrExists zpwrRelPath
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists cat tee returns 0' {
    run zpwrCommandExists cat tee
    assert $state equals 0
}

@test 'zpwrCommandExists head tail returns 0' {
    run zpwrCommandExists head tail
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
