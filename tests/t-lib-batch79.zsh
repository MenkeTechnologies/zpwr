#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (emacspluginlist..emacsrecentsudocd); wizard_pages; zpwrVimEmacsConfig..zpwrZcompdump zsh -n; vim-fzf/wizard zpwrExists
##### Notes: Continues batch78; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (emacs recent family)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[emacspluginlist]' {
    run grep -Fq 'ZPWR_VERBS[emacspluginlist]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsrecent]' {
    run grep -Fq 'ZPWR_VERBS[emacsrecent]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsrecentsudo]' {
    run grep -Fq 'ZPWR_VERBS[emacsrecentsudo]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsrecentcd]' {
    run grep -Fq 'ZPWR_VERBS[emacsrecentcd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsrecentsudocd]' {
    run grep -Fq 'ZPWR_VERBS[emacsrecentsudocd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch79 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_014.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_014.zsh"
    assert $state equals 0
}

@test 'wizard page_024.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_024.zsh"
    assert $state equals 0
}

@test 'wizard page_034.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_034.zsh"
    assert $state equals 0
}

@test 'wizard page_044.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_044.zsh"
    assert $state equals 0
}

@test 'wizard page_054.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_054.zsh"
    assert $state equals 0
}

@test 'wizard page_064.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_064.zsh"
    assert $state equals 0
}

@test 'wizard page_074.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_074.zsh"
    assert $state equals 0
}

@test 'wizard page_084.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_084.zsh"
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

#--------------------------------------------------------------
# autoload/common — zpwrVimEmacsConfig through zpwrZcompdump (zsh -n)
#--------------------------------------------------------------
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

@test 'autoload common zpwrVimFzfWordsearchVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrVimPluginCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimPluginCount"
    assert $state equals 0
}

@test 'autoload common zpwrVimPluginList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimPluginList"
    assert $state equals 0
}

@test 'autoload common zpwrVimRecent passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimRecent"
    assert $state equals 0
}

@test 'autoload common zpwrVimRecentCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimRecentCd"
    assert $state equals 0
}

@test 'autoload common zpwrVimScriptEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimScriptEdit"
    assert $state equals 0
}

@test 'autoload common zpwrVimScripts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimScripts"
    assert $state equals 0
}

@test 'autoload common zpwrVimZpwrCtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimZpwrCtags"
    assert $state equals 0
}

@test 'autoload common zpwrVimZpwrGtags passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimZpwrGtags"
    assert $state equals 0
}

@test 'autoload common zpwrVimZpwrGtagsEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimZpwrGtagsEdit"
    assert $state equals 0
}

@test 'autoload common zpwrWatch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrWatch"
    assert $state equals 0
}

@test 'autoload common zpwrWizard passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrWizard"
    assert $state equals 0
}

@test 'autoload common zpwrZcompdump passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZcompdump"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch79 (vim fzf / scripts / watch / wizard cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrVimEmacsConfig returns 0' {
    run zpwrExists zpwrVimEmacsConfig
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzf returns 0' {
    run zpwrExists zpwrVimFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzfFilesearchVerb returns 0' {
    run zpwrExists zpwrVimFzfFilesearchVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzfFilesearchVerbEdit returns 0' {
    run zpwrExists zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzfFilesearchWidgetAccept returns 0' {
    run zpwrExists zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzfSudo returns 0' {
    run zpwrExists zpwrVimFzfSudo
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzfWordsearchVerb returns 0' {
    run zpwrExists zpwrVimFzfWordsearchVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrVimFzfWordsearchVerbEdit returns 0' {
    run zpwrExists zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrVimPluginCount returns 0' {
    run zpwrExists zpwrVimPluginCount
    assert $state equals 0
}

@test 'zpwrExists zpwrVimPluginList returns 0' {
    run zpwrExists zpwrVimPluginList
    assert $state equals 0
}

@test 'zpwrExists zpwrVimRecent returns 0' {
    run zpwrExists zpwrVimRecent
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists env printf returns 0' {
    run zpwrCommandExists env printf
    assert $state equals 0
}

@test 'zpwrCommandExists id groups returns 0' {
    run zpwrCommandExists id groups
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
