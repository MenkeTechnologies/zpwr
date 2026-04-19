#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test syntax of all autoload/common function files
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn a source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/a"
    assert $state equals 0
}

@test 'fn apz source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/apz"
    assert $state equals 0
}

@test 'fn asg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/asg"
    assert $state equals 0
}

@test 'fn b source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/b"
    assert $state equals 0
}

@test 'fn c source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/c"
    assert $state equals 0
}

@test 'fn cca source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/cca"
    assert $state equals 0
}

@test 'fn cd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/cd"
    assert $state equals 0
}

@test 'fn ce source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ce"
    assert $state equals 0
}

@test 'fn cg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/cg"
    assert $state equals 0
}

@test 'fn cgh source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/cgh"
    assert $state equals 0
}

@test 'fn color2 source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/color2"
    assert $state equals 0
}

@test 'fn cv source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/cv"
    assert $state equals 0
}

@test 'fn d source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/d"
    assert $state equals 0
}

@test 'fn dbz source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/dbz"
    assert $state equals 0
}

@test 'fn de source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/de"
    assert $state equals 0
}

@test 'fn digs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/digs"
    assert $state equals 0
}

@test 'fn dl source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/dl"
    assert $state equals 0
}

@test 'fn docu source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/docu"
    assert $state equals 0
}

@test 'fn e source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/e"
    assert $state equals 0
}

@test 'fn eb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/eb"
    assert $state equals 0
}

@test 'fn em source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/em"
    assert $state equals 0
}

@test 'fn emm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/emm"
    assert $state equals 0
}

@test 'fn f source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/f"
    assert $state equals 0
}

@test 'fn ff source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ff"
    assert $state equals 0
}

@test 'fn fff source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/fff"
    assert $state equals 0
}

@test 'fn fm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/fm"
    assert $state equals 0
}

@test 'fn fp source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/fp"
    assert $state equals 0
}

@test 'fn gcl source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/gcl"
    assert $state equals 0
}

@test 'fn ge source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ge"
    assert $state equals 0
}

@test 'fn gil source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/gil"
    assert $state equals 0
}

@test 'fn gsdc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/gsdc"
    assert $state equals 0
}

@test 'fn gse source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/gse"
    assert $state equals 0
}

@test 'fn h source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/h"
    assert $state equals 0
}

@test 'fn hc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/hc"
    assert $state equals 0
}

@test 'fn hd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/hd"
    assert $state equals 0
}

@test 'fn ig source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ig"
    assert $state equals 0
}

@test 'fn ino source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ino"
    assert $state equals 0
}

@test 'fn j source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/j"
    assert $state equals 0
}

@test 'fn jd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/jd"
    assert $state equals 0
}

@test 'fn kr source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/kr"
    assert $state equals 0
}

@test 'fn lcm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/lcm"
    assert $state equals 0
}

@test 'fn mg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/mg"
    assert $state equals 0
}

@test 'fn nz source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/nz"
    assert $state equals 0
}

@test 'fn o source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/o"
    assert $state equals 0
}

@test 'fn p source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/p"
    assert $state equals 0
}

@test 'fn pg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/pg"
    assert $state equals 0
}

@test 'fn post source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/post"
    assert $state equals 0
}

@test 'fn pre source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/pre"
    assert $state equals 0
}

@test 'fn r source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/r"
    assert $state equals 0
}

@test 'fn return2 source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/return2"
    assert $state equals 0
}

@test 'fn rm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/rm"
    assert $state equals 0
}

@test 'fn sub source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/sub"
    assert $state equals 0
}

@test 'fn suc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/suc"
    assert $state equals 0
}

@test 'fn t source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/t"
    assert $state equals 0
}

@test 'fn tac source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/tac"
    assert $state equals 0
}

@test 'fn tma source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/tma"
    assert $state equals 0
}

@test 'fn to source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/to"
    assert $state equals 0
}

@test 'fn ue source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ue"
    assert $state equals 0
}

@test 'fn va source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/va"
    assert $state equals 0
}

@test 'fn vb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/vb"
    assert $state equals 0
}

@test 'fn vl source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/vl"
    assert $state equals 0
}

@test 'fn we source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/we"
    assert $state equals 0
}

@test 'fn wg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/wg"
    assert $state equals 0
}

@test 'fn ww source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ww"
    assert $state equals 0
}

