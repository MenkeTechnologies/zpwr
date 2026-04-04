#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (emacsgtagsedit..emacswordsearchedit); wizard_pages; scripts/*.zsh + install/*.sh zsh -n; platform tail + env/search zpwrExists
##### Notes: Continues batch81; 20 syntax checks = all 12 top-level scripts/*.zsh + first 8 sorted install/*.sh; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (emacs locate/word search)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[emacsgtagsedit]' {
    run grep -Fq 'ZPWR_VERBS[emacsgtagsedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacslocatesearch]' {
    run grep -Fq 'ZPWR_VERBS[emacslocatesearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacslocatesearchedit]' {
    run grep -Fq 'ZPWR_VERBS[emacslocatesearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacswordsearch]' {
    run grep -Fq 'ZPWR_VERBS[emacswordsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacswordsearchedit]' {
    run grep -Fq 'ZPWR_VERBS[emacswordsearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch82 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_005.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_005.zsh"
    assert $state equals 0
}

@test 'wizard page_015.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_015.zsh"
    assert $state equals 0
}

@test 'wizard page_025.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_025.zsh"
    assert $state equals 0
}

@test 'wizard page_035.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_035.zsh"
    assert $state equals 0
}

@test 'wizard page_045.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_045.zsh"
    assert $state equals 0
}

@test 'wizard page_055.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_055.zsh"
    assert $state equals 0
}

@test 'wizard page_065.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_065.zsh"
    assert $state equals 0
}

@test 'wizard page_075.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_075.zsh"
    assert $state equals 0
}

@test 'wizard page_085.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_085.zsh"
    assert $state equals 0
}

@test 'wizard page_095.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_095.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — all top-level *.zsh (zsh -n)
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
# install — first eight sorted *.sh (zsh -n)
#--------------------------------------------------------------
@test 'install casks.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/casks.sh"
    assert $state equals 0
}

@test 'install common.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/common.sh"
    assert $state equals 0
}

@test 'install formulae.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/formulae.sh"
    assert $state equals 0
}

@test 'install gems.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/gems.sh"
    assert $state equals 0
}

@test 'install go_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/go_install.sh"
    assert $state equals 0
}

@test 'install mincasks.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/mincasks.sh"
    assert $state equals 0
}

@test 'install neovim_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/neovim_install.sh"
    assert $state equals 0
}

@test 'install npm_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/npm_install.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch82 (darwin/linux tail + env/search cluster)
#--------------------------------------------------------------
@test 'zpwrExists nn returns 0' {
    run zpwrExists nn
    assert $state equals 0
}

@test 'zpwrExists scriptToPDF returns 0' {
    run zpwrExists scriptToPDF
    assert $state equals 0
}

@test 'zpwrExists tailufw returns 0' {
    run zpwrExists tailufw
    assert $state equals 0
}

@test 'zpwrExists zpwrEnvVars returns 0' {
    run zpwrExists zpwrEnvVars
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfEnv returns 0' {
    run zpwrExists zpwrFzfEnv
    assert $state equals 0
}

@test 'zpwrExists zpwrExecGlob returns 0' {
    run zpwrExists zpwrExecGlob
    assert $state equals 0
}

@test 'zpwrExists zpwrGoogle returns 0' {
    run zpwrExists zpwrGoogle
    assert $state equals 0
}

@test 'zpwrExists zpwrSearch returns 0' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrReplacer returns 0' {
    run zpwrExists zpwrReplacer
    assert $state equals 0
}

@test 'zpwrExists zpwrDoctor returns 0' {
    run zpwrExists zpwrDoctor
    assert $state equals 0
}

@test 'zpwrExists zpwrDeps returns 0' {
    run zpwrExists zpwrDeps
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists bash sh returns 0' {
    run zpwrCommandExists bash sh
    assert $state equals 0
}

@test 'zpwrCommandExists ln readlink returns 0' {
    run zpwrCommandExists ln readlink
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
