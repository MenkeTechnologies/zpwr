#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrMycurl–zpwrPreexec autoload zsh -n
##### Notes: Continues batch41 after zpwrModulesFZF; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after uninstall)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[uncompile]' {
    run grep -Fq 'ZPWR_VERBS[uncompile]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[update]' {
    run grep -Fq 'ZPWR_VERBS[update]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[updateall]' {
    run grep -Fq 'ZPWR_VERBS[updateall]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[updatedeps]' {
    run grep -Fq 'ZPWR_VERBS[updatedeps]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[updatedepsclean]' {
    run grep -Fq 'ZPWR_VERBS[updatedepsclean]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch42 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_013.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_013.zsh"
    assert $state equals 0
}

@test 'wizard page_023.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_023.zsh"
    assert $state equals 0
}

@test 'wizard page_038.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_038.zsh"
    assert $state equals 0
}

@test 'wizard page_061.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_061.zsh"
    assert $state equals 0
}

@test 'wizard page_079.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_079.zsh"
    assert $state equals 0
}

@test 'wizard page_105.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_105.zsh"
    assert $state equals 0
}

@test 'wizard page_127.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_127.zsh"
    assert $state equals 0
}

@test 'wizard page_150.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_150.zsh"
    assert $state equals 0
}

@test 'wizard page_182.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_182.zsh"
    assert $state equals 0
}

@test 'wizard page_198.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_198.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrMycurl through zpwrPreexec)
#--------------------------------------------------------------
@test 'autoload common zpwrMycurl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrMycurl"
    assert $state equals 0
}

@test 'autoload common zpwrNoPonyBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrNoPonyBanner"
    assert $state equals 0
}

@test 'autoload common zpwrNumVerbs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrNumVerbs"
    assert $state equals 0
}

@test 'autoload common zpwrNvimThenRecentf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrNvimThenRecentf"
    assert $state equals 0
}

@test 'autoload common zpwrOmzOverrides passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOmzOverrides"
    assert $state equals 0
}

@test 'autoload common zpwrOpen passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpen"
    assert $state equals 0
}

@test 'autoload common zpwrOpenExercism passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpenExercism"
    assert $state equals 0
}

@test 'autoload common zpwrOpenmygh passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpenmygh"
    assert $state equals 0
}

@test 'autoload common zpwrOptionsFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOptionsFZF"
    assert $state equals 0
}

@test 'autoload common zpwrOverridePromptDir passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrOverridePromptDir"
    assert $state equals 0
}

@test 'autoload common zpwrParseRecentf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrParseRecentf"
    assert $state equals 0
}

@test 'autoload common zpwrPasteToBuffer passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPasteToBuffer"
    assert $state equals 0
}

@test 'autoload common zpwrPasteToStdout passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPasteToStdout"
    assert $state equals 0
}

@test 'autoload common zpwrPathaudit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPathaudit"
    assert $state equals 0
}

@test 'autoload common zpwrPirun passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPirun"
    assert $state equals 0
}

@test 'autoload common zpwrPoll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPoll"
    assert $state equals 0
}

@test 'autoload common zpwrPonyBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPonyBanner"
    assert $state equals 0
}

@test 'autoload common zpwrPorts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPorts"
    assert $state equals 0
}

@test 'autoload common zpwrPrecmd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPrecmd"
    assert $state equals 0
}

@test 'autoload common zpwrPreexec passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrPreexec"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch42 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrMycurl returns 0' {
    run zpwrExists zpwrMycurl
    assert $state equals 0
}

@test 'zpwrExists zpwrNumVerbs returns 0' {
    run zpwrExists zpwrNumVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrOpen returns 0' {
    run zpwrExists zpwrOpen
    assert $state equals 0
}

@test 'zpwrExists zpwrOpenmygh returns 0' {
    run zpwrExists zpwrOpenmygh
    assert $state equals 0
}

@test 'zpwrExists zpwrOptionsFZF returns 0' {
    run zpwrExists zpwrOptionsFZF
    assert $state equals 0
}

@test 'zpwrExists zpwrPathaudit returns 0' {
    run zpwrExists zpwrPathaudit
    assert $state equals 0
}

@test 'zpwrExists zpwrPoll returns 0' {
    run zpwrExists zpwrPoll
    assert $state equals 0
}

@test 'zpwrExists zpwrPorts returns 0' {
    run zpwrExists zpwrPorts
    assert $state equals 0
}

@test 'zpwrExists zpwrPasteToBuffer returns 0' {
    run zpwrExists zpwrPasteToBuffer
    assert $state equals 0
}

@test 'zpwrExists zpwrPasteToStdout returns 0' {
    run zpwrExists zpwrPasteToStdout
    assert $state equals 0
}

@test 'zpwrExists zpwrPrintMap returns 0' {
    run zpwrExists zpwrPrintMap
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists wc od returns 0' {
    run zpwrCommandExists wc od
    assert $state equals 0
}

@test 'zpwrCommandExists bash sh returns 0' {
    run zpwrCommandExists bash sh
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'DESCRIPTION.md exists' {
    run test -f "$ZPWR/DESCRIPTION.md"
    assert $state equals 0
}

@test 'docs README.md exists' {
    run test -f "$ZPWR/docs/README.md"
    assert $state equals 0
}

@test 'gitignore exists' {
    run test -f "$ZPWR/.gitignore"
    assert $state equals 0
}
