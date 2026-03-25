#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test type of all autoload/common functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'type a is function' {
    run type a
    assert $state equals 0
    assert "$output" contains function
}

@test 'type apz is function' {
    run type apz
    assert $state equals 0
    assert "$output" contains function
}

@test 'type asg is function' {
    run type asg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type b is function' {
    run type b
    assert $state equals 0
    assert "$output" contains function
}

@test 'type c is function' {
    run type c
    assert $state equals 0
    assert "$output" contains function
}

@test 'type cca is function' {
    run type cca
    assert $state equals 0
    assert "$output" contains function
}

@test 'type cd is function' {
    run type cd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ce is function' {
    run type ce
    assert $state equals 0
    assert "$output" contains function
}

@test 'type cg is function' {
    run type cg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type cgh is function' {
    run type cgh
    assert $state equals 0
    assert "$output" contains function
}

@test 'type color2 is function' {
    run type color2
    assert $state equals 0
    assert "$output" contains function
}

@test 'type cv is function' {
    run type cv
    assert $state equals 0
    assert "$output" contains function
}

@test 'type d is function' {
    run type d
    assert $state equals 0
    assert "$output" contains function
}

@test 'type dbz is function' {
    run type dbz
    assert $state equals 0
    assert "$output" contains function
}

@test 'type de is function' {
    run type de
    assert $state equals 0
    assert "$output" contains function
}

@test 'type digs is function' {
    run type digs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type dl is function' {
    run type dl
    assert $state equals 0
    assert "$output" contains function
}

@test 'type docu is function' {
    run type docu
    assert $state equals 0
    assert "$output" contains function
}

@test 'type e is function' {
    run type e
    assert $state equals 0
    assert "$output" contains function
}

@test 'type eb is function' {
    run type eb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type em is function' {
    run type em
    assert $state equals 0
    assert "$output" contains function
}

@test 'type emm is function' {
    run type emm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type f is function' {
    run type f
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ff is function' {
    run type ff
    assert $state equals 0
    assert "$output" contains function
}

@test 'type fff is function' {
    run type fff
    assert $state equals 0
    assert "$output" contains function
}

@test 'type fm is function' {
    run type fm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type fp is function' {
    run type fp
    assert $state equals 0
    assert "$output" contains function
}

@test 'type gcl is function' {
    run type gcl
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ge is function' {
    run type ge
    assert $state equals 0
    assert "$output" contains function
}

@test 'type gil is function' {
    run type gil
    assert $state equals 0
    assert "$output" contains function
}

@test 'type gsdc is function' {
    run type gsdc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type gse is function' {
    run type gse
    assert $state equals 0
    assert "$output" contains function
}

@test 'type h is function' {
    run type h
    assert $state equals 0
    assert "$output" contains function
}

@test 'type hc is function' {
    run type hc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type hd is function' {
    run type hd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ig is function' {
    run type ig
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ino is function' {
    run type ino
    assert $state equals 0
    assert "$output" contains function
}

@test 'type j is function' {
    run type j
    assert $state equals 0
    assert "$output" contains function
}

@test 'type jd is function' {
    run type jd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type kr is function' {
    run type kr
    assert $state equals 0
    assert "$output" contains function
}

@test 'type lcm is function' {
    run type lcm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type mg is function' {
    run type mg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type nz is function' {
    run type nz
    assert $state equals 0
    assert "$output" contains function
}

@test 'type o is function' {
    run type o
    assert $state equals 0
    assert "$output" contains function
}

@test 'type p is function' {
    run type p
    assert $state equals 0
    assert "$output" contains function
}

@test 'type pg is function' {
    run type pg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type post is function' {
    run type post
    assert $state equals 0
    assert "$output" contains function
}

@test 'type pre is function' {
    run type pre
    assert $state equals 0
    assert "$output" contains function
}

@test 'type r is function' {
    run type r
    assert $state equals 0
    assert "$output" contains function
}

@test 'type return2 is function' {
    run type return2
    assert $state equals 0
    assert "$output" contains function
}

@test 'type rm is function' {
    run type rm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type s is function' {
    run type s
    assert $state equals 0
    assert "$output" contains function
}

