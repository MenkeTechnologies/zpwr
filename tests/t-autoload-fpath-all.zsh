#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all autoload/common function files exist
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn a file exists in fpath' {
    run test -f "$ZPWR/autoload/common/a"
    assert $state equals 0
}

@test 'fn apz file exists in fpath' {
    run test -f "$ZPWR/autoload/common/apz"
    assert $state equals 0
}

@test 'fn asg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/asg"
    assert $state equals 0
}

@test 'fn b file exists in fpath' {
    run test -f "$ZPWR/autoload/common/b"
    assert $state equals 0
}

@test 'fn c file exists in fpath' {
    run test -f "$ZPWR/autoload/common/c"
    assert $state equals 0
}

@test 'fn cca file exists in fpath' {
    run test -f "$ZPWR/autoload/common/cca"
    assert $state equals 0
}

@test 'fn cd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/cd"
    assert $state equals 0
}

@test 'fn ce file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ce"
    assert $state equals 0
}

@test 'fn cg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/cg"
    assert $state equals 0
}

@test 'fn cgh file exists in fpath' {
    run test -f "$ZPWR/autoload/common/cgh"
    assert $state equals 0
}

@test 'fn color2 file exists in fpath' {
    run test -f "$ZPWR/autoload/common/color2"
    assert $state equals 0
}

@test 'fn cv file exists in fpath' {
    run test -f "$ZPWR/autoload/common/cv"
    assert $state equals 0
}

@test 'fn d file exists in fpath' {
    run test -f "$ZPWR/autoload/common/d"
    assert $state equals 0
}

@test 'fn dbz file exists in fpath' {
    run test -f "$ZPWR/autoload/common/dbz"
    assert $state equals 0
}

@test 'fn de file exists in fpath' {
    run test -f "$ZPWR/autoload/common/de"
    assert $state equals 0
}

@test 'fn digs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/digs"
    assert $state equals 0
}

@test 'fn dl file exists in fpath' {
    run test -f "$ZPWR/autoload/common/dl"
    assert $state equals 0
}

@test 'fn docu file exists in fpath' {
    run test -f "$ZPWR/autoload/common/docu"
    assert $state equals 0
}

@test 'fn e file exists in fpath' {
    run test -f "$ZPWR/autoload/common/e"
    assert $state equals 0
}

@test 'fn eb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/eb"
    assert $state equals 0
}

@test 'fn em file exists in fpath' {
    run test -f "$ZPWR/autoload/common/em"
    assert $state equals 0
}

@test 'fn emm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/emm"
    assert $state equals 0
}

@test 'fn f file exists in fpath' {
    run test -f "$ZPWR/autoload/common/f"
    assert $state equals 0
}

@test 'fn ff file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ff"
    assert $state equals 0
}

@test 'fn fff file exists in fpath' {
    run test -f "$ZPWR/autoload/common/fff"
    assert $state equals 0
}

@test 'fn fm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/fm"
    assert $state equals 0
}

@test 'fn fp file exists in fpath' {
    run test -f "$ZPWR/autoload/common/fp"
    assert $state equals 0
}

@test 'fn gcl file exists in fpath' {
    run test -f "$ZPWR/autoload/common/gcl"
    assert $state equals 0
}

@test 'fn ge file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ge"
    assert $state equals 0
}

@test 'fn gil file exists in fpath' {
    run test -f "$ZPWR/autoload/common/gil"
    assert $state equals 0
}

@test 'fn gsdc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/gsdc"
    assert $state equals 0
}

@test 'fn gse file exists in fpath' {
    run test -f "$ZPWR/autoload/common/gse"
    assert $state equals 0
}

@test 'fn h file exists in fpath' {
    run test -f "$ZPWR/autoload/common/h"
    assert $state equals 0
}

@test 'fn hc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/hc"
    assert $state equals 0
}

@test 'fn hd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/hd"
    assert $state equals 0
}

@test 'fn ig file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ig"
    assert $state equals 0
}

@test 'fn ino file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ino"
    assert $state equals 0
}

@test 'fn j file exists in fpath' {
    run test -f "$ZPWR/autoload/common/j"
    assert $state equals 0
}

@test 'fn jd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/jd"
    assert $state equals 0
}

@test 'fn kr file exists in fpath' {
    run test -f "$ZPWR/autoload/common/kr"
    assert $state equals 0
}

@test 'fn lcm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/lcm"
    assert $state equals 0
}

@test 'fn mg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/mg"
    assert $state equals 0
}

@test 'fn nz file exists in fpath' {
    run test -f "$ZPWR/autoload/common/nz"
    assert $state equals 0
}

@test 'fn o file exists in fpath' {
    run test -f "$ZPWR/autoload/common/o"
    assert $state equals 0
}

