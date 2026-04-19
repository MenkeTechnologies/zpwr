#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all autoload/common functions are defined
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn a is defined' {
    run test -n "${functions[a]+x}"
    assert $state equals 0
}

@test 'fn apz is defined' {
    run test -n "${functions[apz]+x}"
    assert $state equals 0
}

@test 'fn asg is defined' {
    run test -n "${functions[asg]+x}"
    assert $state equals 0
}

@test 'fn b is defined' {
    run test -n "${functions[b]+x}"
    assert $state equals 0
}

@test 'fn c is defined' {
    run test -n "${functions[c]+x}"
    assert $state equals 0
}

@test 'fn cca is defined' {
    run test -n "${functions[cca]+x}"
    assert $state equals 0
}

@test 'fn cd is defined' {
    run test -n "${functions[cd]+x}"
    assert $state equals 0
}

@test 'fn ce is defined' {
    run test -n "${functions[ce]+x}"
    assert $state equals 0
}

@test 'fn cg is defined' {
    run test -n "${functions[cg]+x}"
    assert $state equals 0
}

@test 'fn cgh is defined' {
    run test -n "${functions[cgh]+x}"
    assert $state equals 0
}

@test 'fn color2 is defined' {
    run test -n "${functions[color2]+x}"
    assert $state equals 0
}

@test 'fn cv is defined' {
    run test -n "${functions[cv]+x}"
    assert $state equals 0
}

@test 'fn d is defined' {
    run test -n "${functions[d]+x}"
    assert $state equals 0
}

@test 'fn dbz is defined' {
    run test -n "${functions[dbz]+x}"
    assert $state equals 0
}

@test 'fn de is defined' {
    run test -n "${functions[de]+x}"
    assert $state equals 0
}

@test 'fn digs is defined' {
    run test -n "${functions[digs]+x}"
    assert $state equals 0
}

@test 'fn dl is defined' {
    run test -n "${functions[dl]+x}"
    assert $state equals 0
}

@test 'fn docu is defined' {
    run test -n "${functions[docu]+x}"
    assert $state equals 0
}

@test 'fn e is defined' {
    run test -n "${functions[e]+x}"
    assert $state equals 0
}

@test 'fn eb is defined' {
    run test -n "${functions[eb]+x}"
    assert $state equals 0
}

@test 'fn em is defined' {
    run test -n "${functions[em]+x}"
    assert $state equals 0
}

@test 'fn emm is defined' {
    run test -n "${functions[emm]+x}"
    assert $state equals 0
}

@test 'fn f is defined' {
    run test -n "${functions[f]+x}"
    assert $state equals 0
}

@test 'fn ff is defined' {
    run test -n "${functions[ff]+x}"
    assert $state equals 0
}

@test 'fn fff is defined' {
    run test -n "${functions[fff]+x}"
    assert $state equals 0
}

@test 'fn fm is defined' {
    run test -n "${functions[fm]+x}"
    assert $state equals 0
}

@test 'fn fp is defined' {
    run test -n "${functions[fp]+x}"
    assert $state equals 0
}

@test 'fn gcl is defined' {
    run test -n "${functions[gcl]+x}"
    assert $state equals 0
}

@test 'fn ge is defined' {
    run test -n "${functions[ge]+x}"
    assert $state equals 0
}

@test 'fn gil is defined' {
    run test -n "${functions[gil]+x}"
    assert $state equals 0
}

@test 'fn gsdc is defined' {
    run test -n "${functions[gsdc]+x}"
    assert $state equals 0
}

@test 'fn gse is defined' {
    run test -n "${functions[gse]+x}"
    assert $state equals 0
}

@test 'fn h is defined' {
    run test -n "${functions[h]+x}"
    assert $state equals 0
}

@test 'fn hc is defined' {
    run test -n "${functions[hc]+x}"
    assert $state equals 0
}

@test 'fn hd is defined' {
    run test -n "${functions[hd]+x}"
    assert $state equals 0
}

@test 'fn ig is defined' {
    run test -n "${functions[ig]+x}"
    assert $state equals 0
}

@test 'fn ino is defined' {
    run test -n "${functions[ino]+x}"
    assert $state equals 0
}

@test 'fn j is defined' {
    run test -n "${functions[j]+x}"
    assert $state equals 0
}

@test 'fn jd is defined' {
    run test -n "${functions[jd]+x}"
    assert $state equals 0
}

@test 'fn kr is defined' {
    run test -n "${functions[kr]+x}"
    assert $state equals 0
}

@test 'fn lcm is defined' {
    run test -n "${functions[lcm]+x}"
    assert $state equals 0
}

@test 'fn mg is defined' {
    run test -n "${functions[mg]+x}"
    assert $state equals 0
}

@test 'fn nz is defined' {
    run test -n "${functions[nz]+x}"
    assert $state equals 0
}

@test 'fn o is defined' {
    run test -n "${functions[o]+x}"
    assert $state equals 0
}

@test 'fn p is defined' {
    run test -n "${functions[p]+x}"
    assert $state equals 0
}

@test 'fn pg is defined' {
    run test -n "${functions[pg]+x}"
    assert $state equals 0
}

@test 'fn post is defined' {
    run test -n "${functions[post]+x}"
    assert $state equals 0
}

@test 'fn pre is defined' {
    run test -n "${functions[pre]+x}"
    assert $state equals 0
}

@test 'fn r is defined' {
    run test -n "${functions[r]+x}"
    assert $state equals 0
}

@test 'fn return2 is defined' {
    run test -n "${functions[return2]+x}"
    assert $state equals 0
}

@test 'fn rm is defined' {
    run test -n "${functions[rm]+x}"
    assert $state equals 0
}

@test 'fn sub is defined' {
    run test -n "${functions[sub]+x}"
    assert $state equals 0
}

@test 'fn suc is defined' {
    run test -n "${functions[suc]+x}"
    assert $state equals 0
}

@test 'fn t is defined' {
    run test -n "${functions[t]+x}"
    assert $state equals 0
}

@test 'fn tac is defined' {
    run test -n "${functions[tac]+x}"
    assert $state equals 0
}

@test 'fn tma is defined' {
    run test -n "${functions[tma]+x}"
    assert $state equals 0
}

@test 'fn to is defined' {
    run test -n "${functions[to]+x}"
    assert $state equals 0
}

@test 'fn ue is defined' {
    run test -n "${functions[ue]+x}"
    assert $state equals 0
}

@test 'fn va is defined' {
    run test -n "${functions[va]+x}"
    assert $state equals 0
}

@test 'fn vb is defined' {
    run test -n "${functions[vb]+x}"
    assert $state equals 0
}

@test 'fn vl is defined' {
    run test -n "${functions[vl]+x}"
    assert $state equals 0
}

