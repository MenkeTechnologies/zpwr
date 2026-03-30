#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all autoload/common function bodies
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn a body non-empty' {
    run functions a
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn apz body non-empty' {
    run functions apz
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn asg body non-empty' {
    run functions asg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn b body non-empty' {
    run functions b
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn c body non-empty' {
    run functions c
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn cca body non-empty' {
    run functions cca
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn cd body non-empty' {
    run functions cd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ce body non-empty' {
    run functions ce
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn cg body non-empty' {
    run functions cg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn cgh body non-empty' {
    run functions cgh
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn color2 body non-empty' {
    run functions color2
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn cv body non-empty' {
    run functions cv
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn d body non-empty' {
    run functions d
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn dbz body non-empty' {
    run functions dbz
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn de body non-empty' {
    run functions de
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn digs body non-empty' {
    run functions digs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn dl body non-empty' {
    run functions dl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn docu body non-empty' {
    run functions docu
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn e body non-empty' {
    run functions e
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn eb body non-empty' {
    run functions eb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn em body non-empty' {
    run functions em
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn emm body non-empty' {
    run functions emm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn f body non-empty' {
    run functions f
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ff body non-empty' {
    run functions ff
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn fff body non-empty' {
    run functions fff
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn fm body non-empty' {
    run functions fm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn fp body non-empty' {
    run functions fp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn gcl body non-empty' {
    run functions gcl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ge body non-empty' {
    run functions ge
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn gil body non-empty' {
    run functions gil
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn gsdc body non-empty' {
    run functions gsdc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn gse body non-empty' {
    run functions gse
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn h body non-empty' {
    run functions h
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn hc body non-empty' {
    run functions hc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn hd body non-empty' {
    run functions hd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ig body non-empty' {
    run functions ig
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ino body non-empty' {
    run functions ino
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn j body non-empty' {
    run functions j
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn jd body non-empty' {
    run functions jd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn kr body non-empty' {
    run functions kr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn lcm body non-empty' {
    run functions lcm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn mg body non-empty' {
    run functions mg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn nz body non-empty' {
    run functions nz
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn o body non-empty' {
    run functions o
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn p body non-empty' {
    run functions p
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn pg body non-empty' {
    run functions pg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn post body non-empty' {
    run functions post
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn pre body non-empty' {
    run functions pre
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn r body non-empty' {
    run functions r
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn return2 body non-empty' {
    run functions return2
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn rm body non-empty' {
    run functions rm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn s body non-empty' {
    run functions s
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn sub body non-empty' {
    run functions sub
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn suc body non-empty' {
    run functions suc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn t body non-empty' {
    run functions t
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn tac body non-empty' {
    run functions tac
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn tma body non-empty' {
    run functions tma
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn to body non-empty' {
    run functions to
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ue body non-empty' {
    run functions ue
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn va body non-empty' {
    run functions va
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn vb body non-empty' {
    run functions vb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn vl body non-empty' {
    run functions vl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn we body non-empty' {
    run functions we
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn wg body non-empty' {
    run functions wg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ww body non-empty' {
    run functions ww
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn www body non-empty' {
    run functions www
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn xx body non-empty' {
    run functions xx
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn z body non-empty' {
    run functions z
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zal body non-empty' {
    run functions zal
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zalc body non-empty' {
    run functions zalc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zald body non-empty' {
    run functions zald
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zalf body non-empty' {
    run functions zalf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zall body non-empty' {
    run functions zall
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zalo body non-empty' {
    run functions zalo
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zals body non-empty' {
    run functions zals
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zalu body non-empty' {
    run functions zalu
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zarg body non-empty' {
    run functions zarg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zco body non-empty' {
    run functions zco
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zd body non-empty' {
    run functions zd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ze body non-empty' {
    run functions ze
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zg body non-empty' {
    run functions zg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zh body non-empty' {
    run functions zh
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zhb body non-empty' {
    run functions zhb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zhc body non-empty' {
    run functions zhc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zhp body non-empty' {
    run functions zhp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zhs body non-empty' {
    run functions zhs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zil body non-empty' {
    run functions zil
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zl body non-empty' {
    run functions zl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zlc body non-empty' {
    run functions zlc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zli body non-empty' {
    run functions zli
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zlr body non-empty' {
    run functions zlr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zlt body non-empty' {
    run functions zlt
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zm body non-empty' {
    run functions zm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpl body non-empty' {
    run functions zpl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwr body non-empty' {
    run functions zpwr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwr256ColorTest body non-empty' {
    run functions zpwr256ColorTest
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAbout body non-empty' {
    run functions zpwrAbout
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAcceptLine body non-empty' {
    run functions zpwrAcceptLine
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAddOMZAttrib body non-empty' {
    run functions zpwrAddOMZAttrib
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAgIntoFzf body non-empty' {
    run functions zpwrAgIntoFzf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAlacritty body non-empty' {
    run functions zpwrAlacritty
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAllRemotes body non-empty' {
    run functions zpwrAllRemotes
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAllUpdates body non-empty' {
    run functions zpwrAllUpdates
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAlternateQuotes body non-empty' {
    run functions zpwrAlternateQuotes
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAnimate body non-empty' {
    run functions zpwrAnimate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrArrayToJson body non-empty' {
    run functions zpwrArrayToJson
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAsVar body non-empty' {
    run functions zpwrAsVar
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAutoloadCount body non-empty' {
    run functions zpwrAutoloadCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAutoloadList body non-empty' {
    run functions zpwrAutoloadList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBackup body non-empty' {
    run functions zpwrBackup
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBackupHistfile body non-empty' {
    run functions zpwrBackupHistfile
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBannerCounts body non-empty' {
    run functions zpwrBannerCounts
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBannerLolcat body non-empty' {
    run functions zpwrBannerLolcat
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindAliasesLate body non-empty' {
    run functions zpwrBindAliasesLate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindAliasesZshLate body non-empty' {
    run functions zpwrBindAliasesZshLate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindDirs body non-empty' {
    run functions zpwrBindDirs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindFinal body non-empty' {
    run functions zpwrBindFinal
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindForGit body non-empty' {
    run functions zpwrBindForGit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindFZFLate body non-empty' {
    run functions zpwrBindFZFLate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindHistorySubstring body non-empty' {
    run functions zpwrBindHistorySubstring
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindInterceptSurround body non-empty' {
    run functions zpwrBindInterceptSurround
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindOverrideAutoComplete body non-empty' {
    run functions zpwrBindOverrideAutoComplete
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindOverrideOMZ body non-empty' {
    run functions zpwrBindOverrideOMZ
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindOverrideOMZCompdefs body non-empty' {
    run functions zpwrBindOverrideOMZCompdefs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindOverrideZLE body non-empty' {
    run functions zpwrBindOverrideZLE
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindPenultimate body non-empty' {
    run functions zpwrBindPenultimate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindPowerline body non-empty' {
    run functions zpwrBindPowerline
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindPowerlineTmux body non-empty' {
    run functions zpwrBindPowerlineTmux
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindPrecmd body non-empty' {
    run functions zpwrBindPrecmd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindPreexecChpwd body non-empty' {
    run functions zpwrBindPreexecChpwd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindVerbs body non-empty' {
    run functions zpwrBindVerbs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindZdharma body non-empty' {
    run functions zpwrBindZdharma
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindZdharmaPost body non-empty' {
    run functions zpwrBindZdharmaPost
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBindZstyle body non-empty' {
    run functions zpwrBindZstyle
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrBufferXtrace body non-empty' {
    run functions zpwrBufferXtrace
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCat body non-empty' {
    run functions zpwrCat
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCatNvimOrVimInfo body non-empty' {
    run functions zpwrCatNvimOrVimInfo
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCCommon body non-empty' {
    run functions zpwrCCommon
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCd body non-empty' {
    run functions zpwrCd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCdUp body non-empty' {
    run functions zpwrCdUp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCdVimFzfFilesearchWidgetAccept body non-empty' {
    run functions zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrChangeGitAuthorEmail body non-empty' {
    run functions zpwrChangeGitAuthorEmail
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrChangeGitCommitterEmail body non-empty' {
    run functions zpwrChangeGitCommitterEmail
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrChangeGitEmail body non-empty' {
    run functions zpwrChangeGitEmail
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrChangeName body non-empty' {
    run functions zpwrChangeName
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrChangeNameZpwr body non-empty' {
    run functions zpwrChangeNameZpwr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrChangeQuotes body non-empty' {
    run functions zpwrChangeQuotes
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrChpwd body non-empty' {
    run functions zpwrChpwd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanAll body non-empty' {
    run functions zpwrCleanAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanCache body non-empty' {
    run functions zpwrCleanCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanCompCache body non-empty' {
    run functions zpwrCleanCompCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanDirs body non-empty' {
    run functions zpwrCleanDirs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanDirsAndTemp body non-empty' {
    run functions zpwrCleanDirsAndTemp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanGitRepoCache body non-empty' {
    run functions zpwrCleanGitRepoCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanGitRepoCleanCache body non-empty' {
    run functions zpwrCleanGitRepoCleanCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanGitRepoDirtyCache body non-empty' {
    run functions zpwrCleanGitRepoDirtyCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanLog body non-empty' {
    run functions zpwrCleanLog
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanRefreshCountsTestUpdate body non-empty' {
    run functions zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanRefreshUpdate body non-empty' {
    run functions zpwrCleanRefreshUpdate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanTemp body non-empty' {
    run functions zpwrCleanTemp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCleanUpdateDeps body non-empty' {
    run functions zpwrCleanUpdateDeps
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrClearGitCommit body non-empty' {
    run functions zpwrClearGitCommit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrClearGitFile body non-empty' {
    run functions zpwrClearGitFile
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrClearLine body non-empty' {
    run functions zpwrClearLine
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrClearListFZF body non-empty' {
    run functions zpwrClearListFZF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrClipboard body non-empty' {
    run functions zpwrClipboard
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCloneToForked body non-empty' {
    run functions zpwrCloneToForked
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrColorTest body non-empty' {
    run functions zpwrColorTest
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCommits body non-empty' {
    run functions zpwrCommits
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrConfirm body non-empty' {
    run functions zpwrConfirm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrContribCount body non-empty' {
    run functions zpwrContribCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrContribCountDirs body non-empty' {
    run functions zpwrContribCountDirs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrContribCountLines body non-empty' {
    run functions zpwrContribCountLines
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCreateAliasCache body non-empty' {
    run functions zpwrCreateAliasCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrCreategif body non-empty' {
    run functions zpwrCreategif
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrDedupPaths body non-empty' {
    run functions zpwrDedupPaths
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrDeleteLastWord body non-empty' {
    run functions zpwrDeleteLastWord
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrDetachall body non-empty' {
    run functions zpwrDetachall
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrDfimage body non-empty' {
    run functions zpwrDfimage
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrDockerWipe body non-empty' {
    run functions zpwrDockerWipe
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEditExercism body non-empty' {
    run functions zpwrEditExercism
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEditor body non-empty' {
    run functions zpwrEditor
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEditorRecent body non-empty' {
    run functions zpwrEditorRecent
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEditorRecentCd body non-empty' {
    run functions zpwrEditorRecentCd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEditTag body non-empty' {
    run functions zpwrEditTag
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsAll body non-empty' {
    run functions zpwrEmacsAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsAllEdit body non-empty' {
    run functions zpwrEmacsAllEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsAllServer body non-empty' {
    run functions zpwrEmacsAllServer
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsAutoload body non-empty' {
    run functions zpwrEmacsAutoload
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsEmacsConfig body non-empty' {
    run functions zpwrEmacsEmacsConfig
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsFzf body non-empty' {
    run functions zpwrEmacsFzf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsFzfFilesearchVerb body non-empty' {
    run functions zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsFzfFilesearchVerbEdit body non-empty' {
    run functions zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsFzfWordsearchVerb body non-empty' {
    run functions zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsFzfWordsearchVerbEdit body non-empty' {
    run functions zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsPluginCount body non-empty' {
    run functions zpwrEmacsPluginCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsPluginList body non-empty' {
    run functions zpwrEmacsPluginList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsRecent body non-empty' {
    run functions zpwrEmacsRecent
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsRecentCd body non-empty' {
    run functions zpwrEmacsRecentCd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsScriptEdit body non-empty' {
    run functions zpwrEmacsScriptEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsScripts body non-empty' {
    run functions zpwrEmacsScripts
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsZpwr body non-empty' {
    run functions zpwrEmacsZpwr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsZpwrCtags body non-empty' {
    run functions zpwrEmacsZpwrCtags
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsZpwrGtags body non-empty' {
    run functions zpwrEmacsZpwrGtags
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEmacsZpwrGtagsEdit body non-empty' {
    run functions zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEnvCounts body non-empty' {
    run functions zpwrEnvCounts
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEnvVars body non-empty' {
    run functions zpwrEnvVars
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEnvVarsAll body non-empty' {
    run functions zpwrEnvVarsAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEOLorNextTabStop body non-empty' {
    run functions zpwrEOLorNextTabStop
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrEvalTester body non-empty' {
    run functions zpwrEvalTester
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrExecGlob body non-empty' {
    run functions zpwrExecGlob
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrExecGlobParallel body non-empty' {
    run functions zpwrExecGlobParallel
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrExecpy body non-empty' {
    run functions zpwrExecpy
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrExercismDownloadAll body non-empty' {
    run functions zpwrExercismDownloadAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrExpandAliasAccept body non-empty' {
    run functions zpwrExpandAliasAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrExpandAliases body non-empty' {
    run functions zpwrExpandAliases
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrExpandOrCompleteWithDots body non-empty' {
    run functions zpwrExpandOrCompleteWithDots
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFasdFList body non-empty' {
    run functions zpwrFasdFList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFasdFListVerb body non-empty' {
    run functions zpwrFasdFListVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFasdFZF body non-empty' {
    run functions zpwrFasdFZF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFigletfonts body non-empty' {
    run functions zpwrFigletfonts
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfEditNoZLE body non-empty' {
    run functions zpwrFindFzfEditNoZLE
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfEditNoZLEC body non-empty' {
    run functions zpwrFindFzfEditNoZLEC
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfEditNoZLEEmacs body non-empty' {
    run functions zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfEditNoZLEVim body non-empty' {
    run functions zpwrFindFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfNoZLE body non-empty' {
    run functions zpwrFindFzfNoZLE
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfNoZLEC body non-empty' {
    run functions zpwrFindFzfNoZLEC
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfNoZLEEmacs body non-empty' {
    run functions zpwrFindFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFindFzfNoZLEVim body non-empty' {
    run functions zpwrFindFzfNoZLEVim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrForAllGitDirs body non-empty' {
    run functions zpwrForAllGitDirs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrForAllGitDirsClean body non-empty' {
    run functions zpwrForAllGitDirsClean
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrForAllGitDirsDirty body non-empty' {
    run functions zpwrForAllGitDirsDirty
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrForAllGitDirsRefreshClean body non-empty' {
    run functions zpwrForAllGitDirsRefreshClean
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrForAllGitDirsRefreshDirty body non-empty' {
    run functions zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFordir body non-empty' {
    run functions zpwrFordir
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFordirUpdate body non-empty' {
    run functions zpwrFordirUpdate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfAllKeybind body non-empty' {
    run functions zpwrFzfAllKeybind
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfCommits body non-empty' {
    run functions zpwrFzfCommits
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfDirSearch body non-empty' {
    run functions zpwrFzfDirSearch
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfDirsearchVerb body non-empty' {
    run functions zpwrFzfDirsearchVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfEnv body non-empty' {
    run functions zpwrFzfEnv
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfEnvVerbAccept body non-empty' {
    run functions zpwrFzfEnvVerbAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfEnvVerbEdit body non-empty' {
    run functions zpwrFzfEnvVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfFileSearch body non-empty' {
    run functions zpwrFzfFileSearch
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfFilesearchVerb body non-empty' {
    run functions zpwrFzfFilesearchVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfFilesearchVerbEdit body non-empty' {
    run functions zpwrFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfSurround body non-empty' {
    run functions zpwrFzfSurround
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfVimKeybind body non-empty' {
    run functions zpwrFzfVimKeybind
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfWordsearchVerb body non-empty' {
    run functions zpwrFzfWordsearchVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfWordsearchVerbEdit body non-empty' {
    run functions zpwrFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfZList body non-empty' {
    run functions zpwrFzfZList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfZListVerb body non-empty' {
    run functions zpwrFzfZListVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzfZshKeybind body non-empty' {
    run functions zpwrFzfZshKeybind
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzvim body non-empty' {
    run functions zpwrFzvim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzvimAll body non-empty' {
    run functions zpwrFzvimAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrFzvimScript body non-empty' {
    run functions zpwrFzvimScript
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetFound body non-empty' {
    run functions zpwrGetFound
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetGHDelURL body non-empty' {
    run functions zpwrGetGHDelURL
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetGtags body non-empty' {
    run functions zpwrGetGtags
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetGtagsEdit body non-empty' {
    run functions zpwrGetGtagsEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetLocate body non-empty' {
    run functions zpwrGetLocate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetrc body non-empty' {
    run functions zpwrGetrc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetrcdev body non-empty' {
    run functions zpwrGetrcdev
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGetrcWidget body non-empty' {
    run functions zpwrGetrcWidget
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrgh body non-empty' {
    run functions zpwrgh
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGitCheckoutRebasePush body non-empty' {
    run functions zpwrGitCheckoutRebasePush
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGitConfig body non-empty' {
    run functions zpwrGitConfig
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGitIgnores body non-empty' {
    run functions zpwrGitIgnores
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGitReposFile body non-empty' {
    run functions zpwrGitReposFile
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGoclean body non-empty' {
    run functions zpwrGoclean
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGoogle body non-empty' {
    run functions zpwrGoogle
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrGtagsIntoFzf body non-empty' {
    run functions zpwrGtagsIntoFzf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrHistfile body non-empty' {
    run functions zpwrHistfile
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrHistoryVerbAccept body non-empty' {
    run functions zpwrHistoryVerbAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrHistoryVerbEdit body non-empty' {
    run functions zpwrHistoryVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrInterceptDelete body non-empty' {
    run functions zpwrInterceptDelete
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrInterceptSurround body non-empty' {
    run functions zpwrInterceptSurround
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrIntoFzf body non-empty' {
    run functions zpwrIntoFzf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrIntoFzfAg body non-empty' {
    run functions zpwrIntoFzfAg
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrJetbrainsWorkspaceEdit body non-empty' {
    run functions zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrJsonToArray body non-empty' {
    run functions zpwrJsonToArray
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrKeyClear body non-empty' {
    run functions zpwrKeyClear
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrKeySender body non-empty' {
    run functions zpwrKeySender
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrKillLsofVerbAccept body non-empty' {
    run functions zpwrKillLsofVerbAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrKillLsofVerbEdit body non-empty' {
    run functions zpwrKillLsofVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrKillPSVerbAccept body non-empty' {
    run functions zpwrKillPSVerbAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrKillPSVerbEdit body non-empty' {
    run functions zpwrKillPSVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrKillRemote body non-empty' {
    run functions zpwrKillRemote
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLargestGitFiles body non-empty' {
    run functions zpwrLargestGitFiles
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLastWordDouble body non-empty' {
    run functions zpwrLastWordDouble
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLineCount body non-empty' {
    run functions zpwrLineCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLinkConf body non-empty' {
    run functions zpwrLinkConf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrListFiles body non-empty' {
    run functions zpwrListFiles
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrListNoClear body non-empty' {
    run functions zpwrListNoClear
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrListVerbs body non-empty' {
    run functions zpwrListVerbs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrListVerbsColor body non-empty' {
    run functions zpwrListVerbsColor
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLoadJenv body non-empty' {
    run functions zpwrLoadJenv
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzf body non-empty' {
    run functions zpwrLocateFzf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfEdit body non-empty' {
    run functions zpwrLocateFzfEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfEditNoZLE body non-empty' {
    run functions zpwrLocateFzfEditNoZLE
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfEditNoZLEC body non-empty' {
    run functions zpwrLocateFzfEditNoZLEC
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfEditNoZLEEmacs body non-empty' {
    run functions zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfEditNoZLEVim body non-empty' {
    run functions zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfNoZLE body non-empty' {
    run functions zpwrLocateFzfNoZLE
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfNoZLEC body non-empty' {
    run functions zpwrLocateFzfNoZLEC
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfNoZLEEmacs body non-empty' {
    run functions zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLocateFzfNoZLEVim body non-empty' {
    run functions zpwrLocateFzfNoZLEVim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLoginCount body non-empty' {
    run functions zpwrLoginCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLsoffzf body non-empty' {
    run functions zpwrLsoffzf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrMagicEnter body non-empty' {
    run functions zpwrMagicEnter
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrModulesFZF body non-empty' {
    run functions zpwrModulesFZF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrMycurl body non-empty' {
    run functions zpwrMycurl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrNoPonyBanner body non-empty' {
    run functions zpwrNoPonyBanner
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrNumVerbs body non-empty' {
    run functions zpwrNumVerbs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrNvimThenRecentf body non-empty' {
    run functions zpwrNvimThenRecentf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrOmzOverrides body non-empty' {
    run functions zpwrOmzOverrides
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrOpen body non-empty' {
    run functions zpwrOpen
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrOpenExercism body non-empty' {
    run functions zpwrOpenExercism
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrOpenmygh body non-empty' {
    run functions zpwrOpenmygh
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrOptionsFZF body non-empty' {
    run functions zpwrOptionsFZF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrParseRecentf body non-empty' {
    run functions zpwrParseRecentf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPasteToBuffer body non-empty' {
    run functions zpwrPasteToBuffer
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPasteToStdout body non-empty' {
    run functions zpwrPasteToStdout
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPirun body non-empty' {
    run functions zpwrPirun
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPoll body non-empty' {
    run functions zpwrPoll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPonyBanner body non-empty' {
    run functions zpwrPonyBanner
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPrecmd body non-empty' {
    run functions zpwrPrecmd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPreexec body non-empty' {
    run functions zpwrPreexec
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPrintMap body non-empty' {
    run functions zpwrPrintMap
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPstreemonitor body non-empty' {
    run functions zpwrPstreemonitor
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrPygmentcolors body non-empty' {
    run functions zpwrPygmentcolors
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRationalizeDot body non-empty' {
    run functions zpwrRationalizeDot
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRecentfThenNvim body non-empty' {
    run functions zpwrRecentfThenNvim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRecompile body non-empty' {
    run functions zpwrRecompile
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRecompileFiles body non-empty' {
    run functions zpwrRecompileFiles
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRecompileFpath body non-empty' {
    run functions zpwrRecompileFpath
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRefreshZwc body non-empty' {
    run functions zpwrRefreshZwc
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenAll body non-empty' {
    run functions zpwrRegenAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenAllKeybindingsCache body non-empty' {
    run functions zpwrRegenAllKeybindingsCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenConfigLinks body non-empty' {
    run functions zpwrRegenConfigLinks
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenCtags body non-empty' {
    run functions zpwrRegenCtags
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenGtagsCtags body non-empty' {
    run functions zpwrRegenGtagsCtags
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenGtagsPygments body non-empty' {
    run functions zpwrRegenGtagsPygments
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenGtagsType body non-empty' {
    run functions zpwrRegenGtagsType
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenHistory body non-empty' {
    run functions zpwrRegenHistory
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenMost body non-empty' {
    run functions zpwrRegenMost
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenPowerlineLink body non-empty' {
    run functions zpwrRegenPowerlineLink
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenSearchEnv body non-empty' {
    run functions zpwrRegenSearchEnv
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegenZshCompCache body non-empty' {
    run functions zpwrRegenZshCompCache
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRegexp-replace-single body non-empty' {
    run functions zpwrRegexp-replace-single
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrReload body non-empty' {
    run functions zpwrReload
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRelPath body non-empty' {
    run functions zpwrRelPath
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRename body non-empty' {
    run functions zpwrRename
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrReplacer body non-empty' {
    run functions zpwrReplacer
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrReset body non-empty' {
    run functions zpwrReset
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRestoreHistfile body non-empty' {
    run functions zpwrRestoreHistfile
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRetryZcompdump body non-empty' {
    run functions zpwrRetryZcompdump
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRevealRecurse body non-empty' {
    run functions zpwrRevealRecurse
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrRunner body non-empty' {
    run functions zpwrRunner
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrScnew body non-empty' {
    run functions zpwrScnew
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrScriptCount body non-empty' {
    run functions zpwrScriptCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrScriptList body non-empty' {
    run functions zpwrScriptList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrScripts body non-empty' {
    run functions zpwrScripts
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSearch body non-empty' {
    run functions zpwrSearch
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSelfInsert body non-empty' {
    run functions zpwrSelfInsert
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSshRegain body non-empty' {
    run functions zpwrSshRegain
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrStaleZcompdump body non-empty' {
    run functions zpwrStaleZcompdump
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrStartAutoComplete body non-empty' {
    run functions zpwrStartAutoComplete
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrStartSend body non-empty' {
    run functions zpwrStartSend
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrStartSendFull body non-empty' {
    run functions zpwrStartSendFull
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrStopAutoComplete body non-empty' {
    run functions zpwrStopAutoComplete
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrStopSend body non-empty' {
    run functions zpwrStopSend
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSudoEditorRecent body non-empty' {
    run functions zpwrSudoEditorRecent
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSudoEditorRecentCd body non-empty' {
    run functions zpwrSudoEditorRecentCd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSudoEmacsRecent body non-empty' {
    run functions zpwrSudoEmacsRecent
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSudoEmacsRecentCd body non-empty' {
    run functions zpwrSudoEmacsRecentCd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSudoVimRecent body non-empty' {
    run functions zpwrSudoVimRecent
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrSudoVimRecentCd body non-empty' {
    run functions zpwrSudoVimRecentCd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTabNum body non-empty' {
    run functions zpwrTabNum
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTabNumCmd body non-empty' {
    run functions zpwrTabNumCmd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTest body non-empty' {
    run functions zpwrTest
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTestAll body non-empty' {
    run functions zpwrTestAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTimer body non-empty' {
    run functions zpwrTimer
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTmux_capture_paner body non-empty' {
    run functions zpwrTmux_capture_paner
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTmux_pane_words body non-empty' {
    run functions zpwrTmux_pane_words
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTorip body non-empty' {
    run functions zpwrTorip
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrToriprenew body non-empty' {
    run functions zpwrToriprenew
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTotalLines body non-empty' {
    run functions zpwrTotalLines
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrTutsUpdate body non-empty' {
    run functions zpwrTutsUpdate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUncompile body non-empty' {
    run functions zpwrUncompile
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUninstall body non-empty' {
    run functions zpwrUninstall
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUnlinkConf body non-empty' {
    run functions zpwrUnlinkConf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUp8widget body non-empty' {
    run functions zpwrUp8widget
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUpdate body non-empty' {
    run functions zpwrUpdate
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUpdateAllGitDirs body non-empty' {
    run functions zpwrUpdateAllGitDirs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUpdateDeps body non-empty' {
    run functions zpwrUpdateDeps
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUpdateDepsClean body non-empty' {
    run functions zpwrUpdateDepsClean
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUpdater body non-empty' {
    run functions zpwrUpdater
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUpload body non-empty' {
    run functions zpwrUpload
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrUrlSafe body non-empty' {
    run functions zpwrUrlSafe
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVerbsEditNoZLE body non-empty' {
    run functions zpwrVerbsEditNoZLE
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVerbsFZF body non-empty' {
    run functions zpwrVerbsFZF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVerbsNoZLE body non-empty' {
    run functions zpwrVerbsNoZLE
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVerbsWidget body non-empty' {
    run functions zpwrVerbsWidget
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVerbsWidgetAccept body non-empty' {
    run functions zpwrVerbsWidgetAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimAll body non-empty' {
    run functions zpwrVimAll
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimAllEdit body non-empty' {
    run functions zpwrVimAllEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimAllWidget body non-empty' {
    run functions zpwrVimAllWidget
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimAllWidgetAccept body non-empty' {
    run functions zpwrVimAllWidgetAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimAutoload body non-empty' {
    run functions zpwrVimAutoload
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimEmacsConfig body non-empty' {
    run functions zpwrVimEmacsConfig
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimFzf body non-empty' {
    run functions zpwrVimFzf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimFzfFilesearchVerb body non-empty' {
    run functions zpwrVimFzfFilesearchVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimFzfFilesearchVerbEdit body non-empty' {
    run functions zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimFzfFilesearchWidgetAccept body non-empty' {
    run functions zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimFzfSudo body non-empty' {
    run functions zpwrVimFzfSudo
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimFzfWordsearchVerb body non-empty' {
    run functions zpwrVimFzfWordsearchVerb
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimFzfWordsearchVerbEdit body non-empty' {
    run functions zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimPluginCount body non-empty' {
    run functions zpwrVimPluginCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimPluginList body non-empty' {
    run functions zpwrVimPluginList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimRecent body non-empty' {
    run functions zpwrVimRecent
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimRecentCd body non-empty' {
    run functions zpwrVimRecentCd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimScriptEdit body non-empty' {
    run functions zpwrVimScriptEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimScripts body non-empty' {
    run functions zpwrVimScripts
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimZpwrCtags body non-empty' {
    run functions zpwrVimZpwrCtags
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimZpwrGtags body non-empty' {
    run functions zpwrVimZpwrGtags
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrVimZpwrGtagsEdit body non-empty' {
    run functions zpwrVimZpwrGtagsEdit
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrZcompdump body non-empty' {
    run functions zpwrZcompdump
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrZFZF body non-empty' {
    run functions zpwrZFZF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrZinitUpdates body non-empty' {
    run functions zpwrZinitUpdates
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrZshPluginCount body non-empty' {
    run functions zpwrZshPluginCount
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrZshPluginList body non-empty' {
    run functions zpwrZshPluginList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrZshrcSearch body non-empty' {
    run functions zpwrZshrcSearch
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrZstyle body non-empty' {
    run functions zpwrZstyle
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpz body non-empty' {
    run functions zpz
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zr body non-empty' {
    run functions zr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zs body non-empty' {
    run functions zs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zsm body non-empty' {
    run functions zsm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zt body non-empty' {
    run functions zt
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ztl body non-empty' {
    run functions ztl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ztm body non-empty' {
    run functions ztm
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zua body non-empty' {
    run functions zua
    assert $state equals 0
    assert "$output" is_not_empty
}
