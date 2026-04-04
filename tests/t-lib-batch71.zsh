#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (cleantemp/clearls/clearlist/clone/colortest); wizard_pages; zpwrGitIgnores..zpwrKillPSVerbAccept zsh -n; git/google/into-fzf/kill zpwrExists
##### Notes: Continues batch70; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (clear + clone + colortest)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[cleantemp]' {
    run grep -Fq 'ZPWR_VERBS[cleantemp]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[clearls]' {
    run grep -Fq 'ZPWR_VERBS[clearls]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[clearlist]' {
    run grep -Fq 'ZPWR_VERBS[clearlist]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[clone]' {
    run grep -Fq 'ZPWR_VERBS[clone]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[colortest]' {
    run grep -Fq 'ZPWR_VERBS[colortest]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch71 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_029.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_029.zsh"
    assert $state equals 0
}

@test 'wizard page_059.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_059.zsh"
    assert $state equals 0
}

@test 'wizard page_077.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_077.zsh"
    assert $state equals 0
}

@test 'wizard page_097.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_097.zsh"
    assert $state equals 0
}

@test 'wizard page_117.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_117.zsh"
    assert $state equals 0
}

@test 'wizard page_138.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_138.zsh"
    assert $state equals 0
}

@test 'wizard page_159.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_159.zsh"
    assert $state equals 0
}

@test 'wizard page_190.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_190.zsh"
    assert $state equals 0
}

@test 'wizard page_203.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_203.zsh"
    assert $state equals 0
}

@test 'wizard page_204.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_204.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrGitIgnores through zpwrKillPSVerbAccept (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrGitIgnores passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitIgnores"
    assert $state equals 0
}

@test 'autoload common zpwrGitReposFile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitReposFile"
    assert $state equals 0
}

@test 'autoload common zpwrGitwho passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitwho"
    assert $state equals 0
}

@test 'autoload common zpwrGoclean passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGoclean"
    assert $state equals 0
}

@test 'autoload common zpwrGoogle passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGoogle"
    assert $state equals 0
}

@test 'autoload common zpwrGtagsIntoFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGtagsIntoFzf"
    assert $state equals 0
}

@test 'autoload common zpwrHistfile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistfile"
    assert $state equals 0
}

@test 'autoload common zpwrHistoryVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistoryVerbAccept"
    assert $state equals 0
}

@test 'autoload common zpwrHistoryVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistoryVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrInterceptDelete passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrInterceptDelete"
    assert $state equals 0
}

@test 'autoload common zpwrInterceptSurround passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrInterceptSurround"
    assert $state equals 0
}

@test 'autoload common zpwrIntoFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrIntoFzf"
    assert $state equals 0
}

@test 'autoload common zpwrIntoFzfAg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrIntoFzfAg"
    assert $state equals 0
}

@test 'autoload common zpwrJetbrainsWorkspaceEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrJetbrainsWorkspaceEdit"
    assert $state equals 0
}

@test 'autoload common zpwrJsonToArray passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrJsonToArray"
    assert $state equals 0
}

@test 'autoload common zpwrKeyClear passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKeyClear"
    assert $state equals 0
}

@test 'autoload common zpwrKeySender passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKeySender"
    assert $state equals 0
}

@test 'autoload common zpwrKillLsofVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillLsofVerbAccept"
    assert $state equals 0
}

@test 'autoload common zpwrKillLsofVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillLsofVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrKillPSVerbAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillPSVerbAccept"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch71 (git / google / gtags / into-fzf / kill cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrGitIgnores returns 0' {
    run zpwrExists zpwrGitIgnores
    assert $state equals 0
}

@test 'zpwrExists zpwrGitwho returns 0' {
    run zpwrExists zpwrGitwho
    assert $state equals 0
}

@test 'zpwrExists zpwrGoogle returns 0' {
    run zpwrExists zpwrGoogle
    assert $state equals 0
}

@test 'zpwrExists zpwrGtagsIntoFzf returns 0' {
    run zpwrExists zpwrGtagsIntoFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrHistfile returns 0' {
    run zpwrExists zpwrHistfile
    assert $state equals 0
}

@test 'zpwrExists zpwrIntoFzf returns 0' {
    run zpwrExists zpwrIntoFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrIntoFzfAg returns 0' {
    run zpwrExists zpwrIntoFzfAg
    assert $state equals 0
}

@test 'zpwrExists zpwrJsonToArray returns 0' {
    run zpwrExists zpwrJsonToArray
    assert $state equals 0
}

@test 'zpwrExists zpwrKeyClear returns 0' {
    run zpwrExists zpwrKeyClear
    assert $state equals 0
}

@test 'zpwrExists zpwrKillLsofVerbAccept returns 0' {
    run zpwrExists zpwrKillLsofVerbAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrKillPSVerbAccept returns 0' {
    run zpwrExists zpwrKillPSVerbAccept
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists perl python3 returns 0' {
    run zpwrCommandExists perl python3
    assert $state equals 0
}

@test 'zpwrCommandExists ssh scp returns 0' {
    run zpwrCommandExists ssh scp
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