@test 'fn we is defined' {
    run test -n "${functions[we]+x}"
    assert $state equals 0
}

@test 'fn wg is defined' {
    run test -n "${functions[wg]+x}"
    assert $state equals 0
}

@test 'fn ww is defined' {
    run test -n "${functions[ww]+x}"
    assert $state equals 0
}

@test 'fn www is defined' {
    run test -n "${functions[www]+x}"
    assert $state equals 0
}

@test 'fn xx is defined' {
    run test -n "${functions[xx]+x}"
    assert $state equals 0
}

@test 'fn z is defined' {
    run test -n "${functions[z]+x}"
    assert $state equals 0
}

@test 'fn zal is defined' {
    run test -n "${functions[zal]+x}"
    assert $state equals 0
}

@test 'fn zalc is defined' {
    run test -n "${functions[zalc]+x}"
    assert $state equals 0
}

@test 'fn zald is defined' {
    run test -n "${functions[zald]+x}"
    assert $state equals 0
}

@test 'fn zalf is defined' {
    run test -n "${functions[zalf]+x}"
    assert $state equals 0
}

@test 'fn zall is defined' {
    run test -n "${functions[zall]+x}"
    assert $state equals 0
}

@test 'fn zalo is defined' {
    run test -n "${functions[zalo]+x}"
    assert $state equals 0
}

@test 'fn zals is defined' {
    run test -n "${functions[zals]+x}"
    assert $state equals 0
}

@test 'fn zalu is defined' {
    run test -n "${functions[zalu]+x}"
    assert $state equals 0
}

@test 'fn zarg is defined' {
    run test -n "${functions[zarg]+x}"
    assert $state equals 0
}

@test 'fn zco is defined' {
    run test -n "${functions[zco]+x}"
    assert $state equals 0
}

@test 'fn zd is defined' {
    run test -n "${functions[zd]+x}"
    assert $state equals 0
}

@test 'fn ze is defined' {
    run test -n "${functions[ze]+x}"
    assert $state equals 0
}

@test 'fn zg is defined' {
    run test -n "${functions[zg]+x}"
    assert $state equals 0
}

@test 'fn zh is defined' {
    run test -n "${functions[zh]+x}"
    assert $state equals 0
}

@test 'fn zhb is defined' {
    run test -n "${functions[zhb]+x}"
    assert $state equals 0
}

@test 'fn zhc is defined' {
    run test -n "${functions[zhc]+x}"
    assert $state equals 0
}

@test 'fn zhp is defined' {
    run test -n "${functions[zhp]+x}"
    assert $state equals 0
}

@test 'fn zhs is defined' {
    run test -n "${functions[zhs]+x}"
    assert $state equals 0
}

@test 'fn zil is defined' {
    run test -n "${functions[zil]+x}"
    assert $state equals 0
}

@test 'fn zl is defined' {
    run test -n "${functions[zl]+x}"
    assert $state equals 0
}

@test 'fn zlc is defined' {
    run test -n "${functions[zlc]+x}"
    assert $state equals 0
}

@test 'fn zli is defined' {
    run test -n "${functions[zli]+x}"
    assert $state equals 0
}

@test 'fn zlr is defined' {
    run test -n "${functions[zlr]+x}"
    assert $state equals 0
}

@test 'fn zlt is defined' {
    run test -n "${functions[zlt]+x}"
    assert $state equals 0
}

@test 'fn zm is defined' {
    run test -n "${functions[zm]+x}"
    assert $state equals 0
}

@test 'fn zpl is defined' {
    run test -n "${functions[zpl]+x}"
    assert $state equals 0
}

@test 'fn zpwr is defined' {
    run test -n "${functions[zpwr]+x}"
    assert $state equals 0
}

@test 'fn zpwr256ColorTest is defined' {
    run test -n "${functions[zpwr256ColorTest]+x}"
    assert $state equals 0
}

@test 'fn zpwrAbout is defined' {
    run test -n "${functions[zpwrAbout]+x}"
    assert $state equals 0
}

@test 'fn zpwrAcceptLine is defined' {
    run test -n "${functions[zpwrAcceptLine]+x}"
    assert $state equals 0
}

@test 'fn zpwrAddOMZAttrib is defined' {
    run test -n "${functions[zpwrAddOMZAttrib]+x}"
    assert $state equals 0
}

@test 'fn zpwrAgIntoFzf is defined' {
    run test -n "${functions[zpwrAgIntoFzf]+x}"
    assert $state equals 0
}

@test 'fn zpwrAlacritty is defined' {
    run test -n "${functions[zpwrAlacritty]+x}"
    assert $state equals 0
}

@test 'fn zpwrAllRemotes is defined' {
    run test -n "${functions[zpwrAllRemotes]+x}"
    assert $state equals 0
}

@test 'fn zpwrAllUpdates is defined' {
    run test -n "${functions[zpwrAllUpdates]+x}"
    assert $state equals 0
}

@test 'fn zpwrAlternateQuotes is defined' {
    run test -n "${functions[zpwrAlternateQuotes]+x}"
    assert $state equals 0
}

@test 'fn zpwrAnimate is defined' {
    run test -n "${functions[zpwrAnimate]+x}"
    assert $state equals 0
}

@test 'fn zpwrArrayToJson is defined' {
    run test -n "${functions[zpwrArrayToJson]+x}"
    assert $state equals 0
}

@test 'fn zpwrAsVar is defined' {
    run test -n "${functions[zpwrAsVar]+x}"
    assert $state equals 0
}

@test 'fn zpwrAutoloadCount is defined' {
    run test -n "${functions[zpwrAutoloadCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrAutoloadList is defined' {
    run test -n "${functions[zpwrAutoloadList]+x}"
    assert $state equals 0
}

@test 'fn zpwrBackup is defined' {
    run test -n "${functions[zpwrBackup]+x}"
    assert $state equals 0
}

@test 'fn zpwrBackupHistfile is defined' {
    run test -n "${functions[zpwrBackupHistfile]+x}"
    assert $state equals 0
}

@test 'fn zpwrBannerCounts is defined' {
    run test -n "${functions[zpwrBannerCounts]+x}"
    assert $state equals 0
}