@test 'fn www source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/www"
    assert $state equals 0
}

@test 'fn xx source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/xx"
    assert $state equals 0
}

@test 'fn z source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/z"
    assert $state equals 0
}

@test 'fn zal source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zal"
    assert $state equals 0
}

@test 'fn zalc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zalc"
    assert $state equals 0
}

@test 'fn zald source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zald"
    assert $state equals 0
}

@test 'fn zalf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zalf"
    assert $state equals 0
}

@test 'fn zall source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zall"
    assert $state equals 0
}

@test 'fn zalo source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zalo"
    assert $state equals 0
}

@test 'fn zals source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zals"
    assert $state equals 0
}

@test 'fn zalu source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zalu"
    assert $state equals 0
}

@test 'fn zarg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zarg"
    assert $state equals 0
}

@test 'fn zco source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zco"
    assert $state equals 0
}

@test 'fn zd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zd"
    assert $state equals 0
}

@test 'fn ze source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ze"
    assert $state equals 0
}

@test 'fn zg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zg"
    assert $state equals 0
}

@test 'fn zh source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zh"
    assert $state equals 0
}

@test 'fn zhb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zhb"
    assert $state equals 0
}

@test 'fn zhc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zhc"
    assert $state equals 0
}

@test 'fn zhp source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zhp"
    assert $state equals 0
}

@test 'fn zhs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zhs"
    assert $state equals 0
}

@test 'fn zil source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zil"
    assert $state equals 0
}

@test 'fn zl source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zl"
    assert $state equals 0
}

@test 'fn zlc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zlc"
    assert $state equals 0
}

@test 'fn zli source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zli"
    assert $state equals 0
}

@test 'fn zlr source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zlr"
    assert $state equals 0
}

@test 'fn zlt source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zlt"
    assert $state equals 0
}

@test 'fn zm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zm"
    assert $state equals 0
}

@test 'fn zpl source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpl"
    assert $state equals 0
}

@test 'fn zpwr source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwr"
    assert $state equals 0
}

@test 'fn zpwr256ColorTest source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwr256ColorTest"
    assert $state equals 0
}

@test 'fn zpwrAbout source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAbout"
    assert $state equals 0
}

@test 'fn zpwrAcceptLine source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAcceptLine"
    assert $state equals 0
}

@test 'fn zpwrAddOMZAttrib source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAddOMZAttrib"
    assert $state equals 0
}

@test 'fn zpwrAgIntoFzf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAgIntoFzf"
    assert $state equals 0
}

@test 'fn zpwrAlacritty source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAlacritty"
    assert $state equals 0
}

@test 'fn zpwrAllRemotes source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAllRemotes"
    assert $state equals 0
}

@test 'fn zpwrAllUpdates source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAllUpdates"
    assert $state equals 0
}

@test 'fn zpwrAlternateQuotes source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAlternateQuotes"
    assert $state equals 0
}

@test 'fn zpwrAnimate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAnimate"
    assert $state equals 0
}

@test 'fn zpwrArrayToJson source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrArrayToJson"
    assert $state equals 0
}

@test 'fn zpwrAsVar source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAsVar"
    assert $state equals 0
}

@test 'fn zpwrAutoloadCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAutoloadCount"
    assert $state equals 0
}

@test 'fn zpwrAutoloadList source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAutoloadList"
    assert $state equals 0
}

@test 'fn zpwrBackup source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBackup"
    assert $state equals 0
}

@test 'fn zpwrBackupHistfile source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBackupHistfile"
    assert $state equals 0
}

@test 'fn zpwrBannerCounts source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBannerCounts"
    assert $state equals 0
}

@test 'fn zpwrBannerLolcat source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBannerLolcat"
    assert $state equals 0
}

@test 'fn zpwrBindAliasesLate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindAliasesLate"
    assert $state equals 0
}

@test 'fn zpwrBindAliasesZshLate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindAliasesZshLate"
    assert $state equals 0
}

@test 'fn zpwrBindDirs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindDirs"
    assert $state equals 0
}

@test 'fn zpwrBindFinal source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindFinal"
    assert $state equals 0
}

@test 'fn zpwrBindForGit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindForGit"
    assert $state equals 0
}

@test 'fn zpwrBindFZFLate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindFZFLate"
    assert $state equals 0
}

