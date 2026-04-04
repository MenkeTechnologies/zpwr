#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrEmacsRecent–zpwrExpandOrCompleteWithDots autoload zsh -n
##### Notes: Continues batch35 after zpwrEmacsPluginList; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after subcommands)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[subcommandsedit]' {
    run grep -Fq 'ZPWR_VERBS[subcommandsedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[subcommandsfzf]' {
    run grep -Fq 'ZPWR_VERBS[subcommandsfzf]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[subcommandslist]' {
    run grep -Fq 'ZPWR_VERBS[subcommandslist]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[help]' {
    run grep -Fq 'ZPWR_VERBS[help]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[subcommandscount]' {
    run grep -Fq 'ZPWR_VERBS[subcommandscount]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch36 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_007.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_007.zsh"
    assert $state equals 0
}

@test 'wizard page_014.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_014.zsh"
    assert $state equals 0
}

@test 'wizard page_024.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_024.zsh"
    assert $state equals 0
}

@test 'wizard page_048.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_048.zsh"
    assert $state equals 0
}

@test 'wizard page_058.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_058.zsh"
    assert $state equals 0
}

@test 'wizard page_095.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_095.zsh"
    assert $state equals 0
}

@test 'wizard page_110.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_110.zsh"
    assert $state equals 0
}

@test 'wizard page_138.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_138.zsh"
    assert $state equals 0
}

@test 'wizard page_165.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_165.zsh"
    assert $state equals 0
}

@test 'wizard page_190.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_190.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrEmacsRecent through zpwrExpandOrCompleteWithDots)
#--------------------------------------------------------------
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

@test 'autoload common zpwrEOLorNextTabStop passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrEOLorNextTabStop"
    assert $state equals 0
}

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

#--------------------------------------------------------------
# zpwrExists — batch36 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrEmacsRecent returns 0' {
    run zpwrExists zpwrEmacsRecent
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsZpwr returns 0' {
    run zpwrExists zpwrEmacsZpwr
    assert $state equals 0
}

@test 'zpwrExists zpwrEmacsZpwrCtags returns 0' {
    run zpwrExists zpwrEmacsZpwrCtags
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

@test 'zpwrExists zpwrEnvVarsAll returns 0' {
    run zpwrExists zpwrEnvVarsAll
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

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists paste tr returns 0' {
    run zpwrCommandExists paste tr
    assert $state equals 0
}

@test 'zpwrCommandExists comm join returns 0' {
    run zpwrCommandExists comm join
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'license.md exists and is non-empty' {
    run test -s "$ZPWR/license.md"
    assert $state equals 0
}

@test 'DESCRIPTION.md exists' {
    run test -f "$ZPWR/DESCRIPTION.md"
    assert $state equals 0
}

@test '.gitignore exists' {
    run test -f "$ZPWR/.gitignore"
    assert $state equals 0
}