@test 'fn zpwrBannerLolcat is defined' {
    run test -n "${functions[zpwrBannerLolcat]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindAliasesLate is defined' {
    run test -n "${functions[zpwrBindAliasesLate]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindAliasesZshLate is defined' {
    run test -n "${functions[zpwrBindAliasesZshLate]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindDirs is defined' {
    run test -n "${functions[zpwrBindDirs]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindFinal is defined' {
    run test -n "${functions[zpwrBindFinal]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindForGit is defined' {
    run test -n "${functions[zpwrBindForGit]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindFZFLate is defined' {
    run test -n "${functions[zpwrBindFZFLate]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindHistorySubstring is defined' {
    run test -n "${functions[zpwrBindHistorySubstring]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindInterceptSurround is defined' {
    run test -n "${functions[zpwrBindInterceptSurround]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideAutoComplete is defined' {
    run test -n "${functions[zpwrBindOverrideAutoComplete]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZ is defined' {
    run test -n "${functions[zpwrBindOverrideOMZ]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZCompdefs is defined' {
    run test -n "${functions[zpwrBindOverrideOMZCompdefs]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideZLE is defined' {
    run test -n "${functions[zpwrBindOverrideZLE]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindPenultimate is defined' {
    run test -n "${functions[zpwrBindPenultimate]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindPowerline is defined' {
    run test -n "${functions[zpwrBindPowerline]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindPowerlineTmux is defined' {
    run test -n "${functions[zpwrBindPowerlineTmux]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindPrecmd is defined' {
    run test -n "${functions[zpwrBindPrecmd]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindPreexecChpwd is defined' {
    run test -n "${functions[zpwrBindPreexecChpwd]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindVerbs is defined' {
    run test -n "${functions[zpwrBindVerbs]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindZdharma is defined' {
    run test -n "${functions[zpwrBindZdharma]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindZdharmaPost is defined' {
    run test -n "${functions[zpwrBindZdharmaPost]+x}"
    assert $state equals 0
}

@test 'fn zpwrBindZstyle is defined' {
    run test -n "${functions[zpwrBindZstyle]+x}"
    assert $state equals 0
}

@test 'fn zpwrBufferXtrace is defined' {
    run test -n "${functions[zpwrBufferXtrace]+x}"
    assert $state equals 0
}

@test 'fn zpwrCat is defined' {
    run test -n "${functions[zpwrCat]+x}"
    assert $state equals 0
}

@test 'fn zpwrCatNvimOrVimInfo is defined' {
    run test -n "${functions[zpwrCatNvimOrVimInfo]+x}"
    assert $state equals 0
}

@test 'fn zpwrCCommon is defined' {
    run test -n "${functions[zpwrCCommon]+x}"
    assert $state equals 0
}

@test 'fn zpwrCd is defined' {
    run test -n "${functions[zpwrCd]+x}"
    assert $state equals 0
}

@test 'fn zpwrCdUp is defined' {
    run test -n "${functions[zpwrCdUp]+x}"
    assert $state equals 0
}

@test 'fn zpwrCdVimFzfFilesearchWidgetAccept is defined' {
    run test -n "${functions[zpwrCdVimFzfFilesearchWidgetAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrChangeGitAuthorEmail is defined' {
    run test -n "${functions[zpwrChangeGitAuthorEmail]+x}"
    assert $state equals 0
}

@test 'fn zpwrChangeGitCommitterEmail is defined' {
    run test -n "${functions[zpwrChangeGitCommitterEmail]+x}"
    assert $state equals 0
}

@test 'fn zpwrChangeGitEmail is defined' {
    run test -n "${functions[zpwrChangeGitEmail]+x}"
    assert $state equals 0
}

@test 'fn zpwrChangeName is defined' {
    run test -n "${functions[zpwrChangeName]+x}"
    assert $state equals 0
}

@test 'fn zpwrChangeNameZpwr is defined' {
    run test -n "${functions[zpwrChangeNameZpwr]+x}"
    assert $state equals 0
}

@test 'fn zpwrChangeQuotes is defined' {
    run test -n "${functions[zpwrChangeQuotes]+x}"
    assert $state equals 0
}

@test 'fn zpwrChpwd is defined' {
    run test -n "${functions[zpwrChpwd]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanAll is defined' {
    run test -n "${functions[zpwrCleanAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanCache is defined' {
    run test -n "${functions[zpwrCleanCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanCompCache is defined' {
    run test -n "${functions[zpwrCleanCompCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanDirs is defined' {
    run test -n "${functions[zpwrCleanDirs]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanDirsAndTemp is defined' {
    run test -n "${functions[zpwrCleanDirsAndTemp]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCache is defined' {
    run test -n "${functions[zpwrCleanGitRepoCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCleanCache is defined' {
    run test -n "${functions[zpwrCleanGitRepoCleanCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoDirtyCache is defined' {
    run test -n "${functions[zpwrCleanGitRepoDirtyCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanLog is defined' {
    run test -n "${functions[zpwrCleanLog]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshCountsTestUpdate is defined' {
    run test -n "${functions[zpwrCleanRefreshCountsTestUpdate]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshUpdate is defined' {
    run test -n "${functions[zpwrCleanRefreshUpdate]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanTemp is defined' {
    run test -n "${functions[zpwrCleanTemp]+x}"
    assert $state equals 0
}

@test 'fn zpwrCleanUpdateDeps is defined' {
    run test -n "${functions[zpwrCleanUpdateDeps]+x}"
    assert $state equals 0
}

@test 'fn zpwrClearGitCommit is defined' {
    run test -n "${functions[zpwrClearGitCommit]+x}"
    assert $state equals 0
}

@test 'fn zpwrClearGitFile is defined' {
    run test -n "${functions[zpwrClearGitFile]+x}"
    assert $state equals 0
}

@test 'fn zpwrClearLine is defined' {
    run test -n "${functions[zpwrClearLine]+x}"
    assert $state equals 0
}

@test 'fn zpwrClearListFZF is defined' {
    run test -n "${functions[zpwrClearListFZF]+x}"
    assert $state equals 0
}

@test 'fn zpwrClipboard is defined' {
    run test -n "${functions[zpwrClipboard]+x}"
    assert $state equals 0
}

@test 'fn zpwrCloneToForked is defined' {
    run test -n "${functions[zpwrCloneToForked]+x}"
    assert $state equals 0
}

@test 'fn zpwrColorTest is defined' {
    run test -n "${functions[zpwrColorTest]+x}"
    assert $state equals 0
}

@test 'fn zpwrCommits is defined' {
    run test -n "${functions[zpwrCommits]+x}"
    assert $state equals 0
}

@test 'fn zpwrConfirm is defined' {
    run test -n "${functions[zpwrConfirm]+x}"
    assert $state equals 0
}

@test 'fn zpwrContribCount is defined' {
    run test -n "${functions[zpwrContribCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrContribCountDirs is defined' {
    run test -n "${functions[zpwrContribCountDirs]+x}"
    assert $state equals 0
}

@test 'fn zpwrContribCountLines is defined' {
    run test -n "${functions[zpwrContribCountLines]+x}"
    assert $state equals 0
}

@test 'fn zpwrCreateAliasCache is defined' {
    run test -n "${functions[zpwrCreateAliasCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrCreategif is defined' {
    run test -n "${functions[zpwrCreategif]+x}"
    assert $state equals 0
}

