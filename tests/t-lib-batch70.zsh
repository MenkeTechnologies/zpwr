#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (cleangitcache..cleanupdatedeps); wizard_pages; zpwrFzfSurround..zpwrGitConfig zsh -n; fzf/fzvim/get/git zpwrExists
##### Notes: Continues batch69; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (clean git/comp/refresh cluster)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[cleangitcache]' {
    run grep -Fq 'ZPWR_VERBS[cleangitcache]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleangitdirtycache]' {
    run grep -Fq 'ZPWR_VERBS[cleangitdirtycache]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleancompcache]' {
    run grep -Fq 'ZPWR_VERBS[cleancompcache]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleanrefreshupdate]' {
    run grep -Fq 'ZPWR_VERBS[cleanrefreshupdate]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cleanupdatedeps]' {
    run grep -Fq 'ZPWR_VERBS[cleanupdatedeps]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch70 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_028.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_028.zsh"
    assert $state equals 0
}

@test 'wizard page_058.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_058.zsh"
    assert $state equals 0
}

@test 'wizard page_076.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_076.zsh"
    assert $state equals 0
}

@test 'wizard page_096.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_096.zsh"
    assert $state equals 0
}

@test 'wizard page_116.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_116.zsh"
    assert $state equals 0
}

@test 'wizard page_137.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_137.zsh"
    assert $state equals 0
}

@test 'wizard page_158.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_158.zsh"
    assert $state equals 0
}

@test 'wizard page_189.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_189.zsh"
    assert $state equals 0
}

@test 'wizard page_202.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_202.zsh"
    assert $state equals 0
}

@test 'wizard page_205.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_205.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrFzfSurround through zpwrGitConfig (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrFzfSurround passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfSurround"
    assert $state equals 0
}

@test 'autoload common zpwrFzfVimKeybind passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfVimKeybind"
    assert $state equals 0
}

@test 'autoload common zpwrFzfWordsearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfWordsearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfWordsearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrFzfZList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZList"
    assert $state equals 0
}

@test 'autoload common zpwrFzfZListVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZListVerb"
    assert $state equals 0
}

@test 'autoload common zpwrFzfZshKeybind passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZshKeybind"
    assert $state equals 0
}

@test 'autoload common zpwrFzvim passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzvim"
    assert $state equals 0
}

@test 'autoload common zpwrFzvimAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzvimAll"
    assert $state equals 0
}

@test 'autoload common zpwrFzvimScript passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzvimScript"
    assert $state equals 0
}

@test 'autoload common zpwrGetFound passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetFound"
    assert $state equals 0
}

@test 'autoload common zpwrGetGHDelURL passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetGHDelURL"
    assert $state equals 0
}

@test 'autoload common zpwrGetGtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetGtags"
    assert $state equals 0
}

@test 'autoload common zpwrGetGtagsEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetGtagsEdit"
    assert $state equals 0
}

@test 'autoload common zpwrGetLocate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetLocate"
    assert $state equals 0
}

@test 'autoload common zpwrGetrc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrc"
    assert $state equals 0
}

@test 'autoload common zpwrGetrcWidget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrcWidget"
    assert $state equals 0
}

@test 'autoload common zpwrGetrcdev passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrcdev"
    assert $state equals 0
}

@test 'autoload common zpwrGitCheckoutRebasePush passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitCheckoutRebasePush"
    assert $state equals 0
}

@test 'autoload common zpwrGitConfig passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitConfig"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch70 (fzf surround / fzvim / get* / git config cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrFzfSurround returns 0' {
    run zpwrExists zpwrFzfSurround
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfVimKeybind returns 0' {
    run zpwrExists zpwrFzfVimKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfWordsearchVerb returns 0' {
    run zpwrExists zpwrFzfWordsearchVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfZList returns 0' {
    run zpwrExists zpwrFzfZList
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfZshKeybind returns 0' {
    run zpwrExists zpwrFzfZshKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrFzvim returns 0' {
    run zpwrExists zpwrFzvim
    assert $state equals 0
}

@test 'zpwrExists zpwrGetFound returns 0' {
    run zpwrExists zpwrGetFound
    assert $state equals 0
}

@test 'zpwrExists zpwrGetGtags returns 0' {
    run zpwrExists zpwrGetGtags
    assert $state equals 0
}

@test 'zpwrExists zpwrGetLocate returns 0' {
    run zpwrExists zpwrGetLocate
    assert $state equals 0
}

@test 'zpwrExists zpwrGetrc returns 0' {
    run zpwrExists zpwrGetrc
    assert $state equals 0
}

@test 'zpwrExists zpwrGitConfig returns 0' {
    run zpwrExists zpwrGitConfig
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists env printenv returns 0' {
    run zpwrCommandExists env printenv
    assert $state equals 0
}

@test 'zpwrCommandExists readlink realpath returns 0' {
    run zpwrCommandExists readlink realpath
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