@test 'type sub is function' {
    run type sub
    assert $state equals 0
    assert "$output" contains function
}

@test 'type suc is function' {
    run type suc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type t is function' {
    run type t
    assert $state equals 0
    assert "$output" contains function
}

@test 'type tac is function' {
    run type tac
    assert $state equals 0
    assert "$output" contains function
}

@test 'type tma is function' {
    run type tma
    assert $state equals 0
    assert "$output" contains function
}

@test 'type to is function' {
    run type to
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ue is function' {
    run type ue
    assert $state equals 0
    assert "$output" contains function
}

@test 'type va is function' {
    run type va
    assert $state equals 0
    assert "$output" contains function
}

@test 'type vb is function' {
    run type vb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type vl is function' {
    run type vl
    assert $state equals 0
    assert "$output" contains function
}

@test 'type we is function' {
    run type we
    assert $state equals 0
    assert "$output" contains function
}

@test 'type wg is function' {
    run type wg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ww is function' {
    run type ww
    assert $state equals 0
    assert "$output" contains function
}

@test 'type www is function' {
    run type www
    assert $state equals 0
    assert "$output" contains function
}

@test 'type xx is function' {
    run type xx
    assert $state equals 0
    assert "$output" contains function
}

@test 'type z is function' {
    run type z
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zal is function' {
    run type zal
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zalc is function' {
    run type zalc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zald is function' {
    run type zald
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zalf is function' {
    run type zalf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zall is function' {
    run type zall
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zalo is function' {
    run type zalo
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zals is function' {
    run type zals
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zalu is function' {
    run type zalu
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zarg is function' {
    run type zarg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zco is function' {
    run type zco
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zd is function' {
    run type zd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ze is function' {
    run type ze
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zg is function' {
    run type zg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zh is function' {
    run type zh
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zhb is function' {
    run type zhb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zhc is function' {
    run type zhc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zhp is function' {
    run type zhp
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zhs is function' {
    run type zhs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zil is function' {
    run type zil
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zl is function' {
    run type zl
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zlc is function' {
    run type zlc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zli is function' {
    run type zli
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zlr is function' {
    run type zlr
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zlt is function' {
    run type zlt
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zm is function' {
    run type zm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpl is function' {
    run type zpl
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwr is function' {
    run type zpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwr256ColorTest is function' {
    run type zpwr256ColorTest
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAbout is function' {
    run type zpwrAbout
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAcceptLine is function' {
    run type zpwrAcceptLine
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAddOMZAttrib is function' {
    run type zpwrAddOMZAttrib
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAgIntoFzf is function' {
    run type zpwrAgIntoFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAlacritty is function' {
    run type zpwrAlacritty
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAllRemotes is function' {
    run type zpwrAllRemotes
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAllUpdates is function' {
    run type zpwrAllUpdates
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAlternateQuotes is function' {
    run type zpwrAlternateQuotes
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAnimate is function' {
    run type zpwrAnimate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrArrayToJson is function' {
    run type zpwrArrayToJson
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAsVar is function' {
    run type zpwrAsVar
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAutoloadCount is function' {
    run type zpwrAutoloadCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrAutoloadList is function' {
    run type zpwrAutoloadList
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBackup is function' {
    run type zpwrBackup
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBackupHistfile is function' {
    run type zpwrBackupHistfile
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBannerCounts is function' {
    run type zpwrBannerCounts
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBannerLolcat is function' {
    run type zpwrBannerLolcat
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindAliasesLate is function' {
    run type zpwrBindAliasesLate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindAliasesZshLate is function' {
    run type zpwrBindAliasesZshLate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindDirs is function' {
    run type zpwrBindDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindFinal is function' {
    run type zpwrBindFinal
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindForGit is function' {
    run type zpwrBindForGit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindFZFLate is function' {
    run type zpwrBindFZFLate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindHistorySubstring is function' {
    run type zpwrBindHistorySubstring
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindInterceptSurround is function' {
    run type zpwrBindInterceptSurround
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindOverrideAutoComplete is function' {
    run type zpwrBindOverrideAutoComplete
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindOverrideOMZ is function' {
    run type zpwrBindOverrideOMZ
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindOverrideOMZCompdefs is function' {
    run type zpwrBindOverrideOMZCompdefs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindOverrideZLE is function' {
    run type zpwrBindOverrideZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindPenultimate is function' {
    run type zpwrBindPenultimate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindPowerline is function' {
    run type zpwrBindPowerline
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindPowerlineTmux is function' {
    run type zpwrBindPowerlineTmux
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindPrecmd is function' {
    run type zpwrBindPrecmd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindPreexecChpwd is function' {
    run type zpwrBindPreexecChpwd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindVerbs is function' {
    run type zpwrBindVerbs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindZdharma is function' {
    run type zpwrBindZdharma
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindZdharmaPost is function' {
    run type zpwrBindZdharmaPost
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBindZstyle is function' {
    run type zpwrBindZstyle
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrBufferXtrace is function' {
    run type zpwrBufferXtrace
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCat is function' {
    run type zpwrCat
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCatNvimOrVimInfo is function' {
    run type zpwrCatNvimOrVimInfo
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCCommon is function' {
    run type zpwrCCommon
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCd is function' {
    run type zpwrCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCdUp is function' {
    run type zpwrCdUp
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCdVimFzfFilesearchWidgetAccept is function' {
    run type zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrChangeGitAuthorEmail is function' {
    run type zpwrChangeGitAuthorEmail
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrChangeGitCommitterEmail is function' {
    run type zpwrChangeGitCommitterEmail
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrChangeGitEmail is function' {
    run type zpwrChangeGitEmail
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrChangeName is function' {
    run type zpwrChangeName
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrChangeNameZpwr is function' {
    run type zpwrChangeNameZpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrChangeQuotes is function' {
    run type zpwrChangeQuotes
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrChpwd is function' {
    run type zpwrChpwd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanAll is function' {
    run type zpwrCleanAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanCache is function' {
    run type zpwrCleanCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanCompCache is function' {
    run type zpwrCleanCompCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanDirs is function' {
    run type zpwrCleanDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanDirsAndTemp is function' {
    run type zpwrCleanDirsAndTemp
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanGitRepoCache is function' {
    run type zpwrCleanGitRepoCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanGitRepoCleanCache is function' {
    run type zpwrCleanGitRepoCleanCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanGitRepoDirtyCache is function' {
    run type zpwrCleanGitRepoDirtyCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanLog is function' {
    run type zpwrCleanLog
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanRefreshCountsTestUpdate is function' {
    run type zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanRefreshUpdate is function' {
    run type zpwrCleanRefreshUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanTemp is function' {
    run type zpwrCleanTemp
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCleanUpdateDeps is function' {
    run type zpwrCleanUpdateDeps
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrClearGitCommit is function' {
    run type zpwrClearGitCommit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrClearGitFile is function' {
    run type zpwrClearGitFile
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrClearLine is function' {
    run type zpwrClearLine
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrClearListFZF is function' {
    run type zpwrClearListFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrClipboard is function' {
    run type zpwrClipboard
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCloneToForked is function' {
    run type zpwrCloneToForked
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrColorTest is function' {
    run type zpwrColorTest
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCommits is function' {
    run type zpwrCommits
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrConfirm is function' {
    run type zpwrConfirm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrContribCount is function' {
    run type zpwrContribCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrContribCountDirs is function' {
    run type zpwrContribCountDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrContribCountLines is function' {
    run type zpwrContribCountLines
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCreateAliasCache is function' {
    run type zpwrCreateAliasCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrCreategif is function' {
    run type zpwrCreategif
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrDedupPaths is function' {
    run type zpwrDedupPaths
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrDeleteLastWord is function' {
    run type zpwrDeleteLastWord
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrDetachall is function' {
    run type zpwrDetachall
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrDfimage is function' {
    run type zpwrDfimage
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrDockerWipe is function' {
    run type zpwrDockerWipe
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEditExercism is function' {
    run type zpwrEditExercism
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEditor is function' {
    run type zpwrEditor
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEditorRecent is function' {
    run type zpwrEditorRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEditorRecentCd is function' {
    run type zpwrEditorRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEditTag is function' {
    run type zpwrEditTag
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsAll is function' {
    run type zpwrEmacsAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsAllEdit is function' {
    run type zpwrEmacsAllEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsAllServer is function' {
    run type zpwrEmacsAllServer
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsAutoload is function' {
    run type zpwrEmacsAutoload
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsEmacsConfig is function' {
    run type zpwrEmacsEmacsConfig
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsFzf is function' {
    run type zpwrEmacsFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsFzfFilesearchVerb is function' {
    run type zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsFzfFilesearchVerbEdit is function' {
    run type zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsFzfWordsearchVerb is function' {
    run type zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsFzfWordsearchVerbEdit is function' {
    run type zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsPluginCount is function' {
    run type zpwrEmacsPluginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsPluginList is function' {
    run type zpwrEmacsPluginList
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsRecent is function' {
    run type zpwrEmacsRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsRecentCd is function' {
    run type zpwrEmacsRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsScriptEdit is function' {
    run type zpwrEmacsScriptEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsScripts is function' {
    run type zpwrEmacsScripts
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsZpwr is function' {
    run type zpwrEmacsZpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsZpwrCtags is function' {
    run type zpwrEmacsZpwrCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsZpwrGtags is function' {
    run type zpwrEmacsZpwrGtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEmacsZpwrGtagsEdit is function' {
    run type zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEnvCounts is function' {
    run type zpwrEnvCounts
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEnvVars is function' {
    run type zpwrEnvVars
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEnvVarsAll is function' {
    run type zpwrEnvVarsAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEOLorNextTabStop is function' {
    run type zpwrEOLorNextTabStop
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrEvalTester is function' {
    run type zpwrEvalTester
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrExecGlob is function' {
    run type zpwrExecGlob
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrExecGlobParallel is function' {
    run type zpwrExecGlobParallel
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrExecpy is function' {
    run type zpwrExecpy
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrExercismDownloadAll is function' {
    run type zpwrExercismDownloadAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrExpandAliasAccept is function' {
    run type zpwrExpandAliasAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrExpandAliases is function' {
    run type zpwrExpandAliases
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrExpandOrCompleteWithDots is function' {
    run type zpwrExpandOrCompleteWithDots
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFasdFList is function' {
    run type zpwrFasdFList
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFasdFListVerb is function' {
    run type zpwrFasdFListVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFasdFZF is function' {
    run type zpwrFasdFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFigletfonts is function' {
    run type zpwrFigletfonts
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfEditNoZLE is function' {
    run type zpwrFindFzfEditNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfEditNoZLEC is function' {
    run type zpwrFindFzfEditNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfEditNoZLEEmacs is function' {
    run type zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfEditNoZLEVim is function' {
    run type zpwrFindFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfNoZLE is function' {
    run type zpwrFindFzfNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfNoZLEC is function' {
    run type zpwrFindFzfNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfNoZLEEmacs is function' {
    run type zpwrFindFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFindFzfNoZLEVim is function' {
    run type zpwrFindFzfNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrForAllGitDirs is function' {
    run type zpwrForAllGitDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrForAllGitDirsClean is function' {
    run type zpwrForAllGitDirsClean
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrForAllGitDirsDirty is function' {
    run type zpwrForAllGitDirsDirty
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrForAllGitDirsRefreshClean is function' {
    run type zpwrForAllGitDirsRefreshClean
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrForAllGitDirsRefreshDirty is function' {
    run type zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFordir is function' {
    run type zpwrFordir
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFordirUpdate is function' {
    run type zpwrFordirUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfAllKeybind is function' {
    run type zpwrFzfAllKeybind
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfCommits is function' {
    run type zpwrFzfCommits
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfDirSearch is function' {
    run type zpwrFzfDirSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfDirsearchVerb is function' {
    run type zpwrFzfDirsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfEnv is function' {
    run type zpwrFzfEnv
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfEnvVerbAccept is function' {
    run type zpwrFzfEnvVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfEnvVerbEdit is function' {
    run type zpwrFzfEnvVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfFileSearch is function' {
    run type zpwrFzfFileSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfFilesearchVerb is function' {
    run type zpwrFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfFilesearchVerbEdit is function' {
    run type zpwrFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfSurround is function' {
    run type zpwrFzfSurround
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfVimKeybind is function' {
    run type zpwrFzfVimKeybind
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfWordsearchVerb is function' {
    run type zpwrFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfWordsearchVerbEdit is function' {
    run type zpwrFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfZList is function' {
    run type zpwrFzfZList
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfZListVerb is function' {
    run type zpwrFzfZListVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzfZshKeybind is function' {
    run type zpwrFzfZshKeybind
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzvim is function' {
    run type zpwrFzvim
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzvimAll is function' {
    run type zpwrFzvimAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrFzvimScript is function' {
    run type zpwrFzvimScript
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetFound is function' {
    run type zpwrGetFound
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetGHDelURL is function' {
    run type zpwrGetGHDelURL
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetGtags is function' {
    run type zpwrGetGtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetGtagsEdit is function' {
    run type zpwrGetGtagsEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetLocate is function' {
    run type zpwrGetLocate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetrc is function' {
    run type zpwrGetrc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetrcdev is function' {
    run type zpwrGetrcdev
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGetrcWidget is function' {
    run type zpwrGetrcWidget
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrgh is function' {
    run type zpwrgh
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGitCheckoutRebasePush is function' {
    run type zpwrGitCheckoutRebasePush
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGitConfig is function' {
    run type zpwrGitConfig
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGitIgnores is function' {
    run type zpwrGitIgnores
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGitReposFile is function' {
    run type zpwrGitReposFile
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGoclean is function' {
    run type zpwrGoclean
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGoogle is function' {
    run type zpwrGoogle
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrGtagsIntoFzf is function' {
    run type zpwrGtagsIntoFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrHistfile is function' {
    run type zpwrHistfile
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrHistoryVerbAccept is function' {
    run type zpwrHistoryVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrHistoryVerbEdit is function' {
    run type zpwrHistoryVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrInterceptDelete is function' {
    run type zpwrInterceptDelete
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrInterceptSurround is function' {
    run type zpwrInterceptSurround
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrIntoFzf is function' {
    run type zpwrIntoFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrIntoFzfAg is function' {
    run type zpwrIntoFzfAg
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrJetbrainsWorkspaceEdit is function' {
    run type zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrJsonToArray is function' {
    run type zpwrJsonToArray
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrKeyClear is function' {
    run type zpwrKeyClear
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrKeySender is function' {
    run type zpwrKeySender
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrKillLsofVerbAccept is function' {
    run type zpwrKillLsofVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrKillLsofVerbEdit is function' {
    run type zpwrKillLsofVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrKillPSVerbAccept is function' {
    run type zpwrKillPSVerbAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrKillPSVerbEdit is function' {
    run type zpwrKillPSVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrKillRemote is function' {
    run type zpwrKillRemote
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLargestGitFiles is function' {
    run type zpwrLargestGitFiles
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLastWordDouble is function' {
    run type zpwrLastWordDouble
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLineCount is function' {
    run type zpwrLineCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLinkConf is function' {
    run type zpwrLinkConf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrListFiles is function' {
    run type zpwrListFiles
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrListNoClear is function' {
    run type zpwrListNoClear
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrListVerbs is function' {
    run type zpwrListVerbs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLoadJenv is function' {
    run type zpwrLoadJenv
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzf is function' {
    run type zpwrLocateFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfEdit is function' {
    run type zpwrLocateFzfEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfEditNoZLE is function' {
    run type zpwrLocateFzfEditNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfEditNoZLEC is function' {
    run type zpwrLocateFzfEditNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfEditNoZLEEmacs is function' {
    run type zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfEditNoZLEVim is function' {
    run type zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfNoZLE is function' {
    run type zpwrLocateFzfNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfNoZLEC is function' {
    run type zpwrLocateFzfNoZLEC
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfNoZLEEmacs is function' {
    run type zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLocateFzfNoZLEVim is function' {
    run type zpwrLocateFzfNoZLEVim
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLoginCount is function' {
    run type zpwrLoginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrLsoffzf is function' {
    run type zpwrLsoffzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrMagicEnter is function' {
    run type zpwrMagicEnter
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrModulesFZF is function' {
    run type zpwrModulesFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrMycurl is function' {
    run type zpwrMycurl
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrNoPonyBanner is function' {
    run type zpwrNoPonyBanner
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrNumVerbs is function' {
    run type zpwrNumVerbs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrNvimThenRecentf is function' {
    run type zpwrNvimThenRecentf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrOmzOverrides is function' {
    run type zpwrOmzOverrides
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrOpen is function' {
    run type zpwrOpen
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrOpenExercism is function' {
    run type zpwrOpenExercism
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrOpenmygh is function' {
    run type zpwrOpenmygh
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrOptionsFZF is function' {
    run type zpwrOptionsFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrParseRecentf is function' {
    run type zpwrParseRecentf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPasteToBuffer is function' {
    run type zpwrPasteToBuffer
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPasteToStdout is function' {
    run type zpwrPasteToStdout
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPirun is function' {
    run type zpwrPirun
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPoll is function' {
    run type zpwrPoll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPonyBanner is function' {
    run type zpwrPonyBanner
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPrecmd is function' {
    run type zpwrPrecmd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPreexec is function' {
    run type zpwrPreexec
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPrintMap is function' {
    run type zpwrPrintMap
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPstreemonitor is function' {
    run type zpwrPstreemonitor
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrPygmentcolors is function' {
    run type zpwrPygmentcolors
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRationalizeDot is function' {
    run type zpwrRationalizeDot
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRecentfThenNvim is function' {
    run type zpwrRecentfThenNvim
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRecompile is function' {
    run type zpwrRecompile
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRecompileFiles is function' {
    run type zpwrRecompileFiles
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRecompileFpath is function' {
    run type zpwrRecompileFpath
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRefreshZwc is function' {
    run type zpwrRefreshZwc
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenAll is function' {
    run type zpwrRegenAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenAllKeybindingsCache is function' {
    run type zpwrRegenAllKeybindingsCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenConfigLinks is function' {
    run type zpwrRegenConfigLinks
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenCtags is function' {
    run type zpwrRegenCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenGtagsCtags is function' {
    run type zpwrRegenGtagsCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenGtagsPygments is function' {
    run type zpwrRegenGtagsPygments
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenGtagsType is function' {
    run type zpwrRegenGtagsType
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenHistory is function' {
    run type zpwrRegenHistory
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenMost is function' {
    run type zpwrRegenMost
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenPowerlineLink is function' {
    run type zpwrRegenPowerlineLink
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenSearchEnv is function' {
    run type zpwrRegenSearchEnv
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegenZshCompCache is function' {
    run type zpwrRegenZshCompCache
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRegexp-replace-single is function' {
    run type zpwrRegexp-replace-single
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrReload is function' {
    run type zpwrReload
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRelPath is function' {
    run type zpwrRelPath
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRename is function' {
    run type zpwrRename
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrReplacer is function' {
    run type zpwrReplacer
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrReset is function' {
    run type zpwrReset
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRestoreHistfile is function' {
    run type zpwrRestoreHistfile
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRetryZcompdump is function' {
    run type zpwrRetryZcompdump
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRevealRecurse is function' {
    run type zpwrRevealRecurse
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrRunner is function' {
    run type zpwrRunner
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrScnew is function' {
    run type zpwrScnew
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrScriptCount is function' {
    run type zpwrScriptCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrScriptList is function' {
    run type zpwrScriptList
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrScripts is function' {
    run type zpwrScripts
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSearch is function' {
    run type zpwrSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSelfInsert is function' {
    run type zpwrSelfInsert
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSshRegain is function' {
    run type zpwrSshRegain
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrStaleZcompdump is function' {
    run type zpwrStaleZcompdump
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrStartAutoComplete is function' {
    run type zpwrStartAutoComplete
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrStartSend is function' {
    run type zpwrStartSend
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrStartSendFull is function' {
    run type zpwrStartSendFull
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrStopAutoComplete is function' {
    run type zpwrStopAutoComplete
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrStopSend is function' {
    run type zpwrStopSend
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSudoEditorRecent is function' {
    run type zpwrSudoEditorRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSudoEditorRecentCd is function' {
    run type zpwrSudoEditorRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSudoEmacsRecent is function' {
    run type zpwrSudoEmacsRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSudoEmacsRecentCd is function' {
    run type zpwrSudoEmacsRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSudoVimRecent is function' {
    run type zpwrSudoVimRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrSudoVimRecentCd is function' {
    run type zpwrSudoVimRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTabNum is function' {
    run type zpwrTabNum
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTabNumCmd is function' {
    run type zpwrTabNumCmd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTest is function' {
    run type zpwrTest
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTestAll is function' {
    run type zpwrTestAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTimer is function' {
    run type zpwrTimer
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTmux_capture_paner is function' {
    run type zpwrTmux_capture_paner
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTmux_pane_words is function' {
    run type zpwrTmux_pane_words
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTorip is function' {
    run type zpwrTorip
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrToriprenew is function' {
    run type zpwrToriprenew
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTotalLines is function' {
    run type zpwrTotalLines
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrTutsUpdate is function' {
    run type zpwrTutsUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUncompile is function' {
    run type zpwrUncompile
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUninstall is function' {
    run type zpwrUninstall
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUnlinkConf is function' {
    run type zpwrUnlinkConf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUp8widget is function' {
    run type zpwrUp8widget
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUpdate is function' {
    run type zpwrUpdate
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUpdateAllGitDirs is function' {
    run type zpwrUpdateAllGitDirs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUpdateDeps is function' {
    run type zpwrUpdateDeps
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUpdateDepsClean is function' {
    run type zpwrUpdateDepsClean
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUpdater is function' {
    run type zpwrUpdater
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUpload is function' {
    run type zpwrUpload
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrUrlSafe is function' {
    run type zpwrUrlSafe
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVerbsEditNoZLE is function' {
    run type zpwrVerbsEditNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVerbsFZF is function' {
    run type zpwrVerbsFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVerbsNoZLE is function' {
    run type zpwrVerbsNoZLE
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVerbsWidget is function' {
    run type zpwrVerbsWidget
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVerbsWidgetAccept is function' {
    run type zpwrVerbsWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimAll is function' {
    run type zpwrVimAll
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimAllEdit is function' {
    run type zpwrVimAllEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimAllWidget is function' {
    run type zpwrVimAllWidget
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimAllWidgetAccept is function' {
    run type zpwrVimAllWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimAutoload is function' {
    run type zpwrVimAutoload
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimEmacsConfig is function' {
    run type zpwrVimEmacsConfig
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimFzf is function' {
    run type zpwrVimFzf
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimFzfFilesearchVerb is function' {
    run type zpwrVimFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimFzfFilesearchVerbEdit is function' {
    run type zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimFzfFilesearchWidgetAccept is function' {
    run type zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimFzfSudo is function' {
    run type zpwrVimFzfSudo
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimFzfWordsearchVerb is function' {
    run type zpwrVimFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimFzfWordsearchVerbEdit is function' {
    run type zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimPluginCount is function' {
    run type zpwrVimPluginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimPluginList is function' {
    run type zpwrVimPluginList
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimRecent is function' {
    run type zpwrVimRecent
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimRecentCd is function' {
    run type zpwrVimRecentCd
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimScriptEdit is function' {
    run type zpwrVimScriptEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimScripts is function' {
    run type zpwrVimScripts
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimZpwrCtags is function' {
    run type zpwrVimZpwrCtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimZpwrGtags is function' {
    run type zpwrVimZpwrGtags
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrVimZpwrGtagsEdit is function' {
    run type zpwrVimZpwrGtagsEdit
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrZcompdump is function' {
    run type zpwrZcompdump
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrZFZF is function' {
    run type zpwrZFZF
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrZinitUpdates is function' {
    run type zpwrZinitUpdates
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrZshPluginCount is function' {
    run type zpwrZshPluginCount
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrZshPluginList is function' {
    run type zpwrZshPluginList
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrZshrcSearch is function' {
    run type zpwrZshrcSearch
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpwrZstyle is function' {
    run type zpwrZstyle
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zpz is function' {
    run type zpz
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zr is function' {
    run type zr
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zs is function' {
    run type zs
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zsm is function' {
    run type zsm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zt is function' {
    run type zt
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ztl is function' {
    run type ztl
    assert $state equals 0
    assert "$output" contains function
}

@test 'type ztm is function' {
    run type ztm
    assert $state equals 0
    assert "$output" contains function
}

@test 'type zua is function' {
    run type zua
    assert $state equals 0
    assert "$output" contains function
}
