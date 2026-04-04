#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrVimFzfWordsearchVerbEdit–zpz autoload zsh -n
##### Notes: Continues batch47 after zpwrVimFzfWordsearchVerb; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after vimgtags)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[vimgtagsedit]' {
    run grep -Fq 'ZPWR_VERBS[vimgtagsedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimfindsearch]' {
    run grep -Fq 'ZPWR_VERBS[vimfindsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimfindsearchedit]' {
    run grep -Fq 'ZPWR_VERBS[vimfindsearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimlocatesearch]' {
    run grep -Fq 'ZPWR_VERBS[vimlocatesearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimlocatesearchedit]' {
    run grep -Fq 'ZPWR_VERBS[vimlocatesearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch48 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_006.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_006.zsh"
    assert $state equals 0
}

@test 'wizard page_026.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_026.zsh"
    assert $state equals 0
}

@test 'wizard page_043.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_043.zsh"
    assert $state equals 0
}

@test 'wizard page_067.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_067.zsh"
    assert $state equals 0
}

@test 'wizard page_083.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_083.zsh"
    assert $state equals 0
}

@test 'wizard page_103.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_103.zsh"
    assert $state equals 0
}

@test 'wizard page_124.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_124.zsh"
    assert $state equals 0
}

@test 'wizard page_156.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_156.zsh"
    assert $state equals 0
}

@test 'wizard page_177.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_177.zsh"
    assert $state equals 0
}

@test 'wizard page_195.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_195.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrVimFzfWordsearchVerbEdit through zpz)
#--------------------------------------------------------------
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

@test 'autoload common zpwrZFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZFZF"
    assert $state equals 0
}

@test 'autoload common zpwrZinitUpdates passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZinitUpdates"
    assert $state equals 0
}

@test 'autoload common zpwrZshPluginCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZshPluginCount"
    assert $state equals 0
}

@test 'autoload common zpwrZshPluginList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZshPluginList"
    assert $state equals 0
}

@test 'autoload common zpwrZshrcSearch passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZshrcSearch"
    assert $state equals 0
}

@test 'autoload common zpwrZstyle passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrZstyle"
    assert $state equals 0
}

@test 'autoload common zpz passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpz"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch48 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrVimFzfWordsearchVerbEdit returns 0' {
    run zpwrExists zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrVimPluginCount returns 0' {
    run zpwrExists zpwrVimPluginCount
    assert $state equals 0
}

@test 'zpwrExists zpwrVimRecent returns 0' {
    run zpwrExists zpwrVimRecent
    assert $state equals 0
}

@test 'zpwrExists zpwrVimScripts returns 0' {
    run zpwrExists zpwrVimScripts
    assert $state equals 0
}

@test 'zpwrExists zpwrVimZpwrCtags returns 0' {
    run zpwrExists zpwrVimZpwrCtags
    assert $state equals 0
}

@test 'zpwrExists zpwrWatch returns 0' {
    run zpwrExists zpwrWatch
    assert $state equals 0
}

@test 'zpwrExists zpwrWizard returns 0' {
    run zpwrExists zpwrWizard
    assert $state equals 0
}

@test 'zpwrExists zpwrZcompdump returns 0' {
    run zpwrExists zpwrZcompdump
    assert $state equals 0
}

@test 'zpwrExists zpwrZFZF returns 0' {
    run zpwrExists zpwrZFZF
    assert $state equals 0
}

@test 'zpwrExists zpwrZinitUpdates returns 0' {
    run zpwrExists zpwrZinitUpdates
    assert $state equals 0
}

@test 'zpwrExists zpwrZstyle returns 0' {
    run zpwrExists zpwrZstyle
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists mkdir mktemp returns 0' {
    run zpwrCommandExists mkdir mktemp
    assert $state equals 0
}

@test 'zpwrCommandExists tar gzip returns 0' {
    run zpwrCommandExists tar gzip
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
