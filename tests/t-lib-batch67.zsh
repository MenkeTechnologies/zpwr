#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (forward/fwd/f/cdup/r); wizard_pages; zpwrEmacsAutoload..zpwrEnvVarsAll zsh -n; emacs/env zpwrExists
##### Notes: Continues batch66; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (cd aliases + cdup)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[forward]' {
    run grep -Fq 'ZPWR_VERBS[forward]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[fwd]' {
    run grep -Fq 'ZPWR_VERBS[fwd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[f]' {
    run grep -Fq 'ZPWR_VERBS[f]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cdup]' {
    run grep -Fq 'ZPWR_VERBS[cdup]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[r]' {
    run grep -Fq 'ZPWR_VERBS[r]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch67 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_025.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_025.zsh"
    assert $state equals 0
}

@test 'wizard page_055.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_055.zsh"
    assert $state equals 0
}

@test 'wizard page_073.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_073.zsh"
    assert $state equals 0
}

@test 'wizard page_093.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_093.zsh"
    assert $state equals 0
}

@test 'wizard page_113.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_113.zsh"
    assert $state equals 0
}

@test 'wizard page_134.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_134.zsh"
    assert $state equals 0
}

@test 'wizard page_155.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_155.zsh"
    assert $state equals 0
}

@test 'wizard page_186.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_186.zsh"
    assert $state equals 0
}

@test 'wizard page_199.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_199.zsh"
    assert $state equals 0
}

@test 'wizard page_208.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_208.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrEmacsAutoload through zpwrEnvVarsAll (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrEmacsAutoload passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAutoload"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsEmacsConfig passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsEmacsConfig"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzf"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfFilesearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfFilesearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfWordsearchVerb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerb"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsFzfWordsearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsPluginCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsPluginCount"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsPluginList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsPluginList"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsRecent passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsRecent"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsRecentCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsRecentCd"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsScriptEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsScriptEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsScripts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsScripts"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsZpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwr"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsZpwrCtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwrCtags"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsZpwrGtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwrGtags"
    assert $state equals 0
}

@test 'autoload common zpwrEmacsZpwrGtagsEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwrGtagsEdit"
    assert $state equals 0
}

@test 'autoload common zpwrEnvCounts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvCounts"
    assert $state equals 0
}

@test 'autoload common zpwrEnvVars passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvVars"
    assert $state equals 0
}

@test 'autoload common zpwrEnvVarsAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvVarsAll"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch67 (emacs + env cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrEmacsAutoload returns 0' {
    run zpwrExists zpwrEmacsAutoload
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsEmacsConfig returns 0' {
    run zpwrExists zpwrEmacsEmacsConfig
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsFzf returns 0' {
    run zpwrExists zpwrEmacsFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsPluginCount returns 0' {
    run zpwrExists zpwrEmacsPluginCount
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsPluginList returns 0' {
    run zpwrExists zpwrEmacsPluginList
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsRecent returns 0' {
    run zpwrExists zpwrEmacsRecent
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsScripts returns 0' {
    run zpwrExists zpwrEmacsScripts
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsZpwr returns 0' {
    run zpwrExists zpwrEmacsZpwr
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsZpwrGtags returns 0' {
    run zpwrExists zpwrEmacsZpwrGtags
    assert $state equals 0
}

@test 'zpwrExists zpwrEnvCounts returns 0' {
    run zpwrExists zpwrEnvCounts
    assert $state equals 0
}

@test 'zpwrExists zpwrEnvVars returns 0' {
    run zpwrExists zpwrEnvVars
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists strings file returns 0' {
    run zpwrCommandExists strings file
    assert $state equals 0
}

@test 'zpwrCommandExists od wc returns 0' {
    run zpwrCommandExists od wc
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