@test 'fn zpwrDedupPaths is defined' {
    run test -n "${functions[zpwrDedupPaths]+x}"
    assert $state equals 0
}

@test 'fn zpwrDeleteLastWord is defined' {
    run test -n "${functions[zpwrDeleteLastWord]+x}"
    assert $state equals 0
}

@test 'fn zpwrDetachall is defined' {
    run test -n "${functions[zpwrDetachall]+x}"
    assert $state equals 0
}

@test 'fn zpwrDfimage is defined' {
    run test -n "${functions[zpwrDfimage]+x}"
    assert $state equals 0
}

@test 'fn zpwrDockerWipe is defined' {
    run test -n "${functions[zpwrDockerWipe]+x}"
    assert $state equals 0
}

@test 'fn zpwrEditExercism is defined' {
    run test -n "${functions[zpwrEditExercism]+x}"
    assert $state equals 0
}

@test 'fn zpwrEditor is defined' {
    run test -n "${functions[zpwrEditor]+x}"
    assert $state equals 0
}

@test 'fn zpwrEditorRecent is defined' {
    run test -n "${functions[zpwrEditorRecent]+x}"
    assert $state equals 0
}

@test 'fn zpwrEditorRecentCd is defined' {
    run test -n "${functions[zpwrEditorRecentCd]+x}"
    assert $state equals 0
}

@test 'fn zpwrEditTag is defined' {
    run test -n "${functions[zpwrEditTag]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsAll is defined' {
    run test -n "${functions[zpwrEmacsAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsAllEdit is defined' {
    run test -n "${functions[zpwrEmacsAllEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsAllServer is defined' {
    run test -n "${functions[zpwrEmacsAllServer]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsAutoload is defined' {
    run test -n "${functions[zpwrEmacsAutoload]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsEmacsConfig is defined' {
    run test -n "${functions[zpwrEmacsEmacsConfig]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzf is defined' {
    run test -n "${functions[zpwrEmacsFzf]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerb is defined' {
    run test -n "${functions[zpwrEmacsFzfFilesearchVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerbEdit is defined' {
    run test -n "${functions[zpwrEmacsFzfFilesearchVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerb is defined' {
    run test -n "${functions[zpwrEmacsFzfWordsearchVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerbEdit is defined' {
    run test -n "${functions[zpwrEmacsFzfWordsearchVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsPluginCount is defined' {
    run test -n "${functions[zpwrEmacsPluginCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsPluginList is defined' {
    run test -n "${functions[zpwrEmacsPluginList]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsRecent is defined' {
    run test -n "${functions[zpwrEmacsRecent]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsRecentCd is defined' {
    run test -n "${functions[zpwrEmacsRecentCd]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsScriptEdit is defined' {
    run test -n "${functions[zpwrEmacsScriptEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsScripts is defined' {
    run test -n "${functions[zpwrEmacsScripts]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwr is defined' {
    run test -n "${functions[zpwrEmacsZpwr]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrCtags is defined' {
    run test -n "${functions[zpwrEmacsZpwrCtags]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtags is defined' {
    run test -n "${functions[zpwrEmacsZpwrGtags]+x}"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtagsEdit is defined' {
    run test -n "${functions[zpwrEmacsZpwrGtagsEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrEnvCounts is defined' {
    run test -n "${functions[zpwrEnvCounts]+x}"
    assert $state equals 0
}

@test 'fn zpwrEnvVars is defined' {
    run test -n "${functions[zpwrEnvVars]+x}"
    assert $state equals 0
}

@test 'fn zpwrEnvVarsAll is defined' {
    run test -n "${functions[zpwrEnvVarsAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrEOLorNextTabStop is defined' {
    run test -n "${functions[zpwrEOLorNextTabStop]+x}"
    assert $state equals 0
}

@test 'fn zpwrEvalTester is defined' {
    run test -n "${functions[zpwrEvalTester]+x}"
    assert $state equals 0
}

@test 'fn zpwrExecGlob is defined' {
    run test -n "${functions[zpwrExecGlob]+x}"
    assert $state equals 0
}

@test 'fn zpwrExecGlobParallel is defined' {
    run test -n "${functions[zpwrExecGlobParallel]+x}"
    assert $state equals 0
}

@test 'fn zpwrExecpy is defined' {
    run test -n "${functions[zpwrExecpy]+x}"
    assert $state equals 0
}

@test 'fn zpwrExercismDownloadAll is defined' {
    run test -n "${functions[zpwrExercismDownloadAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrExpandAliasAccept is defined' {
    run test -n "${functions[zpwrExpandAliasAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrExpandAliases is defined' {
    run test -n "${functions[zpwrExpandAliases]+x}"
    assert $state equals 0
}

@test 'fn zpwrExpandOrCompleteWithDots is defined' {
    run test -n "${functions[zpwrExpandOrCompleteWithDots]+x}"
    assert $state equals 0
}

@test 'fn zpwrFasdFList is defined' {
    run test -n "${functions[zpwrFasdFList]+x}"
    assert $state equals 0
}

@test 'fn zpwrFasdFListVerb is defined' {
    run test -n "${functions[zpwrFasdFListVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrFasdFZF is defined' {
    run test -n "${functions[zpwrFasdFZF]+x}"
    assert $state equals 0
}

@test 'fn zpwrFigletfonts is defined' {
    run test -n "${functions[zpwrFigletfonts]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLE is defined' {
    run test -n "${functions[zpwrFindFzfEditNoZLE]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEC is defined' {
    run test -n "${functions[zpwrFindFzfEditNoZLEC]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEEmacs is defined' {
    run test -n "${functions[zpwrFindFzfEditNoZLEEmacs]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEVim is defined' {
    run test -n "${functions[zpwrFindFzfEditNoZLEVim]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLE is defined' {
    run test -n "${functions[zpwrFindFzfNoZLE]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEC is defined' {
    run test -n "${functions[zpwrFindFzfNoZLEC]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEEmacs is defined' {
    run test -n "${functions[zpwrFindFzfNoZLEEmacs]+x}"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEVim is defined' {
    run test -n "${functions[zpwrFindFzfNoZLEVim]+x}"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirs is defined' {
    run test -n "${functions[zpwrForAllGitDirs]+x}"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsClean is defined' {
    run test -n "${functions[zpwrForAllGitDirsClean]+x}"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsDirty is defined' {
    run test -n "${functions[zpwrForAllGitDirsDirty]+x}"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshClean is defined' {
    run test -n "${functions[zpwrForAllGitDirsRefreshClean]+x}"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshDirty is defined' {
    run test -n "${functions[zpwrForAllGitDirsRefreshDirty]+x}"
    assert $state equals 0
}

@test 'fn zpwrFordir is defined' {
    run test -n "${functions[zpwrFordir]+x}"
    assert $state equals 0
}

