#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; darwin + linux tail + scripts/*.zsh zsh -n
##### Notes: Continues batch58 after search; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after search)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[torip]' {
    run grep -Fq 'ZPWR_VERBS[torip]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[toriprenew]' {
    run grep -Fq 'ZPWR_VERBS[toriprenew]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[updatepull]' {
    run grep -Fq 'ZPWR_VERBS[updatepull]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[wordsearch]' {
    run grep -Fq 'ZPWR_VERBS[wordsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[wordsearchedit]' {
    run grep -Fq 'ZPWR_VERBS[wordsearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch59 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_017.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_017.zsh"
    assert $state equals 0
}

@test 'wizard page_046.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_046.zsh"
    assert $state equals 0
}

@test 'wizard page_065.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_065.zsh"
    assert $state equals 0
}

@test 'wizard page_084.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_084.zsh"
    assert $state equals 0
}

@test 'wizard page_105.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_105.zsh"
    assert $state equals 0
}

@test 'wizard page_125.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_125.zsh"
    assert $state equals 0
}

@test 'wizard page_147.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_147.zsh"
    assert $state equals 0
}

@test 'wizard page_178.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_178.zsh"
    assert $state equals 0
}

@test 'wizard page_198.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_198.zsh"
    assert $state equals 0
}

@test 'wizard page_200.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_200.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/darwin — zsh -n (full set)
#--------------------------------------------------------------
@test 'autoload darwin db passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/db"
    assert $state equals 0
}

@test 'autoload darwin db2 passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/db2"
    assert $state equals 0
}

@test 'autoload darwin exe passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/exe"
    assert $state equals 0
}

@test 'autoload darwin nn passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/nn"
    assert $state equals 0
}

@test 'autoload darwin zpwrDarwinBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/zpwrDarwinBanner"
    assert $state equals 0
}

@test 'autoload darwin zpwrScriptToPDF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/zpwrScriptToPDF"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/linux — zsh -n (banner + plugins)
#--------------------------------------------------------------
@test 'autoload linux zpwrLinuxBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrLinuxBanner"
    assert $state equals 0
}

@test 'autoload linux zpwrLinuxPlugins passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrLinuxPlugins"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (all top-level *.zsh)
#--------------------------------------------------------------
@test 'scripts allPanes.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/allPanes.zsh"
    assert $state equals 0
}

@test 'scripts allPanesSwap.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/allPanesSwap.zsh"
    assert $state equals 0
}

@test 'scripts delete_dups.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/delete_dups.zsh"
    assert $state equals 0
}

@test 'scripts forDirZipRar.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/forDirZipRar.zsh"
    assert $state equals 0
}

@test 'scripts keybindingsToFZF.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/keybindingsToFZF.zsh"
    assert $state equals 0
}

@test 'scripts keybindingsToFZFVim.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/keybindingsToFZFVim.zsh"
    assert $state equals 0
}

@test 'scripts keybindingsToREADME.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/keybindingsToREADME.zsh"
    assert $state equals 0
}

@test 'scripts manzshcompgen.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/manzshcompgen.zsh"
    assert $state equals 0
}

@test 'scripts updaterPip.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/updaterPip.zsh"
    assert $state equals 0
}

@test 'scripts zpwrClearList.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/zpwrClearList.zsh"
    assert $state equals 0
}

@test 'scripts zshcompgen.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/zshcompgen.zsh"
    assert $state equals 0
}

@test 'scripts zshRegenSearchableEnv.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/zshRegenSearchableEnv.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch59 (torip / update / wordsearch verb cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrTorip returns 0' {
    run zpwrExists zpwrTorip
    assert $state equals 0
}

@test 'zpwrExists zpwrToriprenew returns 0' {
    run zpwrExists zpwrToriprenew
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdate returns 0' {
    run zpwrExists zpwrUpdate
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfWordsearchVerb returns 0' {
    run zpwrExists zpwrFzfWordsearchVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfWordsearchVerbEdit returns 0' {
    run zpwrExists zpwrFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'zpwrExists zpwrScnew returns 0' {
    run zpwrExists zpwrScnew
    assert $state equals 0
}

@test 'zpwrExists zpwrSearch returns 0' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrIntoFzf returns 0' {
    run zpwrExists zpwrIntoFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrGtagsIntoFzf returns 0' {
    run zpwrExists zpwrGtagsIntoFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrIntoFzfAg returns 0' {
    run zpwrExists zpwrIntoFzfAg
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfFilesearchVerb returns 0' {
    run zpwrExists zpwrFzfFilesearchVerb
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists curl git returns 0' {
    run zpwrCommandExists curl git
    assert $state equals 0
}

@test 'zpwrCommandExists xargs printf returns 0' {
    run zpwrCommandExists xargs printf
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
