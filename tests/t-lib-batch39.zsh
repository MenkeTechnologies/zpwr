#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrFzvimAll–zpwrHistfile autoload zsh -n
##### Notes: Continues batch38 after zpwrFzvim; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after timer)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[to]' {
    run grep -Fq 'ZPWR_VERBS[to]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[tokens]' {
    run grep -Fq 'ZPWR_VERBS[tokens]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[top]' {
    run grep -Fq 'ZPWR_VERBS[top]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[dashboard]' {
    run grep -Fq 'ZPWR_VERBS[dashboard]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[live]' {
    run grep -Fq 'ZPWR_VERBS[live]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch39 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_010.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_010.zsh"
    assert $state equals 0
}

@test 'wizard page_017.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_017.zsh"
    assert $state equals 0
}

@test 'wizard page_030.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_030.zsh"
    assert $state equals 0
}

@test 'wizard page_052.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_052.zsh"
    assert $state equals 0
}

@test 'wizard page_066.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_066.zsh"
    assert $state equals 0
}

@test 'wizard page_100.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_100.zsh"
    assert $state equals 0
}

@test 'wizard page_120.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_120.zsh"
    assert $state equals 0
}

@test 'wizard page_140.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_140.zsh"
    assert $state equals 0
}

@test 'wizard page_175.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_175.zsh"
    assert $state equals 0
}

@test 'wizard page_196.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_196.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrFzvimAll through zpwrHistfile)
#--------------------------------------------------------------
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

@test 'autoload common zpwrGetrcdev passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrcdev"
    assert $state equals 0
}

@test 'autoload common zpwrGetrcWidget passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrcWidget"
    assert $state equals 0
}

@test 'autoload common zpwrgh passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrgh"
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

#--------------------------------------------------------------
# zpwrExists — batch39 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrFzvimAll returns 0' {
    run zpwrExists zpwrFzvimAll
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

@test 'zpwrExists zpwrGetrc returns 0' {
    run zpwrExists zpwrGetrc
    assert $state equals 0
}

@test 'zpwrExists zpwrgh returns 0' {
    run zpwrExists zpwrgh
    assert $state equals 0
}

@test 'zpwrExists zpwrGitConfig returns 0' {
    run zpwrExists zpwrGitConfig
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

@test 'zpwrExists zpwrGoclean returns 0' {
    run zpwrExists zpwrGoclean
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists python3 perl returns 0' {
    run zpwrCommandExists python3 perl
    assert $state equals 0
}

@test 'zpwrCommandExists vim git returns 0' {
    run zpwrCommandExists vim git
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'tests test_lib.zsh exists' {
    run test -f "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'ci workflow file exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'DESCRIPTION.md exists' {
    run test -f "$ZPWR/DESCRIPTION.md"
    assert $state equals 0
}