@test 'fn zpwrBindHistorySubstring source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindHistorySubstring"
    assert $state equals 0
}

@test 'fn zpwrBindInterceptSurround source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindInterceptSurround"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideAutoComplete source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideAutoComplete"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZ source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideOMZ"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZCompdefs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideOMZCompdefs"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideZLE source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindOverrideZLE"
    assert $state equals 0
}

@test 'fn zpwrBindPenultimate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPenultimate"
    assert $state equals 0
}

@test 'fn zpwrBindPowerline source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPowerline"
    assert $state equals 0
}

@test 'fn zpwrBindPowerlineTmux source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPowerlineTmux"
    assert $state equals 0
}

@test 'fn zpwrBindPrecmd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPrecmd"
    assert $state equals 0
}

@test 'fn zpwrBindPreexecChpwd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindPreexecChpwd"
    assert $state equals 0
}

@test 'fn zpwrBindVerbs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindVerbs"
    assert $state equals 0
}

@test 'fn zpwrBindZdharma source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZdharma"
    assert $state equals 0
}

@test 'fn zpwrBindZdharmaPost source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZdharmaPost"
    assert $state equals 0
}

@test 'fn zpwrBindZstyle source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindZstyle"
    assert $state equals 0
}

@test 'fn zpwrBufferXtrace source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBufferXtrace"
    assert $state equals 0
}

@test 'fn zpwrCat source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCat"
    assert $state equals 0
}

@test 'fn zpwrCatNvimOrVimInfo source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCatNvimOrVimInfo"
    assert $state equals 0
}

@test 'fn zpwrCCommon source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCCommon"
    assert $state equals 0
}

@test 'fn zpwrCd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCd"
    assert $state equals 0
}

@test 'fn zpwrCdUp source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCdUp"
    assert $state equals 0
}

@test 'fn zpwrCdVimFzfFilesearchWidgetAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCdVimFzfFilesearchWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrChangeGitAuthorEmail source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitAuthorEmail"
    assert $state equals 0
}

@test 'fn zpwrChangeGitCommitterEmail source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitCommitterEmail"
    assert $state equals 0
}

@test 'fn zpwrChangeGitEmail source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeGitEmail"
    assert $state equals 0
}

@test 'fn zpwrChangeName source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeName"
    assert $state equals 0
}

@test 'fn zpwrChangeNameZpwr source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeNameZpwr"
    assert $state equals 0
}

@test 'fn zpwrChangeQuotes source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrChangeQuotes"
    assert $state equals 0
}

@test 'fn zpwrChpwd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrChpwd"
    assert $state equals 0
}

@test 'fn zpwrCleanAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanAll"
    assert $state equals 0
}

@test 'fn zpwrCleanCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanCache"
    assert $state equals 0
}

@test 'fn zpwrCleanCompCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanCompCache"
    assert $state equals 0
}

@test 'fn zpwrCleanDirs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanDirs"
    assert $state equals 0
}

@test 'fn zpwrCleanDirsAndTemp source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanDirsAndTemp"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoCache"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCleanCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoCleanCache"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoDirtyCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanGitRepoDirtyCache"
    assert $state equals 0
}

@test 'fn zpwrCleanLog source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanLog"
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshCountsTestUpdate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanRefreshCountsTestUpdate"
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshUpdate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanRefreshUpdate"
    assert $state equals 0
}

@test 'fn zpwrCleanTemp source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanTemp"
    assert $state equals 0
}

@test 'fn zpwrCleanUpdateDeps source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCleanUpdateDeps"
    assert $state equals 0
}

@test 'fn zpwrClearGitCommit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearGitCommit"
    assert $state equals 0
}

@test 'fn zpwrClearGitFile source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearGitFile"
    assert $state equals 0
}

@test 'fn zpwrClearLine source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearLine"
    assert $state equals 0
}

@test 'fn zpwrClearListFZF source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrClearListFZF"
    assert $state equals 0
}

@test 'fn zpwrClipboard source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrClipboard"
    assert $state equals 0
}

@test 'fn zpwrCloneToForked source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCloneToForked"
    assert $state equals 0
}

@test 'fn zpwrColorTest source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrColorTest"
    assert $state equals 0
}

@test 'fn zpwrCommits source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCommits"
    assert $state equals 0
}

@test 'fn zpwrConfirm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrConfirm"
    assert $state equals 0
}

