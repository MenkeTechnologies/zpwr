#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrUpdater–zpwrVimFzfWordsearchVerb autoload zsh -n
##### Notes: Continues batch46 after zpwrUpdateDepsClean; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after vimrecentsudocd)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[vimsearch]' {
    run grep -Fq 'ZPWR_VERBS[vimsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimtests]' {
    run grep -Fq 'ZPWR_VERBS[vimtests]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimtokens]' {
    run grep -Fq 'ZPWR_VERBS[vimtokens]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimctags]' {
    run grep -Fq 'ZPWR_VERBS[vimctags]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimgtags]' {
    run grep -Fq 'ZPWR_VERBS[vimgtags]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch47 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_005.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_005.zsh"
    assert $state equals 0
}

@test 'wizard page_024.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_024.zsh"
    assert $state equals 0
}

@test 'wizard page_041.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_041.zsh"
    assert $state equals 0
}

@test 'wizard page_059.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_059.zsh"
    assert $state equals 0
}

@test 'wizard page_078.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_078.zsh"
    assert $state equals 0
}

@test 'wizard page_101.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_101.zsh"
    assert $state equals 0
}

@test 'wizard page_121.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_121.zsh"
    assert $state equals 0
}

@test 'wizard page_154.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_154.zsh"
    assert $state equals 0
}

@test 'wizard page_174.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_174.zsh"
    assert $state equals 0
}

@test 'wizard page_193.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_193.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrUpdater through zpwrVimFzfWordsearchVerb)
#--------------------------------------------------------------
@test 'autoload common zpwrUpdater passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdater"
    assert $state equals 0
}

@test 'autoload common zpwrUpload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpload"
    assert $state equals 0
}

@test 'autoload common zpwrUrlSafe passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrUrlSafe"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsEditNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsEditNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsFZF"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsNoZLE passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsNoZLE"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsWidget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsWidget"
    assert $state equals 0
}

@test 'autoload common zpwrVerbsWidgetAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsWidgetAccept"
    assert $state equals 0
}

@test 'autoload common zpwrVimAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAll"
    assert $state equals 0
}

@test 'autoload common zpwrVimAllEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllEdit"
    assert $state equals 0
}

@test 'autoload common zpwrVimAllWidget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllWidget"
    assert $state equals 0
}

@test 'autoload common zpwrVimAllWidgetAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllWidgetAccept"
    assert $state equals 0
}

@test 'autoload common zpwrVimAutoload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAutoload"
    assert $state equals 0
}

@test 'autoload common zpwrVimEmacsConfig passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimEmacsConfig"
    assert $state equals 0
}

@test 'autoload common zpwrVimFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzf"
    assert $state equals 0
}

@test 'autoload common zpwrVimFzfFilesearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfFilesearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrVimFzfFilesearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrVimFzfFilesearchWidgetAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfFilesearchWidgetAccept"
    assert $state equals 0
}

@test 'autoload common zpwrVimFzfSudo passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfSudo"
    assert $state equals 0
}

@test 'autoload common zpwrVimFzfWordsearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfWordsearchVerb"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch47 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrUpdater returns 0' {
    run zpwrExists zpwrUpdater
    assert $state equals 0
}

@test 'zpwrExists zpwrUpload returns 0' {
    run zpwrExists zpwrUpload
    assert $state equals 0
}

@test 'zpwrExists zpwrUrlSafe returns 0' {
    run zpwrExists zpwrUrlSafe
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsEditNoZLE returns 0' {
    run zpwrExists zpwrVerbsEditNoZLE
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsFZF returns 0' {
    run zpwrExists zpwrVerbsFZF
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsNoZLE returns 0' {
    run zpwrExists zpwrVerbsNoZLE
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsWidget returns 0' {
    run zpwrExists zpwrVerbsWidget
    assert $state equals 0
}

@test 'zpwrExists zpwrVimAll returns 0' {
    run zpwrExists zpwrVimAll
    assert $state equals 0
}

@test 'zpwrExists zpwrVimAutoload returns 0' {
    run zpwrExists zpwrVimAutoload
    assert $state equals 0
}

@test 'zpwrExists zpwrVimEmacsConfig returns 0' {
    run zpwrExists zpwrVimEmacsConfig
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzf returns 0' {
    run zpwrExists zpwrVimFzf
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists dirname basename returns 0' {
    run zpwrCommandExists dirname basename
    assert $state equals 0
}

@test 'zpwrCommandExists comm join returns 0' {
    run zpwrCommandExists comm join
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
