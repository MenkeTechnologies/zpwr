#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (backuphistory/banner/bannercounts/bench/benchmark); wizard_pages; zpwrBindZdharma..zpwrCleanCompCache zsh -n; cat/cd/clean zpwrExists
##### Notes: Continues batch63; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (backup + banner + bench)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[backuphistory]' {
    run grep -Fq 'ZPWR_VERBS[backuphistory]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[banner]' {
    run grep -Fq 'ZPWR_VERBS[banner]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[bannercounts]' {
    run grep -Fq 'ZPWR_VERBS[bannercounts]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[bench]' {
    run grep -Fq 'ZPWR_VERBS[bench]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[benchmark]' {
    run grep -Fq 'ZPWR_VERBS[benchmark]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch64 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_022.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_022.zsh"
    assert $state equals 0
}

@test 'wizard page_052.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_052.zsh"
    assert $state equals 0
}

@test 'wizard page_070.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_070.zsh"
    assert $state equals 0
}

@test 'wizard page_090.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_090.zsh"
    assert $state equals 0
}

@test 'wizard page_110.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_110.zsh"
    assert $state equals 0
}

@test 'wizard page_131.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_131.zsh"
    assert $state equals 0
}

@test 'wizard page_152.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_152.zsh"
    assert $state equals 0
}

@test 'wizard page_183.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_183.zsh"
    assert $state equals 0
}

@test 'wizard page_196.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_196.zsh"
    assert $state equals 0
}

@test 'wizard page_205.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_205.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrBindZdharma through zpwrCleanCompCache (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrBindZdharma passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZdharma"
    assert $state equals 0
}

@test 'autoload common zpwrBindZdharmaPost passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZdharmaPost"
    assert $state equals 0
}

@test 'autoload common zpwrBindZstyle passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZstyle"
    assert $state equals 0
}

@test 'autoload common zpwrBufferXtrace passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBufferXtrace"
    assert $state equals 0
}

@test 'autoload common zpwrCCommon passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCCommon"
    assert $state equals 0
}

@test 'autoload common zpwrCat passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCat"
    assert $state equals 0
}

@test 'autoload common zpwrCatNvimOrVimInfo passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCatNvimOrVimInfo"
    assert $state equals 0
}

@test 'autoload common zpwrCd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCd"
    assert $state equals 0
}

@test 'autoload common zpwrCdUp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCdUp"
    assert $state equals 0
}

@test 'autoload common zpwrCdVimFzfFilesearchWidgetAccept passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCdVimFzfFilesearchWidgetAccept"
    assert $state equals 0
}

@test 'autoload common zpwrChangeGitAuthorEmail passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitAuthorEmail"
    assert $state equals 0
}

@test 'autoload common zpwrChangeGitCommitterEmail passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitCommitterEmail"
    assert $state equals 0
}

@test 'autoload common zpwrChangeGitEmail passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitEmail"
    assert $state equals 0
}

@test 'autoload common zpwrChangeName passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeName"
    assert $state equals 0
}

@test 'autoload common zpwrChangeNameZpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeNameZpwr"
    assert $state equals 0
}

@test 'autoload common zpwrChangeQuotes passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeQuotes"
    assert $state equals 0
}

@test 'autoload common zpwrChpwd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrChpwd"
    assert $state equals 0
}

@test 'autoload common zpwrCleanAll passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanAll"
    assert $state equals 0
}

@test 'autoload common zpwrCleanCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanCompCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanCompCache"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch64 (bind zstyle / cat / cd / git-email / clean cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrBindZdharma returns 0' {
    run zpwrExists zpwrBindZdharma
    assert $state equals 0
}

@test 'zpwrExists zpwrBindZstyle returns 0' {
    run zpwrExists zpwrBindZstyle
    assert $state equals 0
}

@test 'zpwrExists zpwrBufferXtrace returns 0' {
    run zpwrExists zpwrBufferXtrace
    assert $state equals 0
}

@test 'zpwrExists zpwrCat returns 0' {
    run zpwrExists zpwrCat
    assert $state equals 0
}

@test 'zpwrExists zpwrCd returns 0' {
    run zpwrExists zpwrCd
    assert $state equals 0
}

@test 'zpwrExists zpwrCdUp returns 0' {
    run zpwrExists zpwrCdUp
    assert $state equals 0
}

@test 'zpwrExists zpwrChangeGitEmail returns 0' {
    run zpwrExists zpwrChangeGitEmail
    assert $state equals 0
}

@test 'zpwrExists zpwrChangeNameZpwr returns 0' {
    run zpwrExists zpwrChangeNameZpwr
    assert $state equals 0
}

@test 'zpwrExists zpwrChpwd returns 0' {
    run zpwrExists zpwrChpwd
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanAll returns 0' {
    run zpwrExists zpwrCleanAll
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanCache returns 0' {
    run zpwrExists zpwrCleanCache
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists paste cut returns 0' {
    run zpwrCommandExists paste cut
    assert $state equals 0
}

@test 'zpwrCommandExists tr expand returns 0' {
    run zpwrCommandExists tr expand
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
