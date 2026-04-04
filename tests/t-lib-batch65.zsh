#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (brc/c/cat/catcd/catviminfo); wizard_pages; zpwrCleanDirs..zpwrContribCount zsh -n; clean/clear zpwrExists
##### Notes: Continues batch64; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (brc + cat* cluster)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[brc]' {
    run grep -Fq 'ZPWR_VERBS[brc]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[c]' {
    run grep -Fq 'ZPWR_VERBS[c]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[cat]' {
    run grep -Fq 'ZPWR_VERBS[cat]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[catcd]' {
    run grep -Fq 'ZPWR_VERBS[catcd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[catviminfo]' {
    run grep -Fq 'ZPWR_VERBS[catviminfo]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch65 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_023.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_023.zsh"
    assert $state equals 0
}

@test 'wizard page_053.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_053.zsh"
    assert $state equals 0
}

@test 'wizard page_071.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_071.zsh"
    assert $state equals 0
}

@test 'wizard page_091.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_091.zsh"
    assert $state equals 0
}

@test 'wizard page_111.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_111.zsh"
    assert $state equals 0
}

@test 'wizard page_132.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_132.zsh"
    assert $state equals 0
}

@test 'wizard page_153.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_153.zsh"
    assert $state equals 0
}

@test 'wizard page_184.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_184.zsh"
    assert $state equals 0
}

@test 'wizard page_197.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_197.zsh"
    assert $state equals 0
}

@test 'wizard page_206.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_206.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpwrCleanDirs through zpwrContribCount (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpwrCleanDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanDirs"
    assert $state equals 0
}

@test 'autoload common zpwrCleanDirsAndTemp passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanDirsAndTemp"
    assert $state equals 0
}

@test 'autoload common zpwrCleanGitRepoCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanGitRepoCleanCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoCleanCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanGitRepoDirtyCache passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoDirtyCache"
    assert $state equals 0
}

@test 'autoload common zpwrCleanLog passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanLog"
    assert $state equals 0
}

@test 'autoload common zpwrCleanRefreshCountsTestUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanRefreshCountsTestUpdate"
    assert $state equals 0
}

@test 'autoload common zpwrCleanRefreshUpdate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanRefreshUpdate"
    assert $state equals 0
}

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

#--------------------------------------------------------------
# zpwrExists — batch65 (clean / clear / clipboard / commits cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrCleanDirs returns 0' {
    run zpwrExists zpwrCleanDirs
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanDirsAndTemp returns 0' {
    run zpwrExists zpwrCleanDirsAndTemp
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanGitRepoCache returns 0' {
    run zpwrExists zpwrCleanGitRepoCache
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanLog returns 0' {
    run zpwrExists zpwrCleanLog
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanRefreshUpdate returns 0' {
    run zpwrExists zpwrCleanRefreshUpdate
    assert $state equals 0
}

@test 'zpwrExists zpwrCleanTemp returns 0' {
    run zpwrExists zpwrCleanTemp
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

@test 'zpwrExists zpwrCloneToForked returns 0' {
    run zpwrExists zpwrCloneToForked
    assert $state equals 0
}

@test 'zpwrExists zpwrCommits returns 0' {
    run zpwrExists zpwrCommits
    assert $state equals 0
}

@test 'zpwrExists zpwrConfirm returns 0' {
    run zpwrExists zpwrConfirm
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists column pr returns 0' {
    run zpwrCommandExists column pr
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
