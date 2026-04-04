#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (systemd/pi); wizard_pages; comps + zal* zsh -n; bind/list verbs
##### Notes: Conditional ZPWR_VERBS lines are still present in env/zpwr.zsh source for grep -Fq
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — conditional verb anchors (restart/pi blocks)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[restart]' {
    run grep -Fq 'ZPWR_VERBS[restart]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[serviceup]' {
    run grep -Fq 'ZPWR_VERBS[serviceup]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[servicedown]' {
    run grep -Fq 'ZPWR_VERBS[servicedown]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[pi]' {
    run grep -Fq 'ZPWR_VERBS[pi]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[ping]' {
    run grep -Fq 'ZPWR_VERBS[ping]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch60 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_018.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_018.zsh"
    assert $state equals 0
}

@test 'wizard page_048.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_048.zsh"
    assert $state equals 0
}

@test 'wizard page_066.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_066.zsh"
    assert $state equals 0
}

@test 'wizard page_086.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_086.zsh"
    assert $state equals 0
}

@test 'wizard page_106.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_106.zsh"
    assert $state equals 0
}

@test 'wizard page_127.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_127.zsh"
    assert $state equals 0
}

@test 'wizard page_148.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_148.zsh"
    assert $state equals 0
}

@test 'wizard page_179.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_179.zsh"
    assert $state equals 0
}

@test 'wizard page_192.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_192.zsh"
    assert $state equals 0
}

@test 'wizard page_201.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_201.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/comps — zsh -n (full set)
#--------------------------------------------------------------
@test 'autoload comps _c passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_c"
    assert $state equals 0
}

@test 'autoload comps _cl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_cl"
    assert $state equals 0
}

@test 'autoload comps _commandExists passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_commandExists"
    assert $state equals 0
}

@test 'autoload comps _dfimage passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_dfimage"
    assert $state equals 0
}

@test 'autoload comps _digs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_digs"
    assert $state equals 0
}

@test 'autoload comps _f passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_f"
    assert $state equals 0
}

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
# autoload/common — zal* zsh -n (first five alphabetically)
#--------------------------------------------------------------
@test 'autoload common zal passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zal"
    assert $state equals 0
}

@test 'autoload common zalc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zalc"
    assert $state equals 0
}

@test 'autoload common zald passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zald"
    assert $state equals 0
}

@test 'autoload common zalf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zalf"
    assert $state equals 0
}

@test 'autoload common zall passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zall"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch60 (list verbs / bind cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrListVerbs returns 0' {
    run zpwrExists zpwrListVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrListVerbsColor returns 0' {
    run zpwrExists zpwrListVerbsColor
    assert $state equals 0
}

@test 'zpwrExists zpwrNumVerbs returns 0' {
    run zpwrExists zpwrNumVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrListFiles returns 0' {
    run zpwrExists zpwrListFiles
    assert $state equals 0
}

@test 'zpwrExists zpwrBindVerbs returns 0' {
    run zpwrExists zpwrBindVerbs
    assert $state equals 0
}

@test 'zpwrExists zpwrBindAliasesLate returns 0' {
    run zpwrExists zpwrBindAliasesLate
    assert $state equals 0
}

@test 'zpwrExists zpwrBindDirs returns 0' {
    run zpwrExists zpwrBindDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrBindFZFLate returns 0' {
    run zpwrExists zpwrBindFZFLate
    assert $state equals 0
}

@test 'zpwrExists zpwrBindForGit returns 0' {
    run zpwrExists zpwrBindForGit
    assert $state equals 0
}

@test 'zpwrExists zpwrBindZstyle returns 0' {
    run zpwrExists zpwrBindZstyle
    assert $state equals 0
}

@test 'zpwrExists zpwrAcceptLine returns 0' {
    run zpwrExists zpwrAcceptLine
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists ln readlink returns 0' {
    run zpwrCommandExists ln readlink
    assert $state equals 0
}

@test 'zpwrCommandExists diff cmp returns 0' {
    run zpwrCommandExists diff cmp
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