@test 'fn p file exists in fpath' {
    run test -f "$ZPWR/autoload/common/p"
    assert $state equals 0
}

@test 'fn pg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/pg"
    assert $state equals 0
}

@test 'fn post file exists in fpath' {
    run test -f "$ZPWR/autoload/common/post"
    assert $state equals 0
}

@test 'fn pre file exists in fpath' {
    run test -f "$ZPWR/autoload/common/pre"
    assert $state equals 0
}

@test 'fn r file exists in fpath' {
    run test -f "$ZPWR/autoload/common/r"
    assert $state equals 0
}

@test 'fn return2 file exists in fpath' {
    run test -f "$ZPWR/autoload/common/return2"
    assert $state equals 0
}

@test 'fn rm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/rm"
    assert $state equals 0
}

@test 'fn s file exists in fpath' {
    run test -f "$ZPWR/autoload/common/s"
    assert $state equals 0
}

@test 'fn sub file exists in fpath' {
    run test -f "$ZPWR/autoload/common/sub"
    assert $state equals 0
}

@test 'fn suc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/suc"
    assert $state equals 0
}

@test 'fn t file exists in fpath' {
    run test -f "$ZPWR/autoload/common/t"
    assert $state equals 0
}

@test 'fn tac file exists in fpath' {
    run test -f "$ZPWR/autoload/common/tac"
    assert $state equals 0
}

@test 'fn tma file exists in fpath' {
    run test -f "$ZPWR/autoload/common/tma"
    assert $state equals 0
}

@test 'fn to file exists in fpath' {
    run test -f "$ZPWR/autoload/common/to"
    assert $state equals 0
}

@test 'fn ue file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ue"
    assert $state equals 0
}

@test 'fn va file exists in fpath' {
    run test -f "$ZPWR/autoload/common/va"
    assert $state equals 0
}

@test 'fn vb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/vb"
    assert $state equals 0
}

@test 'fn vl file exists in fpath' {
    run test -f "$ZPWR/autoload/common/vl"
    assert $state equals 0
}

@test 'fn we file exists in fpath' {
    run test -f "$ZPWR/autoload/common/we"
    assert $state equals 0
}

@test 'fn wg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/wg"
    assert $state equals 0
}

@test 'fn ww file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ww"
    assert $state equals 0
}

@test 'fn www file exists in fpath' {
    run test -f "$ZPWR/autoload/common/www"
    assert $state equals 0
}

@test 'fn xx file exists in fpath' {
    run test -f "$ZPWR/autoload/common/xx"
    assert $state equals 0
}

@test 'fn z file exists in fpath' {
    run test -f "$ZPWR/autoload/common/z"
    assert $state equals 0
}

@test 'fn zal file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zal"
    assert $state equals 0
}

@test 'fn zalc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zalc"
    assert $state equals 0
}

@test 'fn zald file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zald"
    assert $state equals 0
}

@test 'fn zalf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zalf"
    assert $state equals 0
}

@test 'fn zall file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zall"
    assert $state equals 0
}

@test 'fn zalo file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zalo"
    assert $state equals 0
}

@test 'fn zals file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zals"
    assert $state equals 0
}

@test 'fn zalu file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zalu"
    assert $state equals 0
}

@test 'fn zarg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zarg"
    assert $state equals 0
}

@test 'fn zco file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zco"
    assert $state equals 0
}

@test 'fn zd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zd"
    assert $state equals 0
}

@test 'fn ze file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ze"
    assert $state equals 0
}

@test 'fn zg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zg"
    assert $state equals 0
}

@test 'fn zh file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zh"
    assert $state equals 0
}

@test 'fn zhb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zhb"
    assert $state equals 0
}

@test 'fn zhc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zhc"
    assert $state equals 0
}

@test 'fn zhp file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zhp"
    assert $state equals 0
}

@test 'fn zhs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zhs"
    assert $state equals 0
}

@test 'fn zil file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zil"
    assert $state equals 0
}

@test 'fn zl file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zl"
    assert $state equals 0
}

@test 'fn zlc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zlc"
    assert $state equals 0
}

@test 'fn zli file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zli"
    assert $state equals 0
}

@test 'fn zlr file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zlr"
    assert $state equals 0
}

@test 'fn zlt file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zlt"
    assert $state equals 0
}

@test 'fn zm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zm"
    assert $state equals 0
}

@test 'fn zpl file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpl"
    assert $state equals 0
}

@test 'fn zpwr file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwr"
    assert $state equals 0
}

@test 'fn zpwr256ColorTest file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwr256ColorTest"
    assert $state equals 0
}

@test 'fn zpwrAbout file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAbout"
    assert $state equals 0
}

