#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (emacszpwr..emacsctags); wizard_pages; zpwrZFZF..zua zsh -n; comps _c.._f zsh -n; zf/zsh tail zpwrExists
##### Notes: Continues batch79; tail of autoload/common is 14 files — padded to 20 with first 6 sorted comps; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (emacs zpwr + ctags)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[emacszpwr]' {
    run grep -Fq 'ZPWR_VERBS[emacszpwr]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsemacsconfig]' {
    run grep -Fq 'ZPWR_VERBS[emacsemacsconfig]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsscripts]' {
    run grep -Fq 'ZPWR_VERBS[emacsscripts]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsscriptedit]' {
    run grep -Fq 'ZPWR_VERBS[emacsscriptedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[emacsctags]' {
    run grep -Fq 'ZPWR_VERBS[emacsctags]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch80 stratified samples)
#--------------------------------------------------------------
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

@test 'wizard page_115.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_115.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrZFZF through zua (zsh -n)
#--------------------------------------------------------------
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
# autoload/comps — first six sorted (zsh -n), pad batch to 20 syntax checks
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

#--------------------------------------------------------------
# zpwrExists — batch80 (zinit / zsh plugins / zstyle / z* short names)
#--------------------------------------------------------------
@test 'zpwrExists zpwrZFZF returns 0' {
    run zpwrExists zpwrZFZF
    assert $state equals 0
}

@test 'zpwrExists zpwrZinitUpdates returns 0' {
    run zpwrExists zpwrZinitUpdates
    assert $state equals 0
}

@test 'zpwrExists zpwrZshPluginCount returns 0' {
    run zpwrExists zpwrZshPluginCount
    assert $state equals 0
}

@test 'zpwrExists zpwrZshPluginList returns 0' {
    run zpwrExists zpwrZshPluginList
    assert $state equals 0
}

@test 'zpwrExists zpwrZshrcSearch returns 0' {
    run zpwrExists zpwrZshrcSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrZstyle returns 0' {
    run zpwrExists zpwrZstyle
    assert $state equals 0
}

@test 'zpwrExists zpz returns 0' {
    run zpwrExists zpz
    assert $state equals 0
}

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

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists paste cut returns 0' {
    run zpwrCommandExists paste cut
    assert $state equals 0
}

@test 'zpwrCommandExists fmt fold returns 0' {
    run zpwrCommandExists fmt fold
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