@test 'fn zpwrContribCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCount"
    assert $state equals 0
}

@test 'fn zpwrContribCountDirs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCountDirs"
    assert $state equals 0
}

@test 'fn zpwrContribCountLines source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrContribCountLines"
    assert $state equals 0
}

@test 'fn zpwrCreateAliasCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCreateAliasCache"
    assert $state equals 0
}

@test 'fn zpwrCreategif source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrCreategif"
    assert $state equals 0
}

@test 'fn zpwrDedupPaths source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrDedupPaths"
    assert $state equals 0
}

@test 'fn zpwrDeleteLastWord source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrDeleteLastWord"
    assert $state equals 0
}

@test 'fn zpwrDetachall source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrDetachall"
    assert $state equals 0
}

@test 'fn zpwrDfimage source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrDfimage"
    assert $state equals 0
}

@test 'fn zpwrDockerWipe source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrDockerWipe"
    assert $state equals 0
}

@test 'fn zpwrEditExercism source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditExercism"
    assert $state equals 0
}

@test 'fn zpwrEditor source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditor"
    assert $state equals 0
}

@test 'fn zpwrEditorRecent source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditorRecent"
    assert $state equals 0
}

@test 'fn zpwrEditorRecentCd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditorRecentCd"
    assert $state equals 0
}

@test 'fn zpwrEditTag source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEditTag"
    assert $state equals 0
}

@test 'fn zpwrEmacsAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAll"
    assert $state equals 0
}

@test 'fn zpwrEmacsAllEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAllEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsAllServer source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAllServer"
    assert $state equals 0
}

@test 'fn zpwrEmacsAutoload source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsAutoload"
    assert $state equals 0
}

@test 'fn zpwrEmacsEmacsConfig source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsEmacsConfig"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzf"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerb"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsPluginCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsPluginCount"
    assert $state equals 0
}

@test 'fn zpwrEmacsPluginList source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsPluginList"
    assert $state equals 0
}

@test 'fn zpwrEmacsRecent source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsRecent"
    assert $state equals 0
}

@test 'fn zpwrEmacsRecentCd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsRecentCd"
    assert $state equals 0
}

@test 'fn zpwrEmacsScriptEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsScriptEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsScripts source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsScripts"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwr source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwr"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrCtags source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwrCtags"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtags source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwrGtags"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtagsEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEmacsZpwrGtagsEdit"
    assert $state equals 0
}

@test 'fn zpwrEnvCounts source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvCounts"
    assert $state equals 0
}

@test 'fn zpwrEnvVars source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvVars"
    assert $state equals 0
}

@test 'fn zpwrEnvVarsAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEnvVarsAll"
    assert $state equals 0
}

@test 'fn zpwrEOLorNextTabStop source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEOLorNextTabStop"
    assert $state equals 0
}

@test 'fn zpwrEvalTester source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrEvalTester"
    assert $state equals 0
}

@test 'fn zpwrExecGlob source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecGlob"
    assert $state equals 0
}

@test 'fn zpwrExecGlobParallel source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecGlobParallel"
    assert $state equals 0
}

@test 'fn zpwrExecpy source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrExecpy"
    assert $state equals 0
}

@test 'fn zpwrExercismDownloadAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrExercismDownloadAll"
    assert $state equals 0
}

@test 'fn zpwrExpandAliasAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrExpandAliasAccept"
    assert $state equals 0
}

@test 'fn zpwrExpandAliases source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrExpandAliases"
    assert $state equals 0
}

@test 'fn zpwrExpandOrCompleteWithDots source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrExpandOrCompleteWithDots"
    assert $state equals 0
}

@test 'fn zpwrFasdFList source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFList"
    assert $state equals 0
}

@test 'fn zpwrFasdFListVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFListVerb"
    assert $state equals 0
}

@test 'fn zpwrFasdFZF source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFasdFZF"
    assert $state equals 0
}

@test 'fn zpwrFigletfonts source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFigletfonts"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLE source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLE"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEC source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEEmacs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEVim source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLE source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLE"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEC source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEEmacs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEVim source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFindFzfNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirs"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsClean source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsClean"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsDirty source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsDirty"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshClean source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshClean"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshDirty source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshDirty"
    assert $state equals 0
}