@test 'fn zpwrFordirUpdate is defined' {
    run test -n "${functions[zpwrFordirUpdate]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfAllKeybind is defined' {
    run test -n "${functions[zpwrFzfAllKeybind]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfCommits is defined' {
    run test -n "${functions[zpwrFzfCommits]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfDirSearch is defined' {
    run test -n "${functions[zpwrFzfDirSearch]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfDirsearchVerb is defined' {
    run test -n "${functions[zpwrFzfDirsearchVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfEnv is defined' {
    run test -n "${functions[zpwrFzfEnv]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbAccept is defined' {
    run test -n "${functions[zpwrFzfEnvVerbAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbEdit is defined' {
    run test -n "${functions[zpwrFzfEnvVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfFileSearch is defined' {
    run test -n "${functions[zpwrFzfFileSearch]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerb is defined' {
    run test -n "${functions[zpwrFzfFilesearchVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerbEdit is defined' {
    run test -n "${functions[zpwrFzfFilesearchVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfSurround is defined' {
    run test -n "${functions[zpwrFzfSurround]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfVimKeybind is defined' {
    run test -n "${functions[zpwrFzfVimKeybind]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerb is defined' {
    run test -n "${functions[zpwrFzfWordsearchVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerbEdit is defined' {
    run test -n "${functions[zpwrFzfWordsearchVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfZList is defined' {
    run test -n "${functions[zpwrFzfZList]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfZListVerb is defined' {
    run test -n "${functions[zpwrFzfZListVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzfZshKeybind is defined' {
    run test -n "${functions[zpwrFzfZshKeybind]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzvim is defined' {
    run test -n "${functions[zpwrFzvim]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzvimAll is defined' {
    run test -n "${functions[zpwrFzvimAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrFzvimScript is defined' {
    run test -n "${functions[zpwrFzvimScript]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetFound is defined' {
    run test -n "${functions[zpwrGetFound]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetGHDelURL is defined' {
    run test -n "${functions[zpwrGetGHDelURL]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetGtags is defined' {
    run test -n "${functions[zpwrGetGtags]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetGtagsEdit is defined' {
    run test -n "${functions[zpwrGetGtagsEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetLocate is defined' {
    run test -n "${functions[zpwrGetLocate]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetrc is defined' {
    run test -n "${functions[zpwrGetrc]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetrcdev is defined' {
    run test -n "${functions[zpwrGetrcdev]+x}"
    assert $state equals 0
}

@test 'fn zpwrGetrcWidget is defined' {
    run test -n "${functions[zpwrGetrcWidget]+x}"
    assert $state equals 0
}

@test 'fn zpwrgh is defined' {
    run test -n "${functions[zpwrgh]+x}"
    assert $state equals 0
}

@test 'fn zpwrGitCheckoutRebasePush is defined' {
    run test -n "${functions[zpwrGitCheckoutRebasePush]+x}"
    assert $state equals 0
}

@test 'fn zpwrGitConfig is defined' {
    run test -n "${functions[zpwrGitConfig]+x}"
    assert $state equals 0
}

@test 'fn zpwrGitIgnores is defined' {
    run test -n "${functions[zpwrGitIgnores]+x}"
    assert $state equals 0
}

@test 'fn zpwrGitReposFile is defined' {
    run test -n "${functions[zpwrGitReposFile]+x}"
    assert $state equals 0
}

@test 'fn zpwrGoclean is defined' {
    run test -n "${functions[zpwrGoclean]+x}"
    assert $state equals 0
}

@test 'fn zpwrGoogle is defined' {
    run test -n "${functions[zpwrGoogle]+x}"
    assert $state equals 0
}

@test 'fn zpwrGtagsIntoFzf is defined' {
    run test -n "${functions[zpwrGtagsIntoFzf]+x}"
    assert $state equals 0
}

@test 'fn zpwrHistfile is defined' {
    run test -n "${functions[zpwrHistfile]+x}"
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbAccept is defined' {
    run test -n "${functions[zpwrHistoryVerbAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbEdit is defined' {
    run test -n "${functions[zpwrHistoryVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrInterceptDelete is defined' {
    run test -n "${functions[zpwrInterceptDelete]+x}"
    assert $state equals 0
}

@test 'fn zpwrInterceptSurround is defined' {
    run test -n "${functions[zpwrInterceptSurround]+x}"
    assert $state equals 0
}

@test 'fn zpwrIntoFzf is defined' {
    run test -n "${functions[zpwrIntoFzf]+x}"
    assert $state equals 0
}

@test 'fn zpwrIntoFzfAg is defined' {
    run test -n "${functions[zpwrIntoFzfAg]+x}"
    assert $state equals 0
}

@test 'fn zpwrJetbrainsWorkspaceEdit is defined' {
    run test -n "${functions[zpwrJetbrainsWorkspaceEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrJsonToArray is defined' {
    run test -n "${functions[zpwrJsonToArray]+x}"
    assert $state equals 0
}

@test 'fn zpwrKeyClear is defined' {
    run test -n "${functions[zpwrKeyClear]+x}"
    assert $state equals 0
}

@test 'fn zpwrKeySender is defined' {
    run test -n "${functions[zpwrKeySender]+x}"
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbAccept is defined' {
    run test -n "${functions[zpwrKillLsofVerbAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbEdit is defined' {
    run test -n "${functions[zpwrKillLsofVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbAccept is defined' {
    run test -n "${functions[zpwrKillPSVerbAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbEdit is defined' {
    run test -n "${functions[zpwrKillPSVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrKillRemote is defined' {
    run test -n "${functions[zpwrKillRemote]+x}"
    assert $state equals 0
}

@test 'fn zpwrLargestGitFiles is defined' {
    run test -n "${functions[zpwrLargestGitFiles]+x}"
    assert $state equals 0
}

@test 'fn zpwrLastWordDouble is defined' {
    run test -n "${functions[zpwrLastWordDouble]+x}"
    assert $state equals 0
}

@test 'fn zpwrLineCount is defined' {
    run test -n "${functions[zpwrLineCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrLinkConf is defined' {
    run test -n "${functions[zpwrLinkConf]+x}"
    assert $state equals 0
}

@test 'fn zpwrListFiles is defined' {
    run test -n "${functions[zpwrListFiles]+x}"
    assert $state equals 0
}

@test 'fn zpwrListNoClear is defined' {
    run test -n "${functions[zpwrListNoClear]+x}"
    assert $state equals 0
}

@test 'fn zpwrListVerbs is defined' {
    run test -n "${functions[zpwrListVerbs]+x}"
    assert $state equals 0
}

@test 'fn zpwrListVerbsColor is defined' {
    run test -n "${functions[zpwrListVerbsColor]+x}"
    assert $state equals 0
}

