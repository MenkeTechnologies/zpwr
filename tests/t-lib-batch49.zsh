#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zr–zua + scripts/*.zsh zsh -n
##### Notes: Continues batch48 after zpz (tail of common); env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after vimlocatesearchedit)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[vimwordsearch]' {
    run grep -Fq 'ZPWR_VERBS[vimwordsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimwordsearchedit]' {
    run grep -Fq 'ZPWR_VERBS[vimwordsearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimfilesearch]' {
    run grep -Fq 'ZPWR_VERBS[vimfilesearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimfilesearchedit]' {
    run grep -Fq 'ZPWR_VERBS[vimfilesearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[vimplugincount]' {
    run grep -Fq 'ZPWR_VERBS[vimplugincount]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch49 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_007.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_007.zsh"
    assert $state equals 0
}

@test 'wizard page_029.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_029.zsh"
    assert $state equals 0
}

@test 'wizard page_045.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_045.zsh"
    assert $state equals 0
}

@test 'wizard page_068.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_068.zsh"
    assert $state equals 0
}

@test 'wizard page_085.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_085.zsh"
    assert $state equals 0
}

@test 'wizard page_108.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_108.zsh"
    assert $state equals 0
}

@test 'wizard page_126.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_126.zsh"
    assert $state equals 0
}

@test 'wizard page_159.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_159.zsh"
    assert $state equals 0
}

@test 'wizard page_179.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_179.zsh"
    assert $state equals 0
}

@test 'wizard page_199.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_199.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zr–zua, tail of common after zpz)
#--------------------------------------------------------------
@test 'autoload common zr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zr"
    assert $state equals 0
}

@test 'autoload common zs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zs"
    assert $state equals 0
}

@test 'autoload common zsm passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zsm"
    assert $state equals 0
}

@test 'autoload common zt passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zt"
    assert $state equals 0
}

@test 'autoload common ztl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ztl"
    assert $state equals 0
}

@test 'autoload common ztm passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ztm"
    assert $state equals 0
}

@test 'autoload common zua passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zua"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (top-level *.zsh + macOnly mountInstall)
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

@test 'scripts macOnly mountInstall.zsh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/macOnly/mountInstall.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch49 (short-name autoloads)
#--------------------------------------------------------------
@test 'zpwrExists zr returns 0' {
    run zpwrExists zr
    assert $state equals 0
}

@test 'zpwrExists zs returns 0' {
    run zpwrExists zs
    assert $state equals 0
}

@test 'zpwrExists zsm returns 0' {
    run zpwrExists zsm
    assert $state equals 0
}

@test 'zpwrExists zt returns 0' {
    run zpwrExists zt
    assert $state equals 0
}

@test 'zpwrExists ztl returns 0' {
    run zpwrExists ztl
    assert $state equals 0
}

@test 'zpwrExists ztm returns 0' {
    run zpwrExists ztm
    assert $state equals 0
}

@test 'zpwrExists zua returns 0' {
    run zpwrExists zua
    assert $state equals 0
}

@test 'zpwrExists zpwrLinuxBanner returns 0' {
    run zpwrExists zpwrLinuxBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrDarwinBanner returns 0' {
    run zpwrExists zpwrDarwinBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrScriptToPDF returns 0' {
    run zpwrExists zpwrScriptToPDF
    assert $state equals 0
}

@test 'zpwrExists zpwrAttachSetup returns 0' {
    run zpwrExists zpwrAttachSetup
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists ssh scp returns 0' {
    run zpwrCommandExists ssh scp
    assert $state equals 0
}

@test 'zpwrCommandExists rsync ssh returns 0' {
    run zpwrCommandExists rsync ssh
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