@test 'fn zpwrAcceptLine file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAcceptLine"
    assert $state equals 0
}

@test 'fn zpwrAddOMZAttrib file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAddOMZAttrib"
    assert $state equals 0
}

@test 'fn zpwrAgIntoFzf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAgIntoFzf"
    assert $state equals 0
}

@test 'fn zpwrAlacritty file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAlacritty"
    assert $state equals 0
}

@test 'fn zpwrAllRemotes file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAllRemotes"
    assert $state equals 0
}

@test 'fn zpwrAllUpdates file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAllUpdates"
    assert $state equals 0
}

@test 'fn zpwrAlternateQuotes file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAlternateQuotes"
    assert $state equals 0
}

@test 'fn zpwrAnimate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAnimate"
    assert $state equals 0
}

@test 'fn zpwrArrayToJson file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrArrayToJson"
    assert $state equals 0
}

@test 'fn zpwrAsVar file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAsVar"
    assert $state equals 0
}

@test 'fn zpwrAutoloadCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAutoloadCount"
    assert $state equals 0
}

@test 'fn zpwrAutoloadList file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrAutoloadList"
    assert $state equals 0
}

@test 'fn zpwrBackup file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBackup"
    assert $state equals 0
}

@test 'fn zpwrBackupHistfile file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBackupHistfile"
    assert $state equals 0
}

@test 'fn zpwrBannerCounts file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBannerCounts"
    assert $state equals 0
}

@test 'fn zpwrBannerLolcat file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBannerLolcat"
    assert $state equals 0
}

@test 'fn zpwrBindAliasesLate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindAliasesLate"
    assert $state equals 0
}

@test 'fn zpwrBindAliasesZshLate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindAliasesZshLate"
    assert $state equals 0
}

@test 'fn zpwrBindDirs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindDirs"
    assert $state equals 0
}

@test 'fn zpwrBindFinal file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindFinal"
    assert $state equals 0
}

@test 'fn zpwrBindForGit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindForGit"
    assert $state equals 0
}

@test 'fn zpwrBindFZFLate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindFZFLate"
    assert $state equals 0
}

@test 'fn zpwrBindHistorySubstring file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindHistorySubstring"
    assert $state equals 0
}

@test 'fn zpwrBindInterceptSurround file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindInterceptSurround"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideAutoComplete file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindOverrideAutoComplete"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZ file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindOverrideOMZ"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZCompdefs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindOverrideOMZCompdefs"
    assert $state equals 0
}

@test 'fn zpwrBindOverrideZLE file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindOverrideZLE"
    assert $state equals 0
}

@test 'fn zpwrBindPenultimate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindPenultimate"
    assert $state equals 0
}

@test 'fn zpwrBindPowerline file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindPowerline"
    assert $state equals 0
}

@test 'fn zpwrBindPowerlineTmux file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindPowerlineTmux"
    assert $state equals 0
}

@test 'fn zpwrBindPrecmd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindPrecmd"
    assert $state equals 0
}

@test 'fn zpwrBindPreexecChpwd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindPreexecChpwd"
    assert $state equals 0
}

@test 'fn zpwrBindVerbs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindVerbs"
    assert $state equals 0
}

@test 'fn zpwrBindZdharma file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindZdharma"
    assert $state equals 0
}

@test 'fn zpwrBindZdharmaPost file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindZdharmaPost"
    assert $state equals 0
}

@test 'fn zpwrBindZstyle file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBindZstyle"
    assert $state equals 0
}

@test 'fn zpwrBufferXtrace file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrBufferXtrace"
    assert $state equals 0
}

@test 'fn zpwrCat file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCat"
    assert $state equals 0
}

@test 'fn zpwrCatNvimOrVimInfo file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCatNvimOrVimInfo"
    assert $state equals 0
}

@test 'fn zpwrCCommon file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCCommon"
    assert $state equals 0
}

@test 'fn zpwrCd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCd"
    assert $state equals 0
}

@test 'fn zpwrCdUp file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCdUp"
    assert $state equals 0
}

@test 'fn zpwrCdVimFzfFilesearchWidgetAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCdVimFzfFilesearchWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrChangeGitAuthorEmail file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrChangeGitAuthorEmail"
    assert $state equals 0
}

@test 'fn zpwrChangeGitCommitterEmail file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrChangeGitCommitterEmail"
    assert $state equals 0
}

@test 'fn zpwrChangeGitEmail file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrChangeGitEmail"
    assert $state equals 0
}

@test 'fn zpwrChangeName file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrChangeName"
    assert $state equals 0
}

@test 'fn zpwrChangeNameZpwr file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrChangeNameZpwr"
    assert $state equals 0
}