@test 'fn zpwrLoadJenv is defined' {
    run test -n "${functions[zpwrLoadJenv]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzf is defined' {
    run test -n "${functions[zpwrLocateFzf]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEdit is defined' {
    run test -n "${functions[zpwrLocateFzfEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLE is defined' {
    run test -n "${functions[zpwrLocateFzfEditNoZLE]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEC is defined' {
    run test -n "${functions[zpwrLocateFzfEditNoZLEC]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEEmacs is defined' {
    run test -n "${functions[zpwrLocateFzfEditNoZLEEmacs]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEVim is defined' {
    run test -n "${functions[zpwrLocateFzfEditNoZLEVim]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLE is defined' {
    run test -n "${functions[zpwrLocateFzfNoZLE]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEC is defined' {
    run test -n "${functions[zpwrLocateFzfNoZLEC]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEEmacs is defined' {
    run test -n "${functions[zpwrLocateFzfNoZLEEmacs]+x}"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEVim is defined' {
    run test -n "${functions[zpwrLocateFzfNoZLEVim]+x}"
    assert $state equals 0
}

@test 'fn zpwrLoginCount is defined' {
    run test -n "${functions[zpwrLoginCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrLsoffzf is defined' {
    run test -n "${functions[zpwrLsoffzf]+x}"
    assert $state equals 0
}

@test 'fn zpwrMagicEnter is defined' {
    run test -n "${functions[zpwrMagicEnter]+x}"
    assert $state equals 0
}

@test 'fn zpwrModulesFZF is defined' {
    run test -n "${functions[zpwrModulesFZF]+x}"
    assert $state equals 0
}

@test 'fn zpwrMycurl is defined' {
    run test -n "${functions[zpwrMycurl]+x}"
    assert $state equals 0
}

@test 'fn zpwrNoPonyBanner is defined' {
    run test -n "${functions[zpwrNoPonyBanner]+x}"
    assert $state equals 0
}

@test 'fn zpwrNumVerbs is defined' {
    run test -n "${functions[zpwrNumVerbs]+x}"
    assert $state equals 0
}

@test 'fn zpwrNvimThenRecentf is defined' {
    run test -n "${functions[zpwrNvimThenRecentf]+x}"
    assert $state equals 0
}

@test 'fn zpwrOmzOverrides is defined' {
    run test -n "${functions[zpwrOmzOverrides]+x}"
    assert $state equals 0
}

@test 'fn zpwrOpen is defined' {
    run test -n "${functions[zpwrOpen]+x}"
    assert $state equals 0
}

@test 'fn zpwrOpenExercism is defined' {
    run test -n "${functions[zpwrOpenExercism]+x}"
    assert $state equals 0
}

@test 'fn zpwrOpenmygh is defined' {
    run test -n "${functions[zpwrOpenmygh]+x}"
    assert $state equals 0
}

@test 'fn zpwrOptionsFZF is defined' {
    run test -n "${functions[zpwrOptionsFZF]+x}"
    assert $state equals 0
}

@test 'fn zpwrParseRecentf is defined' {
    run test -n "${functions[zpwrParseRecentf]+x}"
    assert $state equals 0
}

@test 'fn zpwrPasteToBuffer is defined' {
    run test -n "${functions[zpwrPasteToBuffer]+x}"
    assert $state equals 0
}

@test 'fn zpwrPasteToStdout is defined' {
    run test -n "${functions[zpwrPasteToStdout]+x}"
    assert $state equals 0
}

@test 'fn zpwrPirun is defined' {
    run test -n "${functions[zpwrPirun]+x}"
    assert $state equals 0
}

@test 'fn zpwrPoll is defined' {
    run test -n "${functions[zpwrPoll]+x}"
    assert $state equals 0
}

@test 'fn zpwrPonyBanner is defined' {
    run test -n "${functions[zpwrPonyBanner]+x}"
    assert $state equals 0
}

@test 'fn zpwrPrecmd is defined' {
    run test -n "${functions[zpwrPrecmd]+x}"
    assert $state equals 0
}

@test 'fn zpwrPreexec is defined' {
    run test -n "${functions[zpwrPreexec]+x}"
    assert $state equals 0
}

@test 'fn zpwrPrintMap is defined' {
    run test -n "${functions[zpwrPrintMap]+x}"
    assert $state equals 0
}

@test 'fn zpwrPstreemonitor is defined' {
    run test -n "${functions[zpwrPstreemonitor]+x}"
    assert $state equals 0
}

@test 'fn zpwrPygmentcolors is defined' {
    run test -n "${functions[zpwrPygmentcolors]+x}"
    assert $state equals 0
}

@test 'fn zpwrRationalizeDot is defined' {
    run test -n "${functions[zpwrRationalizeDot]+x}"
    assert $state equals 0
}

@test 'fn zpwrRecentfThenNvim is defined' {
    run test -n "${functions[zpwrRecentfThenNvim]+x}"
    assert $state equals 0
}

@test 'fn zpwrRecompile is defined' {
    run test -n "${functions[zpwrRecompile]+x}"
    assert $state equals 0
}

@test 'fn zpwrRecompileFiles is defined' {
    run test -n "${functions[zpwrRecompileFiles]+x}"
    assert $state equals 0
}

@test 'fn zpwrRecompileFpath is defined' {
    run test -n "${functions[zpwrRecompileFpath]+x}"
    assert $state equals 0
}

@test 'fn zpwrRefreshZwc is defined' {
    run test -n "${functions[zpwrRefreshZwc]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenAll is defined' {
    run test -n "${functions[zpwrRegenAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenAllKeybindingsCache is defined' {
    run test -n "${functions[zpwrRegenAllKeybindingsCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenConfigLinks is defined' {
    run test -n "${functions[zpwrRegenConfigLinks]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenCtags is defined' {
    run test -n "${functions[zpwrRegenCtags]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsCtags is defined' {
    run test -n "${functions[zpwrRegenGtagsCtags]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsPygments is defined' {
    run test -n "${functions[zpwrRegenGtagsPygments]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsType is defined' {
    run test -n "${functions[zpwrRegenGtagsType]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenHistory is defined' {
    run test -n "${functions[zpwrRegenHistory]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenMost is defined' {
    run test -n "${functions[zpwrRegenMost]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenPowerlineLink is defined' {
    run test -n "${functions[zpwrRegenPowerlineLink]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenSearchEnv is defined' {
    run test -n "${functions[zpwrRegenSearchEnv]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegenZshCompCache is defined' {
    run test -n "${functions[zpwrRegenZshCompCache]+x}"
    assert $state equals 0
}

@test 'fn zpwrRegexp-replace-single is defined' {
    run test -n "${functions[zpwrRegexp-replace-single]+x}"
    assert $state equals 0
}

