#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (emacsfilesearch..emacsgtags); wizard_pages; comps tail + darwin/linux zsh -n; ztl/ztm/zua + platform zpwrExists
##### Notes: Continues batch80; autoload/common is exhausted at zua — batch81 uses remaining comps (9) + darwin (6) + linux (5) for 20 syntax checks; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (emacs fzf + gtags)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[emacsfilesearch]' {
    run grep -Fq 'ZPWR_VERBS[emacsfilesearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsfilesearchedit]' {
    run grep -Fq 'ZPWR_VERBS[emacsfilesearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsfindsearch]' {
    run grep -Fq 'ZPWR_VERBS[emacsfindsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsfindsearchedit]' {
    run grep -Fq 'ZPWR_VERBS[emacsfindsearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsgtags]' {
    run grep -Fq 'ZPWR_VERBS[emacsgtags]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch81 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_020.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_020.zsh"
    assert $state equals 0
}

@test 'wizard page_030.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_030.zsh"
    assert $state equals 0
}

@test 'wizard page_040.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_040.zsh"
    assert $state equals 0
}

@test 'wizard page_050.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_050.zsh"
    assert $state equals 0
}

@test 'wizard page_060.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_060.zsh"
    assert $state equals 0
}

@test 'wizard page_070.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_070.zsh"
    assert $state equals 0
}

@test 'wizard page_080.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_080.zsh"
    assert $state equals 0
}

@test 'wizard page_090.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_090.zsh"
    assert $state equals 0
}

@test 'wizard page_100.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_100.zsh"
    assert $state equals 0
}

@test 'wizard page_110.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_110.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/comps — _p through _zpwrPrintMap (zsh -n)
#--------------------------------------------------------------
@test 'autoload comps _p passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_p"
    assert $state equals 0
}

@test 'autoload comps _r passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_r"
    assert $state equals 0
}

@test 'autoload comps _ssd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_ssd"
    assert $state equals 0
}

@test 'autoload comps _ssu passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_ssu"
    assert $state equals 0
}

@test 'autoload comps _zcommand passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zcommand"
    assert $state equals 0
}

@test 'autoload comps _zcommand_mult passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zcommand_mult"
    assert $state equals 0
}

@test 'autoload comps _zpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test 'autoload comps _zpwrExists passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwrExists"
    assert $state equals 0
}

@test 'autoload comps _zpwrPrintMap passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwrPrintMap"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/darwin — sorted (zsh -n)
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
# autoload/linux — sorted (zsh -n)
#--------------------------------------------------------------
@test 'autoload linux scriptToPDF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/scriptToPDF"
    assert $state equals 0
}

@test 'autoload linux tailufw passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/tailufw"
    assert $state equals 0
}

@test 'autoload linux zpwrAttachSetup passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrAttachSetup"
    assert $state equals 0
}

@test 'autoload linux zpwrLinuxBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrLinuxBanner"
    assert $state equals 0
}

@test 'autoload linux zpwrLinuxPlugins passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrLinuxPlugins"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch81 (common tail + darwin/linux autoloads)
#--------------------------------------------------------------
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

@test 'zpwrExists zpwrLinuxBanner returns 0' {
    run zpwrExists zpwrLinuxBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrLinuxPlugins returns 0' {
    run zpwrExists zpwrLinuxPlugins
    assert $state equals 0
}

@test 'zpwrExists db returns 0' {
    run zpwrExists db
    assert $state equals 0
}

@test 'zpwrExists db2 returns 0' {
    run zpwrExists db2
    assert $state equals 0
}

@test 'zpwrExists exe returns 0' {
    run zpwrExists exe
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
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