@test 'fn zpwrChangeQuotes file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrChangeQuotes"
    assert $state equals 0
}

@test 'fn zpwrChpwd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrChpwd"
    assert $state equals 0
}

@test 'fn zpwrCleanAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanAll"
    assert $state equals 0
}

@test 'fn zpwrCleanCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanCache"
    assert $state equals 0
}

@test 'fn zpwrCleanCompCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanCompCache"
    assert $state equals 0
}

@test 'fn zpwrCleanDirs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanDirs"
    assert $state equals 0
}

@test 'fn zpwrCleanDirsAndTemp file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanDirsAndTemp"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanGitRepoCache"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCleanCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanGitRepoCleanCache"
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoDirtyCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanGitRepoDirtyCache"
    assert $state equals 0
}

@test 'fn zpwrCleanLog file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanLog"
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshCountsTestUpdate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanRefreshCountsTestUpdate"
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshUpdate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanRefreshUpdate"
    assert $state equals 0
}

@test 'fn zpwrCleanTemp file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanTemp"
    assert $state equals 0
}

@test 'fn zpwrCleanUpdateDeps file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCleanUpdateDeps"
    assert $state equals 0
}

@test 'fn zpwrClearGitCommit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrClearGitCommit"
    assert $state equals 0
}

@test 'fn zpwrClearGitFile file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrClearGitFile"
    assert $state equals 0
}

@test 'fn zpwrClearLine file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrClearLine"
    assert $state equals 0
}

@test 'fn zpwrClearListFZF file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrClearListFZF"
    assert $state equals 0
}

@test 'fn zpwrClipboard file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrClipboard"
    assert $state equals 0
}

@test 'fn zpwrCloneToForked file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCloneToForked"
    assert $state equals 0
}

@test 'fn zpwrColorTest file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrColorTest"
    assert $state equals 0
}

@test 'fn zpwrCommits file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCommits"
    assert $state equals 0
}

@test 'fn zpwrConfirm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrConfirm"
    assert $state equals 0
}

@test 'fn zpwrContribCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrContribCount"
    assert $state equals 0
}

@test 'fn zpwrContribCountDirs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrContribCountDirs"
    assert $state equals 0
}

@test 'fn zpwrContribCountLines file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrContribCountLines"
    assert $state equals 0
}

@test 'fn zpwrCreateAliasCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCreateAliasCache"
    assert $state equals 0
}

@test 'fn zpwrCreategif file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrCreategif"
    assert $state equals 0
}

@test 'fn zpwrDedupPaths file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrDedupPaths"
    assert $state equals 0
}

@test 'fn zpwrDeleteLastWord file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrDeleteLastWord"
    assert $state equals 0
}

@test 'fn zpwrDetachall file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrDetachall"
    assert $state equals 0
}

@test 'fn zpwrDfimage file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrDfimage"
    assert $state equals 0
}

@test 'fn zpwrDockerWipe file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrDockerWipe"
    assert $state equals 0
}

@test 'fn zpwrEditExercism file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEditExercism"
    assert $state equals 0
}

@test 'fn zpwrEditor file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEditor"
    assert $state equals 0
}

@test 'fn zpwrEditorRecent file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEditorRecent"
    assert $state equals 0
}

@test 'fn zpwrEditorRecentCd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEditorRecentCd"
    assert $state equals 0
}

@test 'fn zpwrEditTag file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEditTag"
    assert $state equals 0
}

@test 'fn zpwrEmacsAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsAll"
    assert $state equals 0
}

@test 'fn zpwrEmacsAllEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsAllEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsAllServer file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsAllServer"
    assert $state equals 0
}

@test 'fn zpwrEmacsAutoload file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsAutoload"
    assert $state equals 0
}

@test 'fn zpwrEmacsEmacsConfig file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsEmacsConfig"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsFzf"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerb"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsPluginCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsPluginCount"
    assert $state equals 0
}

@test 'fn zpwrEmacsPluginList file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsPluginList"
    assert $state equals 0
}

@test 'fn zpwrEmacsRecent file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsRecent"
    assert $state equals 0
}

@test 'fn zpwrEmacsRecentCd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsRecentCd"
    assert $state equals 0
}

@test 'fn zpwrEmacsScriptEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsScriptEdit"
    assert $state equals 0
}

@test 'fn zpwrEmacsScripts file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsScripts"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwr file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsZpwr"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrCtags file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsZpwrCtags"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtags file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsZpwrGtags"
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtagsEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEmacsZpwrGtagsEdit"
    assert $state equals 0
}

@test 'fn zpwrEnvCounts file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEnvCounts"
    assert $state equals 0
}