@test 'fn zpwrReload is defined' {
    run test -n "${functions[zpwrReload]+x}"
    assert $state equals 0
}

@test 'fn zpwrRelPath is defined' {
    run test -n "${functions[zpwrRelPath]+x}"
    assert $state equals 0
}

@test 'fn zpwrRename is defined' {
    run test -n "${functions[zpwrRename]+x}"
    assert $state equals 0
}

@test 'fn zpwrReplacer is defined' {
    run test -n "${functions[zpwrReplacer]+x}"
    assert $state equals 0
}

@test 'fn zpwrReset is defined' {
    run test -n "${functions[zpwrReset]+x}"
    assert $state equals 0
}

@test 'fn zpwrRestoreHistfile is defined' {
    run test -n "${functions[zpwrRestoreHistfile]+x}"
    assert $state equals 0
}

@test 'fn zpwrRetryZcompdump is defined' {
    run test -n "${functions[zpwrRetryZcompdump]+x}"
    assert $state equals 0
}

@test 'fn zpwrRevealRecurse is defined' {
    run test -n "${functions[zpwrRevealRecurse]+x}"
    assert $state equals 0
}

@test 'fn zpwrRunner is defined' {
    run test -n "${functions[zpwrRunner]+x}"
    assert $state equals 0
}

@test 'fn zpwrScnew is defined' {
    run test -n "${functions[zpwrScnew]+x}"
    assert $state equals 0
}

@test 'fn zpwrScriptCount is defined' {
    run test -n "${functions[zpwrScriptCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrScriptList is defined' {
    run test -n "${functions[zpwrScriptList]+x}"
    assert $state equals 0
}

@test 'fn zpwrScripts is defined' {
    run test -n "${functions[zpwrScripts]+x}"
    assert $state equals 0
}

@test 'fn zpwrSearch is defined' {
    run test -n "${functions[zpwrSearch]+x}"
    assert $state equals 0
}

@test 'fn zpwrSelfInsert is defined' {
    run test -n "${functions[zpwrSelfInsert]+x}"
    assert $state equals 0
}

@test 'fn zpwrSshRegain is defined' {
    run test -n "${functions[zpwrSshRegain]+x}"
    assert $state equals 0
}

@test 'fn zpwrStaleZcompdump is defined' {
    run test -n "${functions[zpwrStaleZcompdump]+x}"
    assert $state equals 0
}

@test 'fn zpwrStartAutoComplete is defined' {
    run test -n "${functions[zpwrStartAutoComplete]+x}"
    assert $state equals 0
}

@test 'fn zpwrStartSend is defined' {
    run test -n "${functions[zpwrStartSend]+x}"
    assert $state equals 0
}

@test 'fn zpwrStartSendFull is defined' {
    run test -n "${functions[zpwrStartSendFull]+x}"
    assert $state equals 0
}

@test 'fn zpwrStopAutoComplete is defined' {
    run test -n "${functions[zpwrStopAutoComplete]+x}"
    assert $state equals 0
}

@test 'fn zpwrStopSend is defined' {
    run test -n "${functions[zpwrStopSend]+x}"
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecent is defined' {
    run test -n "${functions[zpwrSudoEditorRecent]+x}"
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecentCd is defined' {
    run test -n "${functions[zpwrSudoEditorRecentCd]+x}"
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecent is defined' {
    run test -n "${functions[zpwrSudoEmacsRecent]+x}"
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecentCd is defined' {
    run test -n "${functions[zpwrSudoEmacsRecentCd]+x}"
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecent is defined' {
    run test -n "${functions[zpwrSudoVimRecent]+x}"
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecentCd is defined' {
    run test -n "${functions[zpwrSudoVimRecentCd]+x}"
    assert $state equals 0
}

@test 'fn zpwrTabNum is defined' {
    run test -n "${functions[zpwrTabNum]+x}"
    assert $state equals 0
}

@test 'fn zpwrTabNumCmd is defined' {
    run test -n "${functions[zpwrTabNumCmd]+x}"
    assert $state equals 0
}

@test 'fn zpwrTest is defined' {
    run test -n "${functions[zpwrTest]+x}"
    assert $state equals 0
}

@test 'fn zpwrTestAll is defined' {
    run test -n "${functions[zpwrTestAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrTimer is defined' {
    run test -n "${functions[zpwrTimer]+x}"
    assert $state equals 0
}

@test 'fn zpwrTmux_capture_paner is defined' {
    run test -n "${functions[zpwrTmux_capture_paner]+x}"
    assert $state equals 0
}

@test 'fn zpwrTmux_pane_words is defined' {
    run test -n "${functions[zpwrTmux_pane_words]+x}"
    assert $state equals 0
}

@test 'fn zpwrTorip is defined' {
    run test -n "${functions[zpwrTorip]+x}"
    assert $state equals 0
}

@test 'fn zpwrToriprenew is defined' {
    run test -n "${functions[zpwrToriprenew]+x}"
    assert $state equals 0
}

@test 'fn zpwrTotalLines is defined' {
    run test -n "${functions[zpwrTotalLines]+x}"
    assert $state equals 0
}

@test 'fn zpwrTutsUpdate is defined' {
    run test -n "${functions[zpwrTutsUpdate]+x}"
    assert $state equals 0
}

@test 'fn zpwrUncompile is defined' {
    run test -n "${functions[zpwrUncompile]+x}"
    assert $state equals 0
}

@test 'fn zpwrUninstall is defined' {
    run test -n "${functions[zpwrUninstall]+x}"
    assert $state equals 0
}

@test 'fn zpwrUnlinkConf is defined' {
    run test -n "${functions[zpwrUnlinkConf]+x}"
    assert $state equals 0
}

@test 'fn zpwrUp8widget is defined' {
    run test -n "${functions[zpwrUp8widget]+x}"
    assert $state equals 0
}

@test 'fn zpwrUpdate is defined' {
    run test -n "${functions[zpwrUpdate]+x}"
    assert $state equals 0
}

@test 'fn zpwrUpdateAllGitDirs is defined' {
    run test -n "${functions[zpwrUpdateAllGitDirs]+x}"
    assert $state equals 0
}

@test 'fn zpwrUpdateDeps is defined' {
    run test -n "${functions[zpwrUpdateDeps]+x}"
    assert $state equals 0
}

@test 'fn zpwrUpdateDepsClean is defined' {
    run test -n "${functions[zpwrUpdateDepsClean]+x}"
    assert $state equals 0
}

@test 'fn zpwrUpdater is defined' {
    run test -n "${functions[zpwrUpdater]+x}"
    assert $state equals 0
}

@test 'fn zpwrUpload is defined' {
    run test -n "${functions[zpwrUpload]+x}"
    assert $state equals 0
}