@test 'fn zpwrFordir source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFordir"
    assert $state equals 0
}

@test 'fn zpwrFordirUpdate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFordirUpdate"
    assert $state equals 0
}

@test 'fn zpwrFzfAllKeybind source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfAllKeybind"
    assert $state equals 0
}

@test 'fn zpwrFzfCommits source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfCommits"
    assert $state equals 0
}

@test 'fn zpwrFzfDirSearch source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfDirSearch"
    assert $state equals 0
}

@test 'fn zpwrFzfDirsearchVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfDirsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfEnv source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnv"
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfEnvVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrFzfFileSearch source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFileSearch"
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFilesearchVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrFzfSurround source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfSurround"
    assert $state equals 0
}

@test 'fn zpwrFzfVimKeybind source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfVimKeybind"
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfWordsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrFzfZList source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZList"
    assert $state equals 0
}

@test 'fn zpwrFzfZListVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZListVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfZshKeybind source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzfZshKeybind"
    assert $state equals 0
}

@test 'fn zpwrFzvim source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzvim"
    assert $state equals 0
}

@test 'fn zpwrFzvimAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzvimAll"
    assert $state equals 0
}

@test 'fn zpwrFzvimScript source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFzvimScript"
    assert $state equals 0
}

@test 'fn zpwrGetFound source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetFound"
    assert $state equals 0
}

@test 'fn zpwrGetGHDelURL source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetGHDelURL"
    assert $state equals 0
}

@test 'fn zpwrGetGtags source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetGtags"
    assert $state equals 0
}

@test 'fn zpwrGetGtagsEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetGtagsEdit"
    assert $state equals 0
}

@test 'fn zpwrGetLocate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetLocate"
    assert $state equals 0
}

@test 'fn zpwrGetrc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrc"
    assert $state equals 0
}

@test 'fn zpwrGetrcdev source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrcdev"
    assert $state equals 0
}

@test 'fn zpwrGetrcWidget source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGetrcWidget"
    assert $state equals 0
}

@test 'fn zpwrgh source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrgh"
    assert $state equals 0
}

@test 'fn zpwrGitCheckoutRebasePush source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitCheckoutRebasePush"
    assert $state equals 0
}

@test 'fn zpwrGitConfig source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitConfig"
    assert $state equals 0
}

@test 'fn zpwrGitIgnores source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitIgnores"
    assert $state equals 0
}

@test 'fn zpwrGitReposFile source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGitReposFile"
    assert $state equals 0
}

@test 'fn zpwrGoclean source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGoclean"
    assert $state equals 0
}

@test 'fn zpwrGoogle source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGoogle"
    assert $state equals 0
}

@test 'fn zpwrGtagsIntoFzf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrGtagsIntoFzf"
    assert $state equals 0
}

@test 'fn zpwrHistfile source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistfile"
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistoryVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrHistoryVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrInterceptDelete source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrInterceptDelete"
    assert $state equals 0
}

@test 'fn zpwrInterceptSurround source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrInterceptSurround"
    assert $state equals 0
}

@test 'fn zpwrIntoFzf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrIntoFzf"
    assert $state equals 0
}

@test 'fn zpwrIntoFzfAg source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrIntoFzfAg"
    assert $state equals 0
}

@test 'fn zpwrJetbrainsWorkspaceEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrJetbrainsWorkspaceEdit"
    assert $state equals 0
}

@test 'fn zpwrJsonToArray source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrJsonToArray"
    assert $state equals 0
}

@test 'fn zpwrKeyClear source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrKeyClear"
    assert $state equals 0
}

@test 'fn zpwrKeySender source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrKeySender"
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillLsofVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillLsofVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillPSVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillPSVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrKillRemote source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrKillRemote"
    assert $state equals 0
}

@test 'fn zpwrLargestGitFiles source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLargestGitFiles"
    assert $state equals 0
}

@test 'fn zpwrLastWordDouble source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLastWordDouble"
    assert $state equals 0
}

@test 'fn zpwrLineCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLineCount"
    assert $state equals 0
}

@test 'fn zpwrLinkConf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLinkConf"
    assert $state equals 0
}

@test 'fn zpwrListFiles source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrListFiles"
    assert $state equals 0
}

@test 'fn zpwrListNoClear source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrListNoClear"
    assert $state equals 0
}

@test 'fn zpwrListVerbs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrListVerbs"
    assert $state equals 0
}

