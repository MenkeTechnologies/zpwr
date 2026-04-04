#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrHistoryVerbAccept–zpwrLint autoload zsh -n
##### Notes: Continues batch39 after zpwrHistfile; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after live)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[trace]' {
    run grep -Fq 'ZPWR_VERBS[trace]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[instrument]' {
    run grep -Fq 'ZPWR_VERBS[instrument]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[toggle]' {
    run grep -Fq 'ZPWR_VERBS[toggle]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[travis]' {
    run grep -Fq 'ZPWR_VERBS[travis]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[travisbuild]' {
    run grep -Fq 'ZPWR_VERBS[travisbuild]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch40 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_011.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_011.zsh"
    assert $state equals 0
}

@test 'wizard page_019.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_019.zsh"
    assert $state equals 0
}

@test 'wizard page_032.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_032.zsh"
    assert $state equals 0
}

@test 'wizard page_056.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_056.zsh"
    assert $state equals 0
}

@test 'wizard page_071.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_071.zsh"
    assert $state equals 0
}

@test 'wizard page_104.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_104.zsh"
    assert $state equals 0
}

@test 'wizard page_122.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_122.zsh"
    assert $state equals 0
}

@test 'wizard page_148.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_148.zsh"
    assert $state equals 0
}

@test 'wizard page_178.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_178.zsh"
    assert $state equals 0
}

@test 'wizard page_193.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_193.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrHistoryVerbAccept through zpwrLint)
#--------------------------------------------------------------
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

@test 'autoload common zpwrKillPSVerbEdit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillPSVerbEdit"
    assert $state equals 0
}

@test 'autoload common zpwrKillRemote passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillRemote"
    assert $state equals 0
}

@test 'autoload common zpwrLargestGitFiles passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLargestGitFiles"
    assert $state equals 0
}

@test 'autoload common zpwrLastWordDouble passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLastWordDouble"
    assert $state equals 0
}

@test 'autoload common zpwrLineCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLineCount"
    assert $state equals 0
}

@test 'autoload common zpwrLinkConf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLinkConf"
    assert $state equals 0
}

@test 'autoload common zpwrLint passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrLint"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch40 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrHistoryVerbAccept returns 0' {
    run zpwrExists zpwrHistoryVerbAccept
    assert $state equals 0
}

@test 'zpwrExists zpwrIntoFzf returns 0' {
    run zpwrExists zpwrIntoFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrInterceptDelete returns 0' {
    run zpwrExists zpwrInterceptDelete
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

@test 'zpwrExists zpwrLargestGitFiles returns 0' {
    run zpwrExists zpwrLargestGitFiles
    assert $state equals 0
}

@test 'zpwrExists zpwrLineCount returns 0' {
    run zpwrExists zpwrLineCount
    assert $state equals 0
}

@test 'zpwrExists zpwrLinkConf returns 0' {
    run zpwrExists zpwrLinkConf
    assert $state equals 0
}

@test 'zpwrExists zpwrLint returns 0' {
    run zpwrExists zpwrLint
    assert $state equals 0
}

@test 'zpwrExists zpwrListVerbs returns 0' {
    run zpwrExists zpwrListVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrLoadJenv returns 0' {
    run zpwrExists zpwrLoadJenv
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists tar gzip returns 0' {
    run zpwrCommandExists tar gzip
    assert $state equals 0
}

@test 'zpwrCommandExists rsync ssh returns 0' {
    run zpwrCommandExists rsync ssh
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test '.zpwr_root marker exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'scripts lib.sh exists' {
    run test -f "$ZPWR/scripts/lib.sh"
    assert $state equals 0
}

@test 'license.md exists and is non-empty' {
    run test -s "$ZPWR/license.md"
    assert $state equals 0
}
