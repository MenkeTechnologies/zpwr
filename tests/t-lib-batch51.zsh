#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; tail install + hooks + scripts/*.sh zsh -n
##### Notes: Continues batch50 after watch; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after watch)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[onchange]' {
    run grep -Fq 'ZPWR_VERBS[onchange]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[web]' {
    run grep -Fq 'ZPWR_VERBS[web]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[wizard]' {
    run grep -Fq 'ZPWR_VERBS[wizard]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[manual]' {
    run grep -Fq 'ZPWR_VERBS[manual]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[tutorial]' {
    run grep -Fq 'ZPWR_VERBS[tutorial]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch51 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_009.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_009.zsh"
    assert $state equals 0
}

@test 'wizard page_033.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_033.zsh"
    assert $state equals 0
}

@test 'wizard page_049.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_049.zsh"
    assert $state equals 0
}

@test 'wizard page_072.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_072.zsh"
    assert $state equals 0
}

@test 'wizard page_090.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_090.zsh"
    assert $state equals 0
}

@test 'wizard page_112.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_112.zsh"
    assert $state equals 0
}

@test 'wizard page_131.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_131.zsh"
    assert $state equals 0
}

@test 'wizard page_163.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_163.zsh"
    assert $state equals 0
}

@test 'wizard page_185.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_185.zsh"
    assert $state equals 0
}

@test 'wizard page_202.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_202.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# install — tail *.sh, hooks, and s driver
#--------------------------------------------------------------
@test 'install ycm_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/ycm_install.sh"
    assert $state equals 0
}

@test 'install zpwrInstall.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/zpwrInstall.sh"
    assert $state equals 0
}

@test 'install zsh_plugins_install.sh passes zsh -n' {
    run zsh -n "$ZPWR/install/zsh_plugins_install.sh"
    assert $state equals 0
}

@test 'install hooks pre-push passes zsh -n' {
    run zsh -n "$ZPWR/install/hooks/pre-push"
    assert $state equals 0
}

@test 'install s passes zsh -n' {
    run zsh -n "$ZPWR/install/s"
    assert $state equals 0
}

@test 'docs regenPDF.sh passes zsh -n' {
    run zsh -n "$ZPWR/docs/regenPDF.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (first 14 *.sh alphabetically)
#--------------------------------------------------------------
@test 'scripts about.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/about.sh"
    assert $state equals 0
}

@test 'scripts archetypeShower.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/archetypeShower.sh"
    assert $state equals 0
}

@test 'scripts autoUpdater.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/autoUpdater.sh"
    assert $state equals 0
}

@test 'scripts backgroundMastery.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/backgroundMastery.sh"
    assert $state equals 0
}

@test 'scripts backupConfig.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/backupConfig.sh"
    assert $state equals 0
}

@test 'scripts batchRename.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/batchRename.sh"
    assert $state equals 0
}

@test 'scripts blueText.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/blueText.sh"
    assert $state equals 0
}

@test 'scripts blueUpperText.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/blueUpperText.sh"
    assert $state equals 0
}

@test 'scripts boldText.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/boldText.sh"
    assert $state equals 0
}

@test 'scripts bridgeDown.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/bridgeDown.sh"
    assert $state equals 0
}

@test 'scripts bridgeUp.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/bridgeUp.sh"
    assert $state equals 0
}

@test 'scripts clearTrash.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/clearTrash.sh"
    assert $state equals 0
}

@test 'scripts colorLogger.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/colorLogger.sh"
    assert $state equals 0
}

@test 'scripts connectionShower.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/connectionShower.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch51 (regen / search / tor cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrCleanGitRepoCleanCache returns 0' {
    run zpwrExists zpwrCleanGitRepoCleanCache
    assert $state equals 0
}

@test 'zpwrExists zpwrMycurl returns 0' {
    run zpwrExists zpwrMycurl
    assert $state equals 0
}

@test 'zpwrExists zpwrFzfFilesearchVerb returns 0' {
    run zpwrExists zpwrFzfFilesearchVerb
    assert $state equals 0
}

@test 'zpwrExists zpwrPstreemonitor returns 0' {
    run zpwrExists zpwrPstreemonitor
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenGtagsPygments returns 0' {
    run zpwrExists zpwrRegenGtagsPygments
    assert $state equals 0
}

@test 'zpwrExists zpwrRegenGtagsType returns 0' {
    run zpwrExists zpwrRegenGtagsType
    assert $state equals 0
}

@test 'zpwrExists zpwrReset returns 0' {
    run zpwrExists zpwrReset
    assert $state equals 0
}

@test 'zpwrExists zpwrRevealRecurse returns 0' {
    run zpwrExists zpwrRevealRecurse
    assert $state equals 0
}

@test 'zpwrExists zpwrScnew returns 0' {
    run zpwrExists zpwrScnew
    assert $state equals 0
}

@test 'zpwrExists zpwrSearch returns 0' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'zpwrExists zpwrTorip returns 0' {
    run zpwrExists zpwrTorip
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists diff cmp returns 0' {
    run zpwrCommandExists diff cmp
    assert $state equals 0
}

@test 'zpwrCommandExists grep sed returns 0' {
    run zpwrCommandExists grep sed
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
