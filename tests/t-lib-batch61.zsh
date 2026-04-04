#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (about/a/alacritty + pyscripts start/starttabs); wizard_pages; zal* tail + zarg..zm zsh -n; about/autoload zpwrExists
##### Notes: Continues batch60; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (early alphabet + pyscripts)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[about]' {
    run grep -Fq 'ZPWR_VERBS[about]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[a]' {
    run grep -Fq 'ZPWR_VERBS[a]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[alacritty]' {
    run grep -Fq 'ZPWR_VERBS[alacritty]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[start]' {
    run grep -Fq 'ZPWR_VERBS[start]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[starttabs]' {
    run grep -Fq 'ZPWR_VERBS[starttabs]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch61 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_019.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_019.zsh"
    assert $state equals 0
}

@test 'wizard page_049.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_049.zsh"
    assert $state equals 0
}

@test 'wizard page_067.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_067.zsh"
    assert $state equals 0
}

@test 'wizard page_087.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_087.zsh"
    assert $state equals 0
}

@test 'wizard page_107.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_107.zsh"
    assert $state equals 0
}

@test 'wizard page_128.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_128.zsh"
    assert $state equals 0
}

@test 'wizard page_149.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_149.zsh"
    assert $state equals 0
}

@test 'wizard page_180.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_180.zsh"
    assert $state equals 0
}

@test 'wizard page_193.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_193.zsh"
    assert $state equals 0
}

@test 'wizard page_202.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_202.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zal* tail + zarg..zm (zsh -n)
#--------------------------------------------------------------
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

#--------------------------------------------------------------
# zpwrExists — batch61 (about / banner / autoload / editor cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrAbout returns 0' {
    run zpwrExists zpwrAbout
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanRefreshCountsTestUpdate returns 0' {
    run zpwrExists zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
}

@test 'zpwrExists zpwrAutoloadCount returns 0' {
    run zpwrExists zpwrAutoloadCount
    assert $state equals 0
}

@test 'zpwrExists zpwrAutoloadList returns 0' {
    run zpwrExists zpwrAutoloadList
    assert $state equals 0
}

@test 'zpwrExists zpwrBannerCounts returns 0' {
    run zpwrExists zpwrBannerCounts
    assert $state equals 0
}

@test 'zpwrExists zpwrCd returns 0' {
    run zpwrExists zpwrCd
    assert $state equals 0
}

@test 'zpwrExists zpwrEditor returns 0' {
    run zpwrExists zpwrEditor
    assert $state equals 0
}

@test 'zpwrExists zpwrBackup returns 0' {
    run zpwrExists zpwrBackup
    assert $state equals 0
}

@test 'zpwrExists zpwrCat returns 0' {
    run zpwrExists zpwrCat
    assert $state equals 0
}

@test 'zpwrExists zpwrAlacritty returns 0' {
    run zpwrExists zpwrAlacritty
    assert $state equals 0
}

@test 'zpwrExists zpwrAliasRank returns 0' {
    run zpwrExists zpwrAliasRank
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists sed awk returns 0' {
    run zpwrCommandExists sed awk
    assert $state equals 0
}

@test 'zpwrCommandExists gzip gunzip returns 0' {
    run zpwrCommandExists gzip gunzip
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