@test 'fn zpwrListVerbsColor source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrListVerbsColor"
    assert $state equals 0
}

@test 'fn zpwrLoadJenv source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLoadJenv"
    assert $state equals 0
}

@test 'fn zpwrLocateFzf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzf"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEdit"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLE source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLE"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEC source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEEmacs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEVim source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLE source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLE"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEC source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEEmacs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEVim source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLocateFzfNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrLoginCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLoginCount"
    assert $state equals 0
}

@test 'fn zpwrLsoffzf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrLsoffzf"
    assert $state equals 0
}

@test 'fn zpwrMagicEnter source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrMagicEnter"
    assert $state equals 0
}

@test 'fn zpwrModulesFZF source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrModulesFZF"
    assert $state equals 0
}

@test 'fn zpwrMycurl source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrMycurl"
    assert $state equals 0
}

@test 'fn zpwrNoPonyBanner source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrNoPonyBanner"
    assert $state equals 0
}

@test 'fn zpwrNumVerbs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrNumVerbs"
    assert $state equals 0
}

@test 'fn zpwrNvimThenRecentf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrNvimThenRecentf"
    assert $state equals 0
}

@test 'fn zpwrOmzOverrides source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrOmzOverrides"
    assert $state equals 0
}

@test 'fn zpwrOpen source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpen"
    assert $state equals 0
}

@test 'fn zpwrOpenExercism source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpenExercism"
    assert $state equals 0
}

@test 'fn zpwrOpenmygh source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrOpenmygh"
    assert $state equals 0
}

@test 'fn zpwrOptionsFZF source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrOptionsFZF"
    assert $state equals 0
}

@test 'fn zpwrParseRecentf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrParseRecentf"
    assert $state equals 0
}

@test 'fn zpwrPasteToBuffer source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPasteToBuffer"
    assert $state equals 0
}

@test 'fn zpwrPasteToStdout source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPasteToStdout"
    assert $state equals 0
}

@test 'fn zpwrPirun source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPirun"
    assert $state equals 0
}

@test 'fn zpwrPoll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPoll"
    assert $state equals 0
}

@test 'fn zpwrPonyBanner source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPonyBanner"
    assert $state equals 0
}

@test 'fn zpwrPrecmd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPrecmd"
    assert $state equals 0
}

@test 'fn zpwrPreexec source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPreexec"
    assert $state equals 0
}

@test 'fn zpwrPrintMap source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPrintMap"
    assert $state equals 0
}

@test 'fn zpwrPstreemonitor source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPstreemonitor"
    assert $state equals 0
}

@test 'fn zpwrPygmentcolors source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrPygmentcolors"
    assert $state equals 0
}

@test 'fn zpwrRationalizeDot source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRationalizeDot"
    assert $state equals 0
}

@test 'fn zpwrRecentfThenNvim source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecentfThenNvim"
    assert $state equals 0
}

@test 'fn zpwrRecompile source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecompile"
    assert $state equals 0
}

@test 'fn zpwrRecompileFiles source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecompileFiles"
    assert $state equals 0
}

@test 'fn zpwrRecompileFpath source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRecompileFpath"
    assert $state equals 0
}

@test 'fn zpwrRefreshZwc source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRefreshZwc"
    assert $state equals 0
}

@test 'fn zpwrRegenAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenAll"
    assert $state equals 0
}

@test 'fn zpwrRegenAllKeybindingsCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenAllKeybindingsCache"
    assert $state equals 0
}

@test 'fn zpwrRegenConfigLinks source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenConfigLinks"
    assert $state equals 0
}

@test 'fn zpwrRegenCtags source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenCtags"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsCtags source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsCtags"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsPygments source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsPygments"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsType source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenGtagsType"
    assert $state equals 0
}

@test 'fn zpwrRegenHistory source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenHistory"
    assert $state equals 0
}

@test 'fn zpwrRegenMost source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenMost"
    assert $state equals 0
}

@test 'fn zpwrRegenPowerlineLink source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenPowerlineLink"
    assert $state equals 0
}

@test 'fn zpwrRegenSearchEnv source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenSearchEnv"
    assert $state equals 0
}

@test 'fn zpwrRegenZshCompCache source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegenZshCompCache"
    assert $state equals 0
}