@test 'fn zpwrEnvVars file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEnvVars"
    assert $state equals 0
}

@test 'fn zpwrEnvVarsAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEnvVarsAll"
    assert $state equals 0
}

@test 'fn zpwrEOLorNextTabStop file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEOLorNextTabStop"
    assert $state equals 0
}

@test 'fn zpwrEvalTester file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrEvalTester"
    assert $state equals 0
}

@test 'fn zpwrExecGlob file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrExecGlob"
    assert $state equals 0
}

@test 'fn zpwrExecGlobParallel file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrExecGlobParallel"
    assert $state equals 0
}

@test 'fn zpwrExecpy file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrExecpy"
    assert $state equals 0
}

@test 'fn zpwrExercismDownloadAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrExercismDownloadAll"
    assert $state equals 0
}

@test 'fn zpwrExpandAliasAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrExpandAliasAccept"
    assert $state equals 0
}

@test 'fn zpwrExpandAliases file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrExpandAliases"
    assert $state equals 0
}

@test 'fn zpwrExpandOrCompleteWithDots file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrExpandOrCompleteWithDots"
    assert $state equals 0
}

@test 'fn zpwrFasdFList file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFasdFList"
    assert $state equals 0
}

@test 'fn zpwrFasdFListVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFasdFListVerb"
    assert $state equals 0
}

@test 'fn zpwrFasdFZF file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFasdFZF"
    assert $state equals 0
}

@test 'fn zpwrFigletfonts file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFigletfonts"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLE file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfEditNoZLE"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEC file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEEmacs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEVim file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfEditNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLE file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfNoZLE"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEC file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEEmacs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEVim file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFindFzfNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrForAllGitDirs"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsClean file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrForAllGitDirsClean"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsDirty file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrForAllGitDirsDirty"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshClean file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshClean"
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshDirty file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrForAllGitDirsRefreshDirty"
    assert $state equals 0
}

@test 'fn zpwrFordir file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFordir"
    assert $state equals 0
}

@test 'fn zpwrFordirUpdate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFordirUpdate"
    assert $state equals 0
}

@test 'fn zpwrFzfAllKeybind file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfAllKeybind"
    assert $state equals 0
}

@test 'fn zpwrFzfCommits file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfCommits"
    assert $state equals 0
}

@test 'fn zpwrFzfDirSearch file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfDirSearch"
    assert $state equals 0
}

@test 'fn zpwrFzfDirsearchVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfDirsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfEnv file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfEnv"
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfEnvVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfEnvVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrFzfFileSearch file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfFileSearch"
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfFilesearchVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrFzfSurround file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfSurround"
    assert $state equals 0
}

@test 'fn zpwrFzfVimKeybind file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfVimKeybind"
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfWordsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrFzfZList file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfZList"
    assert $state equals 0
}

@test 'fn zpwrFzfZListVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfZListVerb"
    assert $state equals 0
}

@test 'fn zpwrFzfZshKeybind file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzfZshKeybind"
    assert $state equals 0
}

@test 'fn zpwrFzvim file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzvim"
    assert $state equals 0
}

@test 'fn zpwrFzvimAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzvimAll"
    assert $state equals 0
}

@test 'fn zpwrFzvimScript file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrFzvimScript"
    assert $state equals 0
}

@test 'fn zpwrGetFound file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetFound"
    assert $state equals 0
}

@test 'fn zpwrGetGHDelURL file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetGHDelURL"
    assert $state equals 0
}

@test 'fn zpwrGetGtags file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetGtags"
    assert $state equals 0
}

@test 'fn zpwrGetGtagsEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetGtagsEdit"
    assert $state equals 0
}

@test 'fn zpwrGetLocate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetLocate"
    assert $state equals 0
}

@test 'fn zpwrGetrc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetrc"
    assert $state equals 0
}

@test 'fn zpwrGetrcdev file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetrcdev"
    assert $state equals 0
}

@test 'fn zpwrGetrcWidget file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGetrcWidget"
    assert $state equals 0
}

@test 'fn zpwrgh file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrgh"
    assert $state equals 0
}

@test 'fn zpwrGitCheckoutRebasePush file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGitCheckoutRebasePush"
    assert $state equals 0
}

@test 'fn zpwrGitConfig file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGitConfig"
    assert $state equals 0
}

@test 'fn zpwrGitIgnores file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGitIgnores"
    assert $state equals 0
}

@test 'fn zpwrGitReposFile file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGitReposFile"
    assert $state equals 0
}

@test 'fn zpwrGoclean file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGoclean"
    assert $state equals 0
}

@test 'fn zpwrGoogle file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGoogle"
    assert $state equals 0
}

@test 'fn zpwrGtagsIntoFzf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrGtagsIntoFzf"
    assert $state equals 0
}

