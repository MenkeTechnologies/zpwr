#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; zpwrCleanTemp–zpwrDetachall autoload zsh -n
##### Notes: Continues batch33 after zpwrCleanRefreshUpdate; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after stale)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[cruft]' {
    run grep -Fq 'ZPWR_VERBS[cruft]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[startup]' {
    run grep -Fq 'ZPWR_VERBS[startup]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[profile]' {
    run grep -Fq 'ZPWR_VERBS[profile]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zprof]' {
    run grep -Fq 'ZPWR_VERBS[zprof]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[startsend]' {
    run grep -Fq 'ZPWR_VERBS[startsend]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch34 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_005.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_005.zsh"
    assert $state equals 0
}

@test 'wizard page_012.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_012.zsh"
    assert $state equals 0
}

@test 'wizard page_018.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_018.zsh"
    assert $state equals 0
}

@test 'wizard page_052.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_052.zsh"
    assert $state equals 0
}

@test 'wizard page_075.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_075.zsh"
    assert $state equals 0
}

@test 'wizard page_088.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_088.zsh"
    assert $state equals 0
}

@test 'wizard page_102.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_102.zsh"
    assert $state equals 0
}

@test 'wizard page_125.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_125.zsh"
    assert $state equals 0
}

@test 'wizard page_155.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_155.zsh"
    assert $state equals 0
}

@test 'wizard page_185.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_185.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (zpwrCleanTemp through zpwrDetachall)
#--------------------------------------------------------------
@test 'autoload common zpwrCleanTemp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanTemp"
    assert $state equals 0
}

@test 'autoload common zpwrCleanUpdateDeps passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanUpdateDeps"
    assert $state equals 0
}

@test 'autoload common zpwrClearGitCommit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearGitCommit"
    assert $state equals 0
}

@test 'autoload common zpwrClearGitFile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearGitFile"
    assert $state equals 0
}

@test 'autoload common zpwrClearLine passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearLine"
    assert $state equals 0
}

@test 'autoload common zpwrClearListFZF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearListFZF"
    assert $state equals 0
}

@test 'autoload common zpwrClipboard passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrClipboard"
    assert $state equals 0
}

@test 'autoload common zpwrCloneToForked passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCloneToForked"
    assert $state equals 0
}

@test 'autoload common zpwrColorTest passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrColorTest"
    assert $state equals 0
}

@test 'autoload common zpwrCommits passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCommits"
    assert $state equals 0
}

@test 'autoload common zpwrConfirm passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrConfirm"
    assert $state equals 0
}

@test 'autoload common zpwrContribCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCount"
    assert $state equals 0
}

@test 'autoload common zpwrContribCountDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCountDirs"
    assert $state equals 0
}

@test 'autoload common zpwrContribCountLines passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCountLines"
    assert $state equals 0
}

@test 'autoload common zpwrCreateAliasCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCreateAliasCache"
    assert $state equals 0
}

@test 'autoload common zpwrCreategif passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCreategif"
    assert $state equals 0
}

@test 'autoload common zpwrDedupPaths passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDedupPaths"
    assert $state equals 0
}

@test 'autoload common zpwrDeleteLastWord passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDeleteLastWord"
    assert $state equals 0
}

@test 'autoload common zpwrDeps passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDeps"
    assert $state equals 0
}

@test 'autoload common zpwrDetachall passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrDetachall"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch34 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrCleanTemp returns 0' {
    run zpwrExists zpwrCleanTemp
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanUpdateDeps returns 0' {
    run zpwrExists zpwrCleanUpdateDeps
    assert $state equals 0
}

@test 'zpwrExists zpwrClearGitCommit returns 0' {
    run zpwrExists zpwrClearGitCommit
    assert $state equals 0
}

@test 'zpwrExists zpwrClearLine returns 0' {
    run zpwrExists zpwrClearLine
    assert $state equals 0
}

@test 'zpwrExists zpwrClipboard returns 0' {
    run zpwrExists zpwrClipboard
    assert $state equals 0
}

@test 'zpwrExists zpwrColorTest returns 0' {
    run zpwrExists zpwrColorTest
    assert $state equals 0
}

@test 'zpwrExists zpwrCommits returns 0' {
    run zpwrExists zpwrCommits
    assert $state equals 0
}

@test 'zpwrExists zpwrContribCount returns 0' {
    run zpwrExists zpwrContribCount
    assert $state equals 0
}

@test 'zpwrExists zpwrDedupPaths returns 0' {
    run zpwrExists zpwrDedupPaths
    assert $state equals 0
}

@test 'zpwrExists zpwrDeps returns 0' {
    run zpwrExists zpwrDeps
    assert $state equals 0
}

@test 'zpwrExists zpwrDetachall returns 0' {
    run zpwrExists zpwrDetachall
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists grep sed returns 0' {
    run zpwrCommandExists grep sed
    assert $state equals 0
}

@test 'zpwrCommandExists awk cut returns 0' {
    run zpwrCommandExists awk cut
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test '.zpwr_root marker exists' {
    run test -f "$ZPWR/.zpwr_root"
    assert $state equals 0
}

@test 'scripts init.sh exists' {
    run test -f "$ZPWR/scripts/init.sh"
    assert $state equals 0
}

@test 'scripts lib.sh exists' {
    run test -f "$ZPWR/scripts/lib.sh"
    assert $state equals 0
}