@test 'fn zpwrRegexp-replace-single source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRegexp-replace-single"
    assert $state equals 0
}

@test 'fn zpwrReload source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrReload"
    assert $state equals 0
}

@test 'fn zpwrRelPath source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRelPath"
    assert $state equals 0
}

@test 'fn zpwrRename source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRename"
    assert $state equals 0
}

@test 'fn zpwrReplacer source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrReplacer"
    assert $state equals 0
}

@test 'fn zpwrReset source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrReset"
    assert $state equals 0
}

@test 'fn zpwrRestoreHistfile source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRestoreHistfile"
    assert $state equals 0
}

@test 'fn zpwrRetryZcompdump source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRetryZcompdump"
    assert $state equals 0
}

@test 'fn zpwrRevealRecurse source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRevealRecurse"
    assert $state equals 0
}

@test 'fn zpwrRunner source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrRunner"
    assert $state equals 0
}

@test 'fn zpwrScnew source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrScnew"
    assert $state equals 0
}

@test 'fn zpwrScriptCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrScriptCount"
    assert $state equals 0
}

@test 'fn zpwrScriptList source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrScriptList"
    assert $state equals 0
}

@test 'fn zpwrScripts source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrScripts"
    assert $state equals 0
}

@test 'fn zpwrSearch source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSearch"
    assert $state equals 0
}

@test 'fn zpwrSelfInsert source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSelfInsert"
    assert $state equals 0
}

@test 'fn zpwrSshRegain source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSshRegain"
    assert $state equals 0
}

@test 'fn zpwrStaleZcompdump source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrStaleZcompdump"
    assert $state equals 0
}

@test 'fn zpwrStartAutoComplete source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartAutoComplete"
    assert $state equals 0
}

@test 'fn zpwrStartSend source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartSend"
    assert $state equals 0
}

@test 'fn zpwrStartSendFull source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrStartSendFull"
    assert $state equals 0
}

@test 'fn zpwrStopAutoComplete source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrStopAutoComplete"
    assert $state equals 0
}

@test 'fn zpwrStopSend source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrStopSend"
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecent source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEditorRecent"
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecentCd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEditorRecentCd"
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecent source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEmacsRecent"
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecentCd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoEmacsRecentCd"
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecent source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoVimRecent"
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecentCd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSudoVimRecentCd"
    assert $state equals 0
}

@test 'fn zpwrTabNum source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTabNum"
    assert $state equals 0
}

@test 'fn zpwrTabNumCmd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTabNumCmd"
    assert $state equals 0
}

@test 'fn zpwrTest source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTest"
    assert $state equals 0
}

@test 'fn zpwrTestAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTestAll"
    assert $state equals 0
}

@test 'fn zpwrTimer source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTimer"
    assert $state equals 0
}

@test 'fn zpwrTmux_capture_paner source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTmux_capture_paner"
    assert $state equals 0
}

@test 'fn zpwrTmux_pane_words source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTmux_pane_words"
    assert $state equals 0
}

@test 'fn zpwrTorip source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTorip"
    assert $state equals 0
}

@test 'fn zpwrToriprenew source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrToriprenew"
    assert $state equals 0
}

@test 'fn zpwrTotalLines source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTotalLines"
    assert $state equals 0
}

@test 'fn zpwrTutsUpdate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTutsUpdate"
    assert $state equals 0
}

@test 'fn zpwrUncompile source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUncompile"
    assert $state equals 0
}

@test 'fn zpwrUninstall source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUninstall"
    assert $state equals 0
}

@test 'fn zpwrUnlinkConf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUnlinkConf"
    assert $state equals 0
}

@test 'fn zpwrUp8widget source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUp8widget"
    assert $state equals 0
}

@test 'fn zpwrUpdate source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdate"
    assert $state equals 0
}

@test 'fn zpwrUpdateAllGitDirs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateAllGitDirs"
    assert $state equals 0
}

@test 'fn zpwrUpdateDeps source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateDeps"
    assert $state equals 0
}

@test 'fn zpwrUpdateDepsClean source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdateDepsClean"
    assert $state equals 0
}

@test 'fn zpwrUpdater source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpdater"
    assert $state equals 0
}

@test 'fn zpwrUpload source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUpload"
    assert $state equals 0
}

@test 'fn zpwrUrlSafe source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrUrlSafe"
    assert $state equals 0
}