@test 'fn zpwrHistfile file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrHistfile"
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrHistoryVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrHistoryVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrInterceptDelete file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrInterceptDelete"
    assert $state equals 0
}

@test 'fn zpwrInterceptSurround file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrInterceptSurround"
    assert $state equals 0
}

@test 'fn zpwrIntoFzf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrIntoFzf"
    assert $state equals 0
}

@test 'fn zpwrIntoFzfAg file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrIntoFzfAg"
    assert $state equals 0
}

@test 'fn zpwrJetbrainsWorkspaceEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrJetbrainsWorkspaceEdit"
    assert $state equals 0
}

@test 'fn zpwrJsonToArray file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrJsonToArray"
    assert $state equals 0
}

@test 'fn zpwrKeyClear file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrKeyClear"
    assert $state equals 0
}

@test 'fn zpwrKeySender file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrKeySender"
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrKillLsofVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrKillLsofVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrKillPSVerbAccept"
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrKillPSVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrKillRemote file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrKillRemote"
    assert $state equals 0
}

@test 'fn zpwrLargestGitFiles file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLargestGitFiles"
    assert $state equals 0
}

@test 'fn zpwrLastWordDouble file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLastWordDouble"
    assert $state equals 0
}

@test 'fn zpwrLineCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLineCount"
    assert $state equals 0
}

@test 'fn zpwrLinkConf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLinkConf"
    assert $state equals 0
}

@test 'fn zpwrListFiles file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrListFiles"
    assert $state equals 0
}

@test 'fn zpwrListNoClear file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrListNoClear"
    assert $state equals 0
}

@test 'fn zpwrListVerbs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrListVerbs"
    assert $state equals 0
}

@test 'fn zpwrListVerbsColor file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrListVerbsColor"
    assert $state equals 0
}

@test 'fn zpwrLoadJenv file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLoadJenv"
    assert $state equals 0
}

@test 'fn zpwrLocateFzf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzf"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfEdit"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLE file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLE"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEC file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEEmacs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEVim file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfEditNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLE file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfNoZLE"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEC file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfNoZLEC"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEEmacs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfNoZLEEmacs"
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEVim file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLocateFzfNoZLEVim"
    assert $state equals 0
}

@test 'fn zpwrLoginCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLoginCount"
    assert $state equals 0
}

@test 'fn zpwrLsoffzf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrLsoffzf"
    assert $state equals 0
}

@test 'fn zpwrMagicEnter file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrMagicEnter"
    assert $state equals 0
}

@test 'fn zpwrModulesFZF file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrModulesFZF"
    assert $state equals 0
}

@test 'fn zpwrMycurl file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrMycurl"
    assert $state equals 0
}

@test 'fn zpwrNoPonyBanner file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrNoPonyBanner"
    assert $state equals 0
}

@test 'fn zpwrNumVerbs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrNumVerbs"
    assert $state equals 0
}

@test 'fn zpwrNvimThenRecentf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrNvimThenRecentf"
    assert $state equals 0
}

@test 'fn zpwrOmzOverrides file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrOmzOverrides"
    assert $state equals 0
}

@test 'fn zpwrOpen file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrOpen"
    assert $state equals 0
}

@test 'fn zpwrOpenExercism file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrOpenExercism"
    assert $state equals 0
}

@test 'fn zpwrOpenmygh file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrOpenmygh"
    assert $state equals 0
}

@test 'fn zpwrOptionsFZF file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrOptionsFZF"
    assert $state equals 0
}

@test 'fn zpwrParseRecentf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrParseRecentf"
    assert $state equals 0
}

@test 'fn zpwrPasteToBuffer file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPasteToBuffer"
    assert $state equals 0
}

@test 'fn zpwrPasteToStdout file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPasteToStdout"
    assert $state equals 0
}

@test 'fn zpwrPirun file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPirun"
    assert $state equals 0
}

@test 'fn zpwrPoll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPoll"
    assert $state equals 0
}

@test 'fn zpwrPonyBanner file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPonyBanner"
    assert $state equals 0
}

@test 'fn zpwrPrecmd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPrecmd"
    assert $state equals 0
}

@test 'fn zpwrPreexec file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPreexec"
    assert $state equals 0
}

@test 'fn zpwrPrintMap file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPrintMap"
    assert $state equals 0
}

@test 'fn zpwrPstreemonitor file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPstreemonitor"
    assert $state equals 0
}

@test 'fn zpwrPygmentcolors file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrPygmentcolors"
    assert $state equals 0
}

@test 'fn zpwrRationalizeDot file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRationalizeDot"
    assert $state equals 0
}

