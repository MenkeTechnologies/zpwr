#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test wordtype of all autoload/common functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'whence -w a is function' {
    run whence -w a
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w apz is function' {
    run whence -w apz
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w asg is function' {
    run whence -w asg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w b is function' {
    run whence -w b
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w c is function' {
    run whence -w c
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w cca is function' {
    run whence -w cca
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w cd is function' {
    run whence -w cd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ce is function' {
    run whence -w ce
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w cg is function' {
    run whence -w cg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w cgh is function' {
    run whence -w cgh
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w color2 is function' {
    run whence -w color2
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w cv is function' {
    run whence -w cv
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w d is function' {
    run whence -w d
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w dbz is function' {
    run whence -w dbz
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w de is function' {
    run whence -w de
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w digs is function' {
    run whence -w digs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w dl is function' {
    run whence -w dl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w docu is function' {
    run whence -w docu
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w e is function' {
    run whence -w e
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w eb is function' {
    run whence -w eb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w em is function' {
    run whence -w em
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w emm is function' {
    run whence -w emm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w f is function' {
    run whence -w f
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ff is function' {
    run whence -w ff
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w fff is function' {
    run whence -w fff
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w fm is function' {
    run whence -w fm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w fp is function' {
    run whence -w fp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w gcl is function' {
    run whence -w gcl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ge is function' {
    run whence -w ge
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w gil is function' {
    run whence -w gil
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w gsdc is function' {
    run whence -w gsdc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w gse is function' {
    run whence -w gse
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w h is function' {
    run whence -w h
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w hc is function' {
    run whence -w hc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w hd is function' {
    run whence -w hd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ig is function' {
    run whence -w ig
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ino is function' {
    run whence -w ino
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w j is function' {
    run whence -w j
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w jd is function' {
    run whence -w jd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w kr is function' {
    run whence -w kr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w lcm is function' {
    run whence -w lcm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w mg is function' {
    run whence -w mg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w nz is function' {
    run whence -w nz
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w o is function' {
    run whence -w o
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w p is function' {
    run whence -w p
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w pg is function' {
    run whence -w pg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w post is function' {
    run whence -w post
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w pre is function' {
    run whence -w pre
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w r is function' {
    run whence -w r
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w return2 is function' {
    run whence -w return2
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w rm is function' {
    run whence -w rm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w sub is function' {
    run whence -w sub
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w suc is function' {
    run whence -w suc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w t is function' {
    run whence -w t
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w tac is function' {
    run whence -w tac
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w tma is function' {
    run whence -w tma
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w to is function' {
    run whence -w to
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ue is function' {
    run whence -w ue
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w va is function' {
    run whence -w va
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w vb is function' {
    run whence -w vb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w vl is function' {
    run whence -w vl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w we is function' {
    run whence -w we
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w wg is function' {
    run whence -w wg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ww is function' {
    run whence -w ww
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w www is function' {
    run whence -w www
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w xx is function' {
    run whence -w xx
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w z is function' {
    run whence -w z
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zal is function' {
    run whence -w zal
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zalc is function' {
    run whence -w zalc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zald is function' {
    run whence -w zald
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zalf is function' {
    run whence -w zalf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zall is function' {
    run whence -w zall
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zalo is function' {
    run whence -w zalo
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zals is function' {
    run whence -w zals
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zalu is function' {
    run whence -w zalu
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zarg is function' {
    run whence -w zarg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zco is function' {
    run whence -w zco
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zd is function' {
    run whence -w zd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ze is function' {
    run whence -w ze
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zg is function' {
    run whence -w zg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zh is function' {
    run whence -w zh
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zhb is function' {
    run whence -w zhb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zhc is function' {
    run whence -w zhc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zhp is function' {
    run whence -w zhp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zhs is function' {
    run whence -w zhs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zil is function' {
    run whence -w zil
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zl is function' {
    run whence -w zl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zlc is function' {
    run whence -w zlc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zli is function' {
    run whence -w zli
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zlr is function' {
    run whence -w zlr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zlt is function' {
    run whence -w zlt
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zm is function' {
    run whence -w zm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpl is function' {
    run whence -w zpl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwr is function' {
    run whence -w zpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwr256ColorTest is function' {
    run whence -w zpwr256ColorTest
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAbout is function' {
    run whence -w zpwrAbout
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAcceptLine is function' {
    run whence -w zpwrAcceptLine
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAddOMZAttrib is function' {
    run whence -w zpwrAddOMZAttrib
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAgIntoFzf is function' {
    run whence -w zpwrAgIntoFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAlacritty is function' {
    run whence -w zpwrAlacritty
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAllRemotes is function' {
    run whence -w zpwrAllRemotes
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAllUpdates is function' {
    run whence -w zpwrAllUpdates
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAlternateQuotes is function' {
    run whence -w zpwrAlternateQuotes
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAnimate is function' {
    run whence -w zpwrAnimate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrArrayToJson is function' {
    run whence -w zpwrArrayToJson
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAsVar is function' {
    run whence -w zpwrAsVar
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAutoloadCount is function' {
    run whence -w zpwrAutoloadCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAutoloadList is function' {
    run whence -w zpwrAutoloadList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBackup is function' {
    run whence -w zpwrBackup
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBackupHistfile is function' {
    run whence -w zpwrBackupHistfile
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBannerCounts is function' {
    run whence -w zpwrBannerCounts
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBannerLolcat is function' {
    run whence -w zpwrBannerLolcat
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindAliasesLate is function' {
    run whence -w zpwrBindAliasesLate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindAliasesZshLate is function' {
    run whence -w zpwrBindAliasesZshLate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindDirs is function' {
    run whence -w zpwrBindDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindFinal is function' {
    run whence -w zpwrBindFinal
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindForGit is function' {
    run whence -w zpwrBindForGit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindFZFLate is function' {
    run whence -w zpwrBindFZFLate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindHistorySubstring is function' {
    run whence -w zpwrBindHistorySubstring
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindInterceptSurround is function' {
    run whence -w zpwrBindInterceptSurround
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindOverrideAutoComplete is function' {
    run whence -w zpwrBindOverrideAutoComplete
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindOverrideOMZ is function' {
    run whence -w zpwrBindOverrideOMZ
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindOverrideOMZCompdefs is function' {
    run whence -w zpwrBindOverrideOMZCompdefs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindOverrideZLE is function' {
    run whence -w zpwrBindOverrideZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindPenultimate is function' {
    run whence -w zpwrBindPenultimate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindPowerline is function' {
    run whence -w zpwrBindPowerline
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindPowerlineTmux is function' {
    run whence -w zpwrBindPowerlineTmux
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindPrecmd is function' {
    run whence -w zpwrBindPrecmd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindPreexecChpwd is function' {
    run whence -w zpwrBindPreexecChpwd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindVerbs is function' {
    run whence -w zpwrBindVerbs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindZdharma is function' {
    run whence -w zpwrBindZdharma
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindZdharmaPost is function' {
    run whence -w zpwrBindZdharmaPost
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBindZstyle is function' {
    run whence -w zpwrBindZstyle
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBufferXtrace is function' {
    run whence -w zpwrBufferXtrace
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCat is function' {
    run whence -w zpwrCat
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCatNvimOrVimInfo is function' {
    run whence -w zpwrCatNvimOrVimInfo
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCCommon is function' {
    run whence -w zpwrCCommon
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCd is function' {
    run whence -w zpwrCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCdUp is function' {
    run whence -w zpwrCdUp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCdVimFzfFilesearchWidgetAccept is function' {
    run whence -w zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrChangeGitAuthorEmail is function' {
    run whence -w zpwrChangeGitAuthorEmail
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrChangeGitCommitterEmail is function' {
    run whence -w zpwrChangeGitCommitterEmail
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrChangeGitEmail is function' {
    run whence -w zpwrChangeGitEmail
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrChangeName is function' {
    run whence -w zpwrChangeName
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrChangeNameZpwr is function' {
    run whence -w zpwrChangeNameZpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrChangeQuotes is function' {
    run whence -w zpwrChangeQuotes
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrChpwd is function' {
    run whence -w zpwrChpwd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanAll is function' {
    run whence -w zpwrCleanAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanCache is function' {
    run whence -w zpwrCleanCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanCompCache is function' {
    run whence -w zpwrCleanCompCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanDirs is function' {
    run whence -w zpwrCleanDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanDirsAndTemp is function' {
    run whence -w zpwrCleanDirsAndTemp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanGitRepoCache is function' {
    run whence -w zpwrCleanGitRepoCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanGitRepoCleanCache is function' {
    run whence -w zpwrCleanGitRepoCleanCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanGitRepoDirtyCache is function' {
    run whence -w zpwrCleanGitRepoDirtyCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanLog is function' {
    run whence -w zpwrCleanLog
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanRefreshCountsTestUpdate is function' {
    run whence -w zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanRefreshUpdate is function' {
    run whence -w zpwrCleanRefreshUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanTemp is function' {
    run whence -w zpwrCleanTemp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCleanUpdateDeps is function' {
    run whence -w zpwrCleanUpdateDeps
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrClearGitCommit is function' {
    run whence -w zpwrClearGitCommit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrClearGitFile is function' {
    run whence -w zpwrClearGitFile
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrClearLine is function' {
    run whence -w zpwrClearLine
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrClearListFZF is function' {
    run whence -w zpwrClearListFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrClipboard is function' {
    run whence -w zpwrClipboard
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCloneToForked is function' {
    run whence -w zpwrCloneToForked
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrColorTest is function' {
    run whence -w zpwrColorTest
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCommits is function' {
    run whence -w zpwrCommits
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrConfirm is function' {
    run whence -w zpwrConfirm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrContribCount is function' {
    run whence -w zpwrContribCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrContribCountDirs is function' {
    run whence -w zpwrContribCountDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrContribCountLines is function' {
    run whence -w zpwrContribCountLines
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCreateAliasCache is function' {
    run whence -w zpwrCreateAliasCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrCreategif is function' {
    run whence -w zpwrCreategif
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDedupPaths is function' {
    run whence -w zpwrDedupPaths
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDeleteLastWord is function' {
    run whence -w zpwrDeleteLastWord
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDetachall is function' {
    run whence -w zpwrDetachall
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDfimage is function' {
    run whence -w zpwrDfimage
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDockerWipe is function' {
    run whence -w zpwrDockerWipe
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEditExercism is function' {
    run whence -w zpwrEditExercism
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEditor is function' {
    run whence -w zpwrEditor
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEditorRecent is function' {
    run whence -w zpwrEditorRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEditorRecentCd is function' {
    run whence -w zpwrEditorRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEditTag is function' {
    run whence -w zpwrEditTag
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsAll is function' {
    run whence -w zpwrEmacsAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsAllEdit is function' {
    run whence -w zpwrEmacsAllEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsAllServer is function' {
    run whence -w zpwrEmacsAllServer
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsAutoload is function' {
    run whence -w zpwrEmacsAutoload
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsEmacsConfig is function' {
    run whence -w zpwrEmacsEmacsConfig
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsFzf is function' {
    run whence -w zpwrEmacsFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsFzfFilesearchVerb is function' {
    run whence -w zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsFzfFilesearchVerbEdit is function' {
    run whence -w zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsFzfWordsearchVerb is function' {
    run whence -w zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsFzfWordsearchVerbEdit is function' {
    run whence -w zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsPluginCount is function' {
    run whence -w zpwrEmacsPluginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsPluginList is function' {
    run whence -w zpwrEmacsPluginList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsRecent is function' {
    run whence -w zpwrEmacsRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsRecentCd is function' {
    run whence -w zpwrEmacsRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsScriptEdit is function' {
    run whence -w zpwrEmacsScriptEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsScripts is function' {
    run whence -w zpwrEmacsScripts
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsZpwr is function' {
    run whence -w zpwrEmacsZpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsZpwrCtags is function' {
    run whence -w zpwrEmacsZpwrCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsZpwrGtags is function' {
    run whence -w zpwrEmacsZpwrGtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEmacsZpwrGtagsEdit is function' {
    run whence -w zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEnvCounts is function' {
    run whence -w zpwrEnvCounts
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEnvVars is function' {
    run whence -w zpwrEnvVars
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEnvVarsAll is function' {
    run whence -w zpwrEnvVarsAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEOLorNextTabStop is function' {
    run whence -w zpwrEOLorNextTabStop
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrEvalTester is function' {
    run whence -w zpwrEvalTester
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrExecGlob is function' {
    run whence -w zpwrExecGlob
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrExecGlobParallel is function' {
    run whence -w zpwrExecGlobParallel
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrExecpy is function' {
    run whence -w zpwrExecpy
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrExercismDownloadAll is function' {
    run whence -w zpwrExercismDownloadAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrExpandAliasAccept is function' {
    run whence -w zpwrExpandAliasAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrExpandAliases is function' {
    run whence -w zpwrExpandAliases
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrExpandOrCompleteWithDots is function' {
    run whence -w zpwrExpandOrCompleteWithDots
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFasdFList is function' {
    run whence -w zpwrFasdFList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFasdFListVerb is function' {
    run whence -w zpwrFasdFListVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFasdFZF is function' {
    run whence -w zpwrFasdFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFigletfonts is function' {
    run whence -w zpwrFigletfonts
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfEditNoZLE is function' {
    run whence -w zpwrFindFzfEditNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfEditNoZLEC is function' {
    run whence -w zpwrFindFzfEditNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfEditNoZLEEmacs is function' {
    run whence -w zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfEditNoZLEVim is function' {
    run whence -w zpwrFindFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfNoZLE is function' {
    run whence -w zpwrFindFzfNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfNoZLEC is function' {
    run whence -w zpwrFindFzfNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfNoZLEEmacs is function' {
    run whence -w zpwrFindFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFindFzfNoZLEVim is function' {
    run whence -w zpwrFindFzfNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrForAllGitDirs is function' {
    run whence -w zpwrForAllGitDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrForAllGitDirsClean is function' {
    run whence -w zpwrForAllGitDirsClean
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrForAllGitDirsDirty is function' {
    run whence -w zpwrForAllGitDirsDirty
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrForAllGitDirsRefreshClean is function' {
    run whence -w zpwrForAllGitDirsRefreshClean
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrForAllGitDirsRefreshDirty is function' {
    run whence -w zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFordir is function' {
    run whence -w zpwrFordir
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFordirUpdate is function' {
    run whence -w zpwrFordirUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfAllKeybind is function' {
    run whence -w zpwrFzfAllKeybind
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfCommits is function' {
    run whence -w zpwrFzfCommits
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfDirSearch is function' {
    run whence -w zpwrFzfDirSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfDirsearchVerb is function' {
    run whence -w zpwrFzfDirsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfEnv is function' {
    run whence -w zpwrFzfEnv
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfEnvVerbAccept is function' {
    run whence -w zpwrFzfEnvVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfEnvVerbEdit is function' {
    run whence -w zpwrFzfEnvVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfFileSearch is function' {
    run whence -w zpwrFzfFileSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfFilesearchVerb is function' {
    run whence -w zpwrFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfFilesearchVerbEdit is function' {
    run whence -w zpwrFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfSurround is function' {
    run whence -w zpwrFzfSurround
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfVimKeybind is function' {
    run whence -w zpwrFzfVimKeybind
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfWordsearchVerb is function' {
    run whence -w zpwrFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfWordsearchVerbEdit is function' {
    run whence -w zpwrFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfZList is function' {
    run whence -w zpwrFzfZList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfZListVerb is function' {
    run whence -w zpwrFzfZListVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzfZshKeybind is function' {
    run whence -w zpwrFzfZshKeybind
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzvim is function' {
    run whence -w zpwrFzvim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzvimAll is function' {
    run whence -w zpwrFzvimAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFzvimScript is function' {
    run whence -w zpwrFzvimScript
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetFound is function' {
    run whence -w zpwrGetFound
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetGHDelURL is function' {
    run whence -w zpwrGetGHDelURL
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetGtags is function' {
    run whence -w zpwrGetGtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetGtagsEdit is function' {
    run whence -w zpwrGetGtagsEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetLocate is function' {
    run whence -w zpwrGetLocate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetrc is function' {
    run whence -w zpwrGetrc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetrcdev is function' {
    run whence -w zpwrGetrcdev
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGetrcWidget is function' {
    run whence -w zpwrGetrcWidget
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrgh is function' {
    run whence -w zpwrgh
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGitCheckoutRebasePush is function' {
    run whence -w zpwrGitCheckoutRebasePush
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGitConfig is function' {
    run whence -w zpwrGitConfig
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGitIgnores is function' {
    run whence -w zpwrGitIgnores
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGitReposFile is function' {
    run whence -w zpwrGitReposFile
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGoclean is function' {
    run whence -w zpwrGoclean
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGoogle is function' {
    run whence -w zpwrGoogle
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrGtagsIntoFzf is function' {
    run whence -w zpwrGtagsIntoFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrHistfile is function' {
    run whence -w zpwrHistfile
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrHistoryVerbAccept is function' {
    run whence -w zpwrHistoryVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrHistoryVerbEdit is function' {
    run whence -w zpwrHistoryVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrInterceptDelete is function' {
    run whence -w zpwrInterceptDelete
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrInterceptSurround is function' {
    run whence -w zpwrInterceptSurround
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrIntoFzf is function' {
    run whence -w zpwrIntoFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrIntoFzfAg is function' {
    run whence -w zpwrIntoFzfAg
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrJetbrainsWorkspaceEdit is function' {
    run whence -w zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrJsonToArray is function' {
    run whence -w zpwrJsonToArray
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrKeyClear is function' {
    run whence -w zpwrKeyClear
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrKeySender is function' {
    run whence -w zpwrKeySender
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrKillLsofVerbAccept is function' {
    run whence -w zpwrKillLsofVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrKillLsofVerbEdit is function' {
    run whence -w zpwrKillLsofVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrKillPSVerbAccept is function' {
    run whence -w zpwrKillPSVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrKillPSVerbEdit is function' {
    run whence -w zpwrKillPSVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrKillRemote is function' {
    run whence -w zpwrKillRemote
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLargestGitFiles is function' {
    run whence -w zpwrLargestGitFiles
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLastWordDouble is function' {
    run whence -w zpwrLastWordDouble
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLineCount is function' {
    run whence -w zpwrLineCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLinkConf is function' {
    run whence -w zpwrLinkConf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrListFiles is function' {
    run whence -w zpwrListFiles
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrListNoClear is function' {
    run whence -w zpwrListNoClear
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrListVerbs is function' {
    run whence -w zpwrListVerbs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrListVerbsColor is function' {
    run whence -w zpwrListVerbsColor
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLoadJenv is function' {
    run whence -w zpwrLoadJenv
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzf is function' {
    run whence -w zpwrLocateFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfEdit is function' {
    run whence -w zpwrLocateFzfEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfEditNoZLE is function' {
    run whence -w zpwrLocateFzfEditNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfEditNoZLEC is function' {
    run whence -w zpwrLocateFzfEditNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfEditNoZLEEmacs is function' {
    run whence -w zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfEditNoZLEVim is function' {
    run whence -w zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfNoZLE is function' {
    run whence -w zpwrLocateFzfNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfNoZLEC is function' {
    run whence -w zpwrLocateFzfNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfNoZLEEmacs is function' {
    run whence -w zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLocateFzfNoZLEVim is function' {
    run whence -w zpwrLocateFzfNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLoginCount is function' {
    run whence -w zpwrLoginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLsoffzf is function' {
    run whence -w zpwrLsoffzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrMagicEnter is function' {
    run whence -w zpwrMagicEnter
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrModulesFZF is function' {
    run whence -w zpwrModulesFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrMycurl is function' {
    run whence -w zpwrMycurl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrNoPonyBanner is function' {
    run whence -w zpwrNoPonyBanner
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrNumVerbs is function' {
    run whence -w zpwrNumVerbs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrNvimThenRecentf is function' {
    run whence -w zpwrNvimThenRecentf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrOmzOverrides is function' {
    run whence -w zpwrOmzOverrides
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrOpen is function' {
    run whence -w zpwrOpen
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrOpenExercism is function' {
    run whence -w zpwrOpenExercism
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrOpenmygh is function' {
    run whence -w zpwrOpenmygh
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrOptionsFZF is function' {
    run whence -w zpwrOptionsFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrParseRecentf is function' {
    run whence -w zpwrParseRecentf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPasteToBuffer is function' {
    run whence -w zpwrPasteToBuffer
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPasteToStdout is function' {
    run whence -w zpwrPasteToStdout
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPirun is function' {
    run whence -w zpwrPirun
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPoll is function' {
    run whence -w zpwrPoll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPonyBanner is function' {
    run whence -w zpwrPonyBanner
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPrecmd is function' {
    run whence -w zpwrPrecmd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPreexec is function' {
    run whence -w zpwrPreexec
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPrintMap is function' {
    run whence -w zpwrPrintMap
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPstreemonitor is function' {
    run whence -w zpwrPstreemonitor
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrPygmentcolors is function' {
    run whence -w zpwrPygmentcolors
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRationalizeDot is function' {
    run whence -w zpwrRationalizeDot
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRecentfThenNvim is function' {
    run whence -w zpwrRecentfThenNvim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRecompile is function' {
    run whence -w zpwrRecompile
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRecompileFiles is function' {
    run whence -w zpwrRecompileFiles
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRecompileFpath is function' {
    run whence -w zpwrRecompileFpath
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRefreshZwc is function' {
    run whence -w zpwrRefreshZwc
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenAll is function' {
    run whence -w zpwrRegenAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenAllKeybindingsCache is function' {
    run whence -w zpwrRegenAllKeybindingsCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenConfigLinks is function' {
    run whence -w zpwrRegenConfigLinks
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenCtags is function' {
    run whence -w zpwrRegenCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenGtagsCtags is function' {
    run whence -w zpwrRegenGtagsCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenGtagsPygments is function' {
    run whence -w zpwrRegenGtagsPygments
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenGtagsType is function' {
    run whence -w zpwrRegenGtagsType
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenHistory is function' {
    run whence -w zpwrRegenHistory
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenMost is function' {
    run whence -w zpwrRegenMost
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenPowerlineLink is function' {
    run whence -w zpwrRegenPowerlineLink
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenSearchEnv is function' {
    run whence -w zpwrRegenSearchEnv
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegenZshCompCache is function' {
    run whence -w zpwrRegenZshCompCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRegexp-replace-single is function' {
    run whence -w zpwrRegexp-replace-single
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrReload is function' {
    run whence -w zpwrReload
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRelPath is function' {
    run whence -w zpwrRelPath
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRename is function' {
    run whence -w zpwrRename
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrReplacer is function' {
    run whence -w zpwrReplacer
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrReset is function' {
    run whence -w zpwrReset
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRestoreHistfile is function' {
    run whence -w zpwrRestoreHistfile
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRetryZcompdump is function' {
    run whence -w zpwrRetryZcompdump
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRevealRecurse is function' {
    run whence -w zpwrRevealRecurse
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrRunner is function' {
    run whence -w zpwrRunner
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrScnew is function' {
    run whence -w zpwrScnew
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrScriptCount is function' {
    run whence -w zpwrScriptCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrScriptList is function' {
    run whence -w zpwrScriptList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrScripts is function' {
    run whence -w zpwrScripts
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSearch is function' {
    run whence -w zpwrSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSelfInsert is function' {
    run whence -w zpwrSelfInsert
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSshRegain is function' {
    run whence -w zpwrSshRegain
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrStaleZcompdump is function' {
    run whence -w zpwrStaleZcompdump
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrStartAutoComplete is function' {
    run whence -w zpwrStartAutoComplete
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrStartSend is function' {
    run whence -w zpwrStartSend
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrStartSendFull is function' {
    run whence -w zpwrStartSendFull
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrStopAutoComplete is function' {
    run whence -w zpwrStopAutoComplete
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrStopSend is function' {
    run whence -w zpwrStopSend
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSudoEditorRecent is function' {
    run whence -w zpwrSudoEditorRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSudoEditorRecentCd is function' {
    run whence -w zpwrSudoEditorRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSudoEmacsRecent is function' {
    run whence -w zpwrSudoEmacsRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSudoEmacsRecentCd is function' {
    run whence -w zpwrSudoEmacsRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSudoVimRecent is function' {
    run whence -w zpwrSudoVimRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSudoVimRecentCd is function' {
    run whence -w zpwrSudoVimRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTabNum is function' {
    run whence -w zpwrTabNum
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTabNumCmd is function' {
    run whence -w zpwrTabNumCmd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTest is function' {
    run whence -w zpwrTest
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTestAll is function' {
    run whence -w zpwrTestAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTimer is function' {
    run whence -w zpwrTimer
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTmux_capture_paner is function' {
    run whence -w zpwrTmux_capture_paner
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTmux_pane_words is function' {
    run whence -w zpwrTmux_pane_words
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTorip is function' {
    run whence -w zpwrTorip
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrToriprenew is function' {
    run whence -w zpwrToriprenew
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTotalLines is function' {
    run whence -w zpwrTotalLines
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTutsUpdate is function' {
    run whence -w zpwrTutsUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUncompile is function' {
    run whence -w zpwrUncompile
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUninstall is function' {
    run whence -w zpwrUninstall
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUnlinkConf is function' {
    run whence -w zpwrUnlinkConf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUp8widget is function' {
    run whence -w zpwrUp8widget
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUpdate is function' {
    run whence -w zpwrUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUpdateAllGitDirs is function' {
    run whence -w zpwrUpdateAllGitDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUpdateDeps is function' {
    run whence -w zpwrUpdateDeps
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUpdateDepsClean is function' {
    run whence -w zpwrUpdateDepsClean
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUpdater is function' {
    run whence -w zpwrUpdater
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUpload is function' {
    run whence -w zpwrUpload
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrUrlSafe is function' {
    run whence -w zpwrUrlSafe
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVerbsEditNoZLE is function' {
    run whence -w zpwrVerbsEditNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVerbsFZF is function' {
    run whence -w zpwrVerbsFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVerbsNoZLE is function' {
    run whence -w zpwrVerbsNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVerbsWidget is function' {
    run whence -w zpwrVerbsWidget
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVerbsWidgetAccept is function' {
    run whence -w zpwrVerbsWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimAll is function' {
    run whence -w zpwrVimAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimAllEdit is function' {
    run whence -w zpwrVimAllEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimAllWidget is function' {
    run whence -w zpwrVimAllWidget
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimAllWidgetAccept is function' {
    run whence -w zpwrVimAllWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimAutoload is function' {
    run whence -w zpwrVimAutoload
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimEmacsConfig is function' {
    run whence -w zpwrVimEmacsConfig
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimFzf is function' {
    run whence -w zpwrVimFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimFzfFilesearchVerb is function' {
    run whence -w zpwrVimFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimFzfFilesearchVerbEdit is function' {
    run whence -w zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimFzfFilesearchWidgetAccept is function' {
    run whence -w zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimFzfSudo is function' {
    run whence -w zpwrVimFzfSudo
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimFzfWordsearchVerb is function' {
    run whence -w zpwrVimFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimFzfWordsearchVerbEdit is function' {
    run whence -w zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimPluginCount is function' {
    run whence -w zpwrVimPluginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimPluginList is function' {
    run whence -w zpwrVimPluginList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimRecent is function' {
    run whence -w zpwrVimRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimRecentCd is function' {
    run whence -w zpwrVimRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimScriptEdit is function' {
    run whence -w zpwrVimScriptEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimScripts is function' {
    run whence -w zpwrVimScripts
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimZpwrCtags is function' {
    run whence -w zpwrVimZpwrCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimZpwrGtags is function' {
    run whence -w zpwrVimZpwrGtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrVimZpwrGtagsEdit is function' {
    run whence -w zpwrVimZpwrGtagsEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrZcompdump is function' {
    run whence -w zpwrZcompdump
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrZFZF is function' {
    run whence -w zpwrZFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrZinitUpdates is function' {
    run whence -w zpwrZinitUpdates
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrZshPluginCount is function' {
    run whence -w zpwrZshPluginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrZshPluginList is function' {
    run whence -w zpwrZshPluginList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrZshrcSearch is function' {
    run whence -w zpwrZshrcSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrZstyle is function' {
    run whence -w zpwrZstyle
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpz is function' {
    run whence -w zpz
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zr is function' {
    run whence -w zr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zs is function' {
    run whence -w zs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zsm is function' {
    run whence -w zsm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zt is function' {
    run whence -w zt
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ztl is function' {
    run whence -w ztl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ztm is function' {
    run whence -w ztm
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zua is function' {
    run whence -w zua
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrBench is function' {
    run whence -w zpwrBench
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTop is function' {
    run whence -w zpwrTop
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDoctor is function' {
    run whence -w zpwrDoctor
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFlame is function' {
    run whence -w zpwrFlame
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAliasRank is function' {
    run whence -w zpwrAliasRank
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrFuncRank is function' {
    run whence -w zpwrFuncRank
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrWatch is function' {
    run whence -w zpwrWatch
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrReplay is function' {
    run whence -w zpwrReplay
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrSnapshot is function' {
    run whence -w zpwrSnapshot
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTrace is function' {
    run whence -w zpwrTrace
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDeps is function' {
    run whence -w zpwrDeps
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrTailLog is function' {
    run whence -w zpwrTailLog
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrStudy is function' {
    run whence -w zpwrStudy
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrWizard is function' {
    run whence -w zpwrWizard
    assert $state equals 0
    assert "$output" contains function
}