@test 'fn zpwrVerbsEditNoZLE source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsEditNoZLE"
    assert $state equals 0
}

@test 'fn zpwrVerbsFZF source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsFZF"
    assert $state equals 0
}

@test 'fn zpwrVerbsNoZLE source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsNoZLE"
    assert $state equals 0
}

@test 'fn zpwrVerbsWidget source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsWidget"
    assert $state equals 0
}

@test 'fn zpwrVerbsWidgetAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVerbsWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrVimAll source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAll"
    assert $state equals 0
}

@test 'fn zpwrVimAllEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllEdit"
    assert $state equals 0
}

@test 'fn zpwrVimAllWidget source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllWidget"
    assert $state equals 0
}

@test 'fn zpwrVimAllWidgetAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAllWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrVimAutoload source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimAutoload"
    assert $state equals 0
}

@test 'fn zpwrVimEmacsConfig source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimEmacsConfig"
    assert $state equals 0
}

@test 'fn zpwrVimFzf source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzf"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfFilesearchVerb"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchWidgetAccept source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfFilesearchWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrVimFzfSudo source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfSudo"
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerb source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfWordsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerbEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrVimPluginCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimPluginCount"
    assert $state equals 0
}

@test 'fn zpwrVimPluginList source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimPluginList"
    assert $state equals 0
}

@test 'fn zpwrVimRecent source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimRecent"
    assert $state equals 0
}

@test 'fn zpwrVimRecentCd source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimRecentCd"
    assert $state equals 0
}

@test 'fn zpwrVimScriptEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimScriptEdit"
    assert $state equals 0
}

@test 'fn zpwrVimScripts source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimScripts"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrCtags source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimZpwrCtags"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtags source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimZpwrGtags"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtagsEdit source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrVimZpwrGtagsEdit"
    assert $state equals 0
}

@test 'fn zpwrZcompdump source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrZcompdump"
    assert $state equals 0
}

@test 'fn zpwrZFZF source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrZFZF"
    assert $state equals 0
}

@test 'fn zpwrZinitUpdates source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrZinitUpdates"
    assert $state equals 0
}

@test 'fn zpwrZshPluginCount source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrZshPluginCount"
    assert $state equals 0
}

@test 'fn zpwrZshPluginList source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrZshPluginList"
    assert $state equals 0
}

@test 'fn zpwrZshrcSearch source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrZshrcSearch"
    assert $state equals 0
}

@test 'fn zpwrZstyle source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrZstyle"
    assert $state equals 0
}

@test 'fn zpz source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpz"
    assert $state equals 0
}

@test 'fn zr source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zr"
    assert $state equals 0
}

@test 'fn zs source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zs"
    assert $state equals 0
}

@test 'fn zsm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zsm"
    assert $state equals 0
}

@test 'fn zt source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zt"
    assert $state equals 0
}

@test 'fn ztl source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ztl"
    assert $state equals 0
}

@test 'fn ztm source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/ztm"
    assert $state equals 0
}

@test 'fn zua source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zua"
    assert $state equals 0
}

@test 'fn zpwrBench source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrBench"
    assert $state equals 0
}

@test 'fn zpwrTop source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTop"
    assert $state equals 0
}

@test 'fn zpwrDoctor source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrDoctor"
    assert $state equals 0
}

@test 'fn zpwrFlame source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFlame"
    assert $state equals 0
}

@test 'fn zpwrAliasRank source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrAliasRank"
    assert $state equals 0
}

@test 'fn zpwrFuncRank source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrFuncRank"
    assert $state equals 0
}

@test 'fn zpwrWatch source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrWatch"
    assert $state equals 0
}

@test 'fn zpwrReplay source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrReplay"
    assert $state equals 0
}

@test 'fn zpwrSnapshot source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrSnapshot"
    assert $state equals 0
}

@test 'fn zpwrTrace source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTrace"
    assert $state equals 0
}

@test 'fn zpwrDeps source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrDeps"
    assert $state equals 0
}

@test 'fn zpwrTailLog source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrTailLog"
    assert $state equals 0
}

@test 'fn zpwrStudy source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrStudy"
    assert $state equals 0
}

@test 'fn zpwrWizard source syntax valid' {
    run zsh -n "$ZPWR/autoload/common/zpwrWizard"
    assert $state equals 0
}