@test 'fn zpwrRecentfThenNvim file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRecentfThenNvim"
    assert $state equals 0
}

@test 'fn zpwrRecompile file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRecompile"
    assert $state equals 0
}

@test 'fn zpwrRecompileFiles file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRecompileFiles"
    assert $state equals 0
}

@test 'fn zpwrRecompileFpath file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRecompileFpath"
    assert $state equals 0
}

@test 'fn zpwrRefreshZwc file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRefreshZwc"
    assert $state equals 0
}

@test 'fn zpwrRegenAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenAll"
    assert $state equals 0
}

@test 'fn zpwrRegenAllKeybindingsCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenAllKeybindingsCache"
    assert $state equals 0
}

@test 'fn zpwrRegenConfigLinks file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenConfigLinks"
    assert $state equals 0
}

@test 'fn zpwrRegenCtags file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenCtags"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsCtags file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenGtagsCtags"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsPygments file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenGtagsPygments"
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsType file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenGtagsType"
    assert $state equals 0
}

@test 'fn zpwrRegenHistory file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenHistory"
    assert $state equals 0
}

@test 'fn zpwrRegenMost file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenMost"
    assert $state equals 0
}

@test 'fn zpwrRegenPowerlineLink file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenPowerlineLink"
    assert $state equals 0
}

@test 'fn zpwrRegenSearchEnv file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenSearchEnv"
    assert $state equals 0
}

@test 'fn zpwrRegenZshCompCache file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegenZshCompCache"
    assert $state equals 0
}

@test 'fn zpwrRegexp-replace-single file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRegexp-replace-single"
    assert $state equals 0
}

@test 'fn zpwrReload file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrReload"
    assert $state equals 0
}

@test 'fn zpwrRelPath file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRelPath"
    assert $state equals 0
}

@test 'fn zpwrRename file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRename"
    assert $state equals 0
}

@test 'fn zpwrReplacer file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrReplacer"
    assert $state equals 0
}

@test 'fn zpwrReset file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrReset"
    assert $state equals 0
}

@test 'fn zpwrRestoreHistfile file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRestoreHistfile"
    assert $state equals 0
}

@test 'fn zpwrRetryZcompdump file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRetryZcompdump"
    assert $state equals 0
}

@test 'fn zpwrRevealRecurse file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRevealRecurse"
    assert $state equals 0
}

@test 'fn zpwrRunner file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrRunner"
    assert $state equals 0
}

@test 'fn zpwrScnew file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrScnew"
    assert $state equals 0
}

@test 'fn zpwrScriptCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrScriptCount"
    assert $state equals 0
}

@test 'fn zpwrScriptList file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrScriptList"
    assert $state equals 0
}

@test 'fn zpwrScripts file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrScripts"
    assert $state equals 0
}

@test 'fn zpwrSearch file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSearch"
    assert $state equals 0
}

@test 'fn zpwrSelfInsert file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSelfInsert"
    assert $state equals 0
}

@test 'fn zpwrSshRegain file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSshRegain"
    assert $state equals 0
}

@test 'fn zpwrStaleZcompdump file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrStaleZcompdump"
    assert $state equals 0
}

@test 'fn zpwrStartAutoComplete file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrStartAutoComplete"
    assert $state equals 0
}

@test 'fn zpwrStartSend file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrStartSend"
    assert $state equals 0
}

@test 'fn zpwrStartSendFull file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrStartSendFull"
    assert $state equals 0
}

@test 'fn zpwrStopAutoComplete file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrStopAutoComplete"
    assert $state equals 0
}

@test 'fn zpwrStopSend file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrStopSend"
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecent file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSudoEditorRecent"
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecentCd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSudoEditorRecentCd"
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecent file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSudoEmacsRecent"
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecentCd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSudoEmacsRecentCd"
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecent file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSudoVimRecent"
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecentCd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrSudoVimRecentCd"
    assert $state equals 0
}

@test 'fn zpwrTabNum file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTabNum"
    assert $state equals 0
}

@test 'fn zpwrTabNumCmd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTabNumCmd"
    assert $state equals 0
}

@test 'fn zpwrTest file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTest"
    assert $state equals 0
}

@test 'fn zpwrTestAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTestAll"
    assert $state equals 0
}

@test 'fn zpwrTimer file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTimer"
    assert $state equals 0
}

@test 'fn zpwrTmux_capture_paner file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTmux_capture_paner"
    assert $state equals 0
}

@test 'fn zpwrTmux_pane_words file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTmux_pane_words"
    assert $state equals 0
}

@test 'fn zpwrTorip file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTorip"
    assert $state equals 0
}

@test 'fn zpwrToriprenew file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrToriprenew"
    assert $state equals 0
}

