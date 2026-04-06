#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ci.yml apt/revolver anchors; wizard_pages zsh -n; z* autoload cluster
##### Notes: Complements batch29 (comps/darwin/linux); patterns with -- use grep -- when needed
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — apt and revolver URL anchors
#--------------------------------------------------------------
@test 'ci.yml apt install uses no-install-recommends' {
    run grep -Fq 'no-install-recommends' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml revolver URL includes refs/heads/master' {
    run grep -Fq 'refs/heads/master' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml revolver URL includes master/revolver path' {
    run grep -Fq 'master/revolver' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb anchors (grep, not runtime)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[updatepull]' {
    run grep -Fq 'ZPWR_VERBS[updatepull]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[wordsearch]' {
    run grep -Fq 'ZPWR_VERBS[wordsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (stratified samples)
#--------------------------------------------------------------
@test 'wizard page_001.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_001.zsh"
    assert $state equals 0
}

@test 'wizard page_025.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_025.zsh"
    assert $state equals 0
}

@test 'wizard page_050.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_050.zsh"
    assert $state equals 0
}

@test 'wizard page_075.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_075.zsh"
    assert $state equals 0
}

@test 'wizard page_100.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_100.zsh"
    assert $state equals 0
}

@test 'wizard page_125.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_125.zsh"
    assert $state equals 0
}

@test 'wizard page_150.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_150.zsh"
    assert $state equals 0
}

@test 'wizard page_175.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_175.zsh"
    assert $state equals 0
}

@test 'wizard page_200.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_200.zsh"
    assert $state equals 0
}

@test 'wizard page_208.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_208.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (common z* cluster before zpwr*)
#--------------------------------------------------------------
@test 'autoload common zall passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zall"
    assert $state equals 0
}

@test 'autoload common zalo passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zalo"
    assert $state equals 0
}

@test 'autoload common zals passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zals"
    assert $state equals 0
}

@test 'autoload common zalu passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zalu"
    assert $state equals 0
}

@test 'autoload common zarg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zarg"
    assert $state equals 0
}

@test 'autoload common zco passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zco"
    assert $state equals 0
}

@test 'autoload common zd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zd"
    assert $state equals 0
}

@test 'autoload common ze passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/ze"
    assert $state equals 0
}

@test 'autoload common zg passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zg"
    assert $state equals 0
}

@test 'autoload common zh passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zh"
    assert $state equals 0
}

@test 'autoload common zhb passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zhb"
    assert $state equals 0
}

@test 'autoload common zhc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zhc"
    assert $state equals 0
}

@test 'autoload common zhp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zhp"
    assert $state equals 0
}

@test 'autoload common zhs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zhs"
    assert $state equals 0
}

@test 'autoload common zil passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zil"
    assert $state equals 0
}

@test 'autoload common zl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zl"
    assert $state equals 0
}

@test 'autoload common zlc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zlc"
    assert $state equals 0
}

@test 'autoload common zli passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zli"
    assert $state equals 0
}

@test 'autoload common zlr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zlr"
    assert $state equals 0
}

@test 'autoload common zlt passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zlt"
    assert $state equals 0
}

@test 'autoload common zm passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zm"
    assert $state equals 0
}

@test 'autoload common zpl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpl"
    assert $state equals 0
}

@test 'autoload common zpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwr"
    assert $state equals 0
}

@test 'autoload common zpwr256ColorTest passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwr256ColorTest"
    assert $state equals 0
}

@test 'autoload common zpwrAbout passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAbout"
    assert $state equals 0
}

@test 'autoload common zpwrAcceptLine passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAcceptLine"
    assert $state equals 0
}

@test 'autoload common zpwrAddOMZAttrib passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAddOMZAttrib"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — z* helpers
#--------------------------------------------------------------
@test 'zpwrExists zall returns 0' {
    run zpwrExists zall
    assert $state equals 0
}

@test 'zpwrExists zalo returns 0' {
    run zpwrExists zalo
    assert $state equals 0
}

@test 'zpwrExists zarg returns 0' {
    run zpwrExists zarg
    assert $state equals 0
}

@test 'zpwrExists zd returns 0' {
    run zpwrExists zd
    assert $state equals 0
}

@test 'zpwrExists zg returns 0' {
    run zpwrExists zg
    assert $state equals 0
}

@test 'zpwrExists zpwrAbout returns 0' {
    run zpwrExists zpwrAbout
    assert $state equals 0
}

@test 'zpwrExists zpwrAcceptLine returns 0' {
    run zpwrExists zpwrAcceptLine
    assert $state equals 0
}

@test 'zpwrExists zpwrAddOMZAttrib returns 0' {
    run zpwrExists zpwrAddOMZAttrib
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists id hostname uname returns 0' {
    run zpwrCommandExists id hostname uname
    assert $state equals 0
}

@test 'zpwrCommandExists date returns 0' {
    run zpwrCommandExists date
    assert $state equals 0
}