@test 'fn zpwrUrlSafe is defined' {
    run test -n "${functions[zpwrUrlSafe]+x}"
    assert $state equals 0
}

@test 'fn zpwrVerbsEditNoZLE is defined' {
    run test -n "${functions[zpwrVerbsEditNoZLE]+x}"
    assert $state equals 0
}

@test 'fn zpwrVerbsFZF is defined' {
    run test -n "${functions[zpwrVerbsFZF]+x}"
    assert $state equals 0
}

@test 'fn zpwrVerbsNoZLE is defined' {
    run test -n "${functions[zpwrVerbsNoZLE]+x}"
    assert $state equals 0
}

@test 'fn zpwrVerbsWidget is defined' {
    run test -n "${functions[zpwrVerbsWidget]+x}"
    assert $state equals 0
}

@test 'fn zpwrVerbsWidgetAccept is defined' {
    run test -n "${functions[zpwrVerbsWidgetAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimAll is defined' {
    run test -n "${functions[zpwrVimAll]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimAllEdit is defined' {
    run test -n "${functions[zpwrVimAllEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimAllWidget is defined' {
    run test -n "${functions[zpwrVimAllWidget]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimAllWidgetAccept is defined' {
    run test -n "${functions[zpwrVimAllWidgetAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimAutoload is defined' {
    run test -n "${functions[zpwrVimAutoload]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimEmacsConfig is defined' {
    run test -n "${functions[zpwrVimEmacsConfig]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimFzf is defined' {
    run test -n "${functions[zpwrVimFzf]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerb is defined' {
    run test -n "${functions[zpwrVimFzfFilesearchVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerbEdit is defined' {
    run test -n "${functions[zpwrVimFzfFilesearchVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchWidgetAccept is defined' {
    run test -n "${functions[zpwrVimFzfFilesearchWidgetAccept]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimFzfSudo is defined' {
    run test -n "${functions[zpwrVimFzfSudo]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerb is defined' {
    run test -n "${functions[zpwrVimFzfWordsearchVerb]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerbEdit is defined' {
    run test -n "${functions[zpwrVimFzfWordsearchVerbEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimPluginCount is defined' {
    run test -n "${functions[zpwrVimPluginCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimPluginList is defined' {
    run test -n "${functions[zpwrVimPluginList]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimRecent is defined' {
    run test -n "${functions[zpwrVimRecent]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimRecentCd is defined' {
    run test -n "${functions[zpwrVimRecentCd]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimScriptEdit is defined' {
    run test -n "${functions[zpwrVimScriptEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimScripts is defined' {
    run test -n "${functions[zpwrVimScripts]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrCtags is defined' {
    run test -n "${functions[zpwrVimZpwrCtags]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtags is defined' {
    run test -n "${functions[zpwrVimZpwrGtags]+x}"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtagsEdit is defined' {
    run test -n "${functions[zpwrVimZpwrGtagsEdit]+x}"
    assert $state equals 0
}

@test 'fn zpwrZcompdump is defined' {
    run test -n "${functions[zpwrZcompdump]+x}"
    assert $state equals 0
}

@test 'fn zpwrZFZF is defined' {
    run test -n "${functions[zpwrZFZF]+x}"
    assert $state equals 0
}

@test 'fn zpwrZinitUpdates is defined' {
    run test -n "${functions[zpwrZinitUpdates]+x}"
    assert $state equals 0
}

@test 'fn zpwrZshPluginCount is defined' {
    run test -n "${functions[zpwrZshPluginCount]+x}"
    assert $state equals 0
}

@test 'fn zpwrZshPluginList is defined' {
    run test -n "${functions[zpwrZshPluginList]+x}"
    assert $state equals 0
}

@test 'fn zpwrZshrcSearch is defined' {
    run test -n "${functions[zpwrZshrcSearch]+x}"
    assert $state equals 0
}

@test 'fn zpwrZstyle is defined' {
    run test -n "${functions[zpwrZstyle]+x}"
    assert $state equals 0
}

@test 'fn zpz is defined' {
    run test -n "${functions[zpz]+x}"
    assert $state equals 0
}

@test 'fn zr is defined' {
    run test -n "${functions[zr]+x}"
    assert $state equals 0
}

@test 'fn zs is defined' {
    run test -n "${functions[zs]+x}"
    assert $state equals 0
}

@test 'fn zsm is defined' {
    run test -n "${functions[zsm]+x}"
    assert $state equals 0
}

@test 'fn zt is defined' {
    run test -n "${functions[zt]+x}"
    assert $state equals 0
}

@test 'fn ztl is defined' {
    run test -n "${functions[ztl]+x}"
    assert $state equals 0
}

@test 'fn ztm is defined' {
    run test -n "${functions[ztm]+x}"
    assert $state equals 0
}

@test 'fn zua is defined' {
    run test -n "${functions[zua]+x}"
    assert $state equals 0
}

@test 'fn zpwrBench is defined' {
    run test -n "${functions[zpwrBench]+x}"
    assert $state equals 0
}

@test 'fn zpwrTop is defined' {
    run test -n "${functions[zpwrTop]+x}"
    assert $state equals 0
}

@test 'fn zpwrDoctor is defined' {
    run test -n "${functions[zpwrDoctor]+x}"
    assert $state equals 0
}

@test 'fn zpwrFlame is defined' {
    run test -n "${functions[zpwrFlame]+x}"
    assert $state equals 0
}

@test 'fn zpwrAliasRank is defined' {
    run test -n "${functions[zpwrAliasRank]+x}"
    assert $state equals 0
}

@test 'fn zpwrFuncRank is defined' {
    run test -n "${functions[zpwrFuncRank]+x}"
    assert $state equals 0
}

@test 'fn zpwrWatch is defined' {
    run test -n "${functions[zpwrWatch]+x}"
    assert $state equals 0
}

@test 'fn zpwrReplay is defined' {
    run test -n "${functions[zpwrReplay]+x}"
    assert $state equals 0
}

@test 'fn zpwrSnapshot is defined' {
    run test -n "${functions[zpwrSnapshot]+x}"
    assert $state equals 0
}

@test 'fn zpwrTrace is defined' {
    run test -n "${functions[zpwrTrace]+x}"
    assert $state equals 0
}

@test 'fn zpwrDeps is defined' {
    run test -n "${functions[zpwrDeps]+x}"
    assert $state equals 0
}

@test 'fn zpwrTailLog is defined' {
    run test -n "${functions[zpwrTailLog]+x}"
    assert $state equals 0
}

@test 'fn zpwrStudy is defined' {
    run test -n "${functions[zpwrStudy]+x}"
    assert $state equals 0
}

@test 'fn zpwrWizard is defined' {
    run test -n "${functions[zpwrWizard]+x}"
    assert $state equals 0
}