@test 'fn zpwrTotalLines file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTotalLines"
    assert $state equals 0
}

@test 'fn zpwrTutsUpdate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrTutsUpdate"
    assert $state equals 0
}

@test 'fn zpwrUncompile file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUncompile"
    assert $state equals 0
}

@test 'fn zpwrUninstall file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUninstall"
    assert $state equals 0
}

@test 'fn zpwrUnlinkConf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUnlinkConf"
    assert $state equals 0
}

@test 'fn zpwrUp8widget file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUp8widget"
    assert $state equals 0
}

@test 'fn zpwrUpdate file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUpdate"
    assert $state equals 0
}

@test 'fn zpwrUpdateAllGitDirs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUpdateAllGitDirs"
    assert $state equals 0
}

@test 'fn zpwrUpdateDeps file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUpdateDeps"
    assert $state equals 0
}

@test 'fn zpwrUpdateDepsClean file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUpdateDepsClean"
    assert $state equals 0
}

@test 'fn zpwrUpdater file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUpdater"
    assert $state equals 0
}

@test 'fn zpwrUpload file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUpload"
    assert $state equals 0
}

@test 'fn zpwrUrlSafe file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrUrlSafe"
    assert $state equals 0
}

@test 'fn zpwrVerbsEditNoZLE file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVerbsEditNoZLE"
    assert $state equals 0
}

@test 'fn zpwrVerbsFZF file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVerbsFZF"
    assert $state equals 0
}

@test 'fn zpwrVerbsNoZLE file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVerbsNoZLE"
    assert $state equals 0
}

@test 'fn zpwrVerbsWidget file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVerbsWidget"
    assert $state equals 0
}

@test 'fn zpwrVerbsWidgetAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVerbsWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrVimAll file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimAll"
    assert $state equals 0
}

@test 'fn zpwrVimAllEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimAllEdit"
    assert $state equals 0
}

@test 'fn zpwrVimAllWidget file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimAllWidget"
    assert $state equals 0
}

@test 'fn zpwrVimAllWidgetAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimAllWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrVimAutoload file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimAutoload"
    assert $state equals 0
}

@test 'fn zpwrVimEmacsConfig file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimEmacsConfig"
    assert $state equals 0
}

@test 'fn zpwrVimFzf file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimFzf"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimFzfFilesearchVerb"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimFzfFilesearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchWidgetAccept file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimFzfFilesearchWidgetAccept"
    assert $state equals 0
}

@test 'fn zpwrVimFzfSudo file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimFzfSudo"
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerb file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimFzfWordsearchVerb"
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerbEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimFzfWordsearchVerbEdit"
    assert $state equals 0
}

@test 'fn zpwrVimPluginCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimPluginCount"
    assert $state equals 0
}

@test 'fn zpwrVimPluginList file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimPluginList"
    assert $state equals 0
}

@test 'fn zpwrVimRecent file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimRecent"
    assert $state equals 0
}

@test 'fn zpwrVimRecentCd file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimRecentCd"
    assert $state equals 0
}

@test 'fn zpwrVimScriptEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimScriptEdit"
    assert $state equals 0
}

@test 'fn zpwrVimScripts file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimScripts"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrCtags file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimZpwrCtags"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtags file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimZpwrGtags"
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtagsEdit file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrVimZpwrGtagsEdit"
    assert $state equals 0
}

@test 'fn zpwrZcompdump file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrZcompdump"
    assert $state equals 0
}

@test 'fn zpwrZFZF file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrZFZF"
    assert $state equals 0
}

@test 'fn zpwrZinitUpdates file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrZinitUpdates"
    assert $state equals 0
}

@test 'fn zpwrZshPluginCount file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrZshPluginCount"
    assert $state equals 0
}

@test 'fn zpwrZshPluginList file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrZshPluginList"
    assert $state equals 0
}

@test 'fn zpwrZshrcSearch file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrZshrcSearch"
    assert $state equals 0
}

@test 'fn zpwrZstyle file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpwrZstyle"
    assert $state equals 0
}

@test 'fn zpz file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zpz"
    assert $state equals 0
}

@test 'fn zr file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zr"
    assert $state equals 0
}

@test 'fn zs file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zs"
    assert $state equals 0
}

@test 'fn zsm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zsm"
    assert $state equals 0
}

@test 'fn zt file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zt"
    assert $state equals 0
}

@test 'fn ztl file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ztl"
    assert $state equals 0
}

@test 'fn ztm file exists in fpath' {
    run test -f "$ZPWR/autoload/common/ztm"
    assert $state equals 0
}

@test 'fn zua file exists in fpath' {
    run test -f "$ZPWR/autoload/common/zua"
    assert $state equals 0
}
