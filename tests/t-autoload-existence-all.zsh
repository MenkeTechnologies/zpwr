#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test existence of all autoload/common functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn a exists' {
    run zpwrExists a
    assert $state equals 0
}

@test 'fn apz exists' {
    run zpwrExists apz
    assert $state equals 0
}

@test 'fn asg exists' {
    run zpwrExists asg
    assert $state equals 0
}

@test 'fn b exists' {
    run zpwrExists b
    assert $state equals 0
}

@test 'fn c exists' {
    run zpwrExists c
    assert $state equals 0
}

@test 'fn cca exists' {
    run zpwrExists cca
    assert $state equals 0
}

@test 'fn cd exists' {
    run zpwrExists cd
    assert $state equals 0
}

@test 'fn ce exists' {
    run zpwrExists ce
    assert $state equals 0
}

@test 'fn cg exists' {
    run zpwrExists cg
    assert $state equals 0
}

@test 'fn cgh exists' {
    run zpwrExists cgh
    assert $state equals 0
}

@test 'fn color2 exists' {
    run zpwrExists color2
    assert $state equals 0
}

@test 'fn cv exists' {
    run zpwrExists cv
    assert $state equals 0
}

@test 'fn d exists' {
    run zpwrExists d
    assert $state equals 0
}

@test 'fn dbz exists' {
    run zpwrExists dbz
    assert $state equals 0
}

@test 'fn de exists' {
    run zpwrExists de
    assert $state equals 0
}

@test 'fn digs exists' {
    run zpwrExists digs
    assert $state equals 0
}

@test 'fn dl exists' {
    run zpwrExists dl
    assert $state equals 0
}

@test 'fn docu exists' {
    run zpwrExists docu
    assert $state equals 0
}

@test 'fn e exists' {
    run zpwrExists e
    assert $state equals 0
}

@test 'fn eb exists' {
    run zpwrExists eb
    assert $state equals 0
}

@test 'fn em exists' {
    run zpwrExists em
    assert $state equals 0
}

@test 'fn emm exists' {
    run zpwrExists emm
    assert $state equals 0
}

@test 'fn f exists' {
    run zpwrExists f
    assert $state equals 0
}

@test 'fn ff exists' {
    run zpwrExists ff
    assert $state equals 0
}

@test 'fn fff exists' {
    run zpwrExists fff
    assert $state equals 0
}

@test 'fn fm exists' {
    run zpwrExists fm
    assert $state equals 0
}

@test 'fn fp exists' {
    run zpwrExists fp
    assert $state equals 0
}

@test 'fn gcl exists' {
    run zpwrExists gcl
    assert $state equals 0
}

@test 'fn ge exists' {
    run zpwrExists ge
    assert $state equals 0
}

@test 'fn gil exists' {
    run zpwrExists gil
    assert $state equals 0
}

@test 'fn gsdc exists' {
    run zpwrExists gsdc
    assert $state equals 0
}

@test 'fn gse exists' {
    run zpwrExists gse
    assert $state equals 0
}

@test 'fn h exists' {
    run zpwrExists h
    assert $state equals 0
}

@test 'fn hc exists' {
    run zpwrExists hc
    assert $state equals 0
}

@test 'fn hd exists' {
    run zpwrExists hd
    assert $state equals 0
}

@test 'fn ig exists' {
    run zpwrExists ig
    assert $state equals 0
}

@test 'fn ino exists' {
    run zpwrExists ino
    assert $state equals 0
}

@test 'fn j exists' {
    run zpwrExists j
    assert $state equals 0
}

@test 'fn jd exists' {
    run zpwrExists jd
    assert $state equals 0
}

@test 'fn kr exists' {
    run zpwrExists kr
    assert $state equals 0
}

@test 'fn lcm exists' {
    run zpwrExists lcm
    assert $state equals 0
}

@test 'fn mg exists' {
    run zpwrExists mg
    assert $state equals 0
}

@test 'fn nz exists' {
    run zpwrExists nz
    assert $state equals 0
}

@test 'fn o exists' {
    run zpwrExists o
    assert $state equals 0
}

@test 'fn p exists' {
    run zpwrExists p
    assert $state equals 0
}

@test 'fn pg exists' {
    run zpwrExists pg
    assert $state equals 0
}

@test 'fn post exists' {
    run zpwrExists post
    assert $state equals 0
}

@test 'fn pre exists' {
    run zpwrExists pre
    assert $state equals 0
}

@test 'fn r exists' {
    run zpwrExists r
    assert $state equals 0
}

@test 'fn return2 exists' {
    run zpwrExists return2
    assert $state equals 0
}

@test 'fn rm exists' {
    run zpwrExists rm
    assert $state equals 0
}

@test 'fn s exists' {
    run zpwrExists s
    assert $state equals 0
}

@test 'fn sub exists' {
    run zpwrExists sub
    assert $state equals 0
}

@test 'fn suc exists' {
    run zpwrExists suc
    assert $state equals 0
}

@test 'fn t exists' {
    run zpwrExists t
    assert $state equals 0
}

@test 'fn tac exists' {
    run zpwrExists tac
    assert $state equals 0
}

@test 'fn tma exists' {
    run zpwrExists tma
    assert $state equals 0
}

@test 'fn to exists' {
    run zpwrExists to
    assert $state equals 0
}

@test 'fn ue exists' {
    run zpwrExists ue
    assert $state equals 0
}

@test 'fn va exists' {
    run zpwrExists va
    assert $state equals 0
}

@test 'fn vb exists' {
    run zpwrExists vb
    assert $state equals 0
}

@test 'fn vl exists' {
    run zpwrExists vl
    assert $state equals 0
}

@test 'fn we exists' {
    run zpwrExists we
    assert $state equals 0
}

@test 'fn wg exists' {
    run zpwrExists wg
    assert $state equals 0
}

@test 'fn ww exists' {
    run zpwrExists ww
    assert $state equals 0
}

@test 'fn www exists' {
    run zpwrExists www
    assert $state equals 0
}

@test 'fn xx exists' {
    run zpwrExists xx
    assert $state equals 0
}

@test 'fn z exists' {
    run zpwrExists z
    assert $state equals 0
}

@test 'fn zal exists' {
    run zpwrExists zal
    assert $state equals 0
}

@test 'fn zalc exists' {
    run zpwrExists zalc
    assert $state equals 0
}

@test 'fn zald exists' {
    run zpwrExists zald
    assert $state equals 0
}

@test 'fn zalf exists' {
    run zpwrExists zalf
    assert $state equals 0
}

@test 'fn zall exists' {
    run zpwrExists zall
    assert $state equals 0
}

@test 'fn zalo exists' {
    run zpwrExists zalo
    assert $state equals 0
}

@test 'fn zals exists' {
    run zpwrExists zals
    assert $state equals 0
}

@test 'fn zalu exists' {
    run zpwrExists zalu
    assert $state equals 0
}

@test 'fn zarg exists' {
    run zpwrExists zarg
    assert $state equals 0
}

@test 'fn zco exists' {
    run zpwrExists zco
    assert $state equals 0
}

@test 'fn zd exists' {
    run zpwrExists zd
    assert $state equals 0
}

@test 'fn ze exists' {
    run zpwrExists ze
    assert $state equals 0
}

@test 'fn zg exists' {
    run zpwrExists zg
    assert $state equals 0
}

@test 'fn zh exists' {
    run zpwrExists zh
    assert $state equals 0
}

@test 'fn zhb exists' {
    run zpwrExists zhb
    assert $state equals 0
}

@test 'fn zhc exists' {
    run zpwrExists zhc
    assert $state equals 0
}

@test 'fn zhp exists' {
    run zpwrExists zhp
    assert $state equals 0
}

@test 'fn zhs exists' {
    run zpwrExists zhs
    assert $state equals 0
}

@test 'fn zil exists' {
    run zpwrExists zil
    assert $state equals 0
}

@test 'fn zl exists' {
    run zpwrExists zl
    assert $state equals 0
}

@test 'fn zlc exists' {
    run zpwrExists zlc
    assert $state equals 0
}

@test 'fn zli exists' {
    run zpwrExists zli
    assert $state equals 0
}

@test 'fn zlr exists' {
    run zpwrExists zlr
    assert $state equals 0
}

@test 'fn zlt exists' {
    run zpwrExists zlt
    assert $state equals 0
}

@test 'fn zm exists' {
    run zpwrExists zm
    assert $state equals 0
}

@test 'fn zpl exists' {
    run zpwrExists zpl
    assert $state equals 0
}

@test 'fn zpwr exists' {
    run zpwrExists zpwr
    assert $state equals 0
}

@test 'fn zpwr256ColorTest exists' {
    run zpwrExists zpwr256ColorTest
    assert $state equals 0
}

@test 'fn zpwrAbout exists' {
    run zpwrExists zpwrAbout
    assert $state equals 0
}

@test 'fn zpwrAcceptLine exists' {
    run zpwrExists zpwrAcceptLine
    assert $state equals 0
}

@test 'fn zpwrAddOMZAttrib exists' {
    run zpwrExists zpwrAddOMZAttrib
    assert $state equals 0
}

@test 'fn zpwrAgIntoFzf exists' {
    run zpwrExists zpwrAgIntoFzf
    assert $state equals 0
}

@test 'fn zpwrAlacritty exists' {
    run zpwrExists zpwrAlacritty
    assert $state equals 0
}

@test 'fn zpwrAllRemotes exists' {
    run zpwrExists zpwrAllRemotes
    assert $state equals 0
}

@test 'fn zpwrAllUpdates exists' {
    run zpwrExists zpwrAllUpdates
    assert $state equals 0
}

@test 'fn zpwrAlternateQuotes exists' {
    run zpwrExists zpwrAlternateQuotes
    assert $state equals 0
}

@test 'fn zpwrAnimate exists' {
    run zpwrExists zpwrAnimate
    assert $state equals 0
}

@test 'fn zpwrArrayToJson exists' {
    run zpwrExists zpwrArrayToJson
    assert $state equals 0
}

@test 'fn zpwrAsVar exists' {
    run zpwrExists zpwrAsVar
    assert $state equals 0
}

@test 'fn zpwrAutoloadCount exists' {
    run zpwrExists zpwrAutoloadCount
    assert $state equals 0
}

@test 'fn zpwrAutoloadList exists' {
    run zpwrExists zpwrAutoloadList
    assert $state equals 0
}

@test 'fn zpwrBackup exists' {
    run zpwrExists zpwrBackup
    assert $state equals 0
}

@test 'fn zpwrBackupHistfile exists' {
    run zpwrExists zpwrBackupHistfile
    assert $state equals 0
}

@test 'fn zpwrBannerCounts exists' {
    run zpwrExists zpwrBannerCounts
    assert $state equals 0
}

@test 'fn zpwrBannerLolcat exists' {
    run zpwrExists zpwrBannerLolcat
    assert $state equals 0
}

@test 'fn zpwrBindAliasesLate exists' {
    run zpwrExists zpwrBindAliasesLate
    assert $state equals 0
}

@test 'fn zpwrBindAliasesZshLate exists' {
    run zpwrExists zpwrBindAliasesZshLate
    assert $state equals 0
}

@test 'fn zpwrBindDirs exists' {
    run zpwrExists zpwrBindDirs
    assert $state equals 0
}

@test 'fn zpwrBindFinal exists' {
    run zpwrExists zpwrBindFinal
    assert $state equals 0
}

@test 'fn zpwrBindForGit exists' {
    run zpwrExists zpwrBindForGit
    assert $state equals 0
}

@test 'fn zpwrBindFZFLate exists' {
    run zpwrExists zpwrBindFZFLate
    assert $state equals 0
}

@test 'fn zpwrBindHistorySubstring exists' {
    run zpwrExists zpwrBindHistorySubstring
    assert $state equals 0
}

@test 'fn zpwrBindInterceptSurround exists' {
    run zpwrExists zpwrBindInterceptSurround
    assert $state equals 0
}

@test 'fn zpwrBindOverrideAutoComplete exists' {
    run zpwrExists zpwrBindOverrideAutoComplete
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZ exists' {
    run zpwrExists zpwrBindOverrideOMZ
    assert $state equals 0
}

@test 'fn zpwrBindOverrideOMZCompdefs exists' {
    run zpwrExists zpwrBindOverrideOMZCompdefs
    assert $state equals 0
}

@test 'fn zpwrBindOverrideZLE exists' {
    run zpwrExists zpwrBindOverrideZLE
    assert $state equals 0
}

@test 'fn zpwrBindPenultimate exists' {
    run zpwrExists zpwrBindPenultimate
    assert $state equals 0
}

@test 'fn zpwrBindPowerline exists' {
    run zpwrExists zpwrBindPowerline
    assert $state equals 0
}

@test 'fn zpwrBindPowerlineTmux exists' {
    run zpwrExists zpwrBindPowerlineTmux
    assert $state equals 0
}

@test 'fn zpwrBindPrecmd exists' {
    run zpwrExists zpwrBindPrecmd
    assert $state equals 0
}

@test 'fn zpwrBindPreexecChpwd exists' {
    run zpwrExists zpwrBindPreexecChpwd
    assert $state equals 0
}

@test 'fn zpwrBindVerbs exists' {
    run zpwrExists zpwrBindVerbs
    assert $state equals 0
}

@test 'fn zpwrBindZdharma exists' {
    run zpwrExists zpwrBindZdharma
    assert $state equals 0
}

@test 'fn zpwrBindZdharmaPost exists' {
    run zpwrExists zpwrBindZdharmaPost
    assert $state equals 0
}

@test 'fn zpwrBindZstyle exists' {
    run zpwrExists zpwrBindZstyle
    assert $state equals 0
}

@test 'fn zpwrBufferXtrace exists' {
    run zpwrExists zpwrBufferXtrace
    assert $state equals 0
}

@test 'fn zpwrCat exists' {
    run zpwrExists zpwrCat
    assert $state equals 0
}

@test 'fn zpwrCatNvimOrVimInfo exists' {
    run zpwrExists zpwrCatNvimOrVimInfo
    assert $state equals 0
}

@test 'fn zpwrCCommon exists' {
    run zpwrExists zpwrCCommon
    assert $state equals 0
}

@test 'fn zpwrCd exists' {
    run zpwrExists zpwrCd
    assert $state equals 0
}

@test 'fn zpwrCdUp exists' {
    run zpwrExists zpwrCdUp
    assert $state equals 0
}

@test 'fn zpwrCdVimFzfFilesearchWidgetAccept exists' {
    run zpwrExists zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'fn zpwrChangeGitAuthorEmail exists' {
    run zpwrExists zpwrChangeGitAuthorEmail
    assert $state equals 0
}

@test 'fn zpwrChangeGitCommitterEmail exists' {
    run zpwrExists zpwrChangeGitCommitterEmail
    assert $state equals 0
}

@test 'fn zpwrChangeGitEmail exists' {
    run zpwrExists zpwrChangeGitEmail
    assert $state equals 0
}

@test 'fn zpwrChangeName exists' {
    run zpwrExists zpwrChangeName
    assert $state equals 0
}

@test 'fn zpwrChangeNameZpwr exists' {
    run zpwrExists zpwrChangeNameZpwr
    assert $state equals 0
}

@test 'fn zpwrChangeQuotes exists' {
    run zpwrExists zpwrChangeQuotes
    assert $state equals 0
}

@test 'fn zpwrChpwd exists' {
    run zpwrExists zpwrChpwd
    assert $state equals 0
}

@test 'fn zpwrCleanAll exists' {
    run zpwrExists zpwrCleanAll
    assert $state equals 0
}

@test 'fn zpwrCleanCache exists' {
    run zpwrExists zpwrCleanCache
    assert $state equals 0
}

@test 'fn zpwrCleanCompCache exists' {
    run zpwrExists zpwrCleanCompCache
    assert $state equals 0
}

@test 'fn zpwrCleanDirs exists' {
    run zpwrExists zpwrCleanDirs
    assert $state equals 0
}

@test 'fn zpwrCleanDirsAndTemp exists' {
    run zpwrExists zpwrCleanDirsAndTemp
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCache exists' {
    run zpwrExists zpwrCleanGitRepoCache
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoCleanCache exists' {
    run zpwrExists zpwrCleanGitRepoCleanCache
    assert $state equals 0
}

@test 'fn zpwrCleanGitRepoDirtyCache exists' {
    run zpwrExists zpwrCleanGitRepoDirtyCache
    assert $state equals 0
}

@test 'fn zpwrCleanLog exists' {
    run zpwrExists zpwrCleanLog
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshCountsTestUpdate exists' {
    run zpwrExists zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
}

@test 'fn zpwrCleanRefreshUpdate exists' {
    run zpwrExists zpwrCleanRefreshUpdate
    assert $state equals 0
}

@test 'fn zpwrCleanTemp exists' {
    run zpwrExists zpwrCleanTemp
    assert $state equals 0
}

@test 'fn zpwrCleanUpdateDeps exists' {
    run zpwrExists zpwrCleanUpdateDeps
    assert $state equals 0
}

@test 'fn zpwrClearGitCommit exists' {
    run zpwrExists zpwrClearGitCommit
    assert $state equals 0
}

@test 'fn zpwrClearGitFile exists' {
    run zpwrExists zpwrClearGitFile
    assert $state equals 0
}

@test 'fn zpwrClearLine exists' {
    run zpwrExists zpwrClearLine
    assert $state equals 0
}

@test 'fn zpwrClearListFZF exists' {
    run zpwrExists zpwrClearListFZF
    assert $state equals 0
}

@test 'fn zpwrClipboard exists' {
    run zpwrExists zpwrClipboard
    assert $state equals 0
}

@test 'fn zpwrCloneToForked exists' {
    run zpwrExists zpwrCloneToForked
    assert $state equals 0
}

@test 'fn zpwrColorTest exists' {
    run zpwrExists zpwrColorTest
    assert $state equals 0
}

@test 'fn zpwrCommits exists' {
    run zpwrExists zpwrCommits
    assert $state equals 0
}

@test 'fn zpwrConfirm exists' {
    run zpwrExists zpwrConfirm
    assert $state equals 0
}

@test 'fn zpwrContribCount exists' {
    run zpwrExists zpwrContribCount
    assert $state equals 0
}

@test 'fn zpwrContribCountDirs exists' {
    run zpwrExists zpwrContribCountDirs
    assert $state equals 0
}

@test 'fn zpwrContribCountLines exists' {
    run zpwrExists zpwrContribCountLines
    assert $state equals 0
}

@test 'fn zpwrCreateAliasCache exists' {
    run zpwrExists zpwrCreateAliasCache
    assert $state equals 0
}

@test 'fn zpwrCreategif exists' {
    run zpwrExists zpwrCreategif
    assert $state equals 0
}

@test 'fn zpwrDedupPaths exists' {
    run zpwrExists zpwrDedupPaths
    assert $state equals 0
}

@test 'fn zpwrDeleteLastWord exists' {
    run zpwrExists zpwrDeleteLastWord
    assert $state equals 0
}

@test 'fn zpwrDetachall exists' {
    run zpwrExists zpwrDetachall
    assert $state equals 0
}

@test 'fn zpwrDfimage exists' {
    run zpwrExists zpwrDfimage
    assert $state equals 0
}

@test 'fn zpwrDockerWipe exists' {
    run zpwrExists zpwrDockerWipe
    assert $state equals 0
}

@test 'fn zpwrEditExercism exists' {
    run zpwrExists zpwrEditExercism
    assert $state equals 0
}

@test 'fn zpwrEditor exists' {
    run zpwrExists zpwrEditor
    assert $state equals 0
}

@test 'fn zpwrEditorRecent exists' {
    run zpwrExists zpwrEditorRecent
    assert $state equals 0
}

@test 'fn zpwrEditorRecentCd exists' {
    run zpwrExists zpwrEditorRecentCd
    assert $state equals 0
}

@test 'fn zpwrEditTag exists' {
    run zpwrExists zpwrEditTag
    assert $state equals 0
}

@test 'fn zpwrEmacsAll exists' {
    run zpwrExists zpwrEmacsAll
    assert $state equals 0
}

@test 'fn zpwrEmacsAllEdit exists' {
    run zpwrExists zpwrEmacsAllEdit
    assert $state equals 0
}

@test 'fn zpwrEmacsAllServer exists' {
    run zpwrExists zpwrEmacsAllServer
    assert $state equals 0
}

@test 'fn zpwrEmacsAutoload exists' {
    run zpwrExists zpwrEmacsAutoload
    assert $state equals 0
}

@test 'fn zpwrEmacsEmacsConfig exists' {
    run zpwrExists zpwrEmacsEmacsConfig
    assert $state equals 0
}

@test 'fn zpwrEmacsFzf exists' {
    run zpwrExists zpwrEmacsFzf
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerb exists' {
    run zpwrExists zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfFilesearchVerbEdit exists' {
    run zpwrExists zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerb exists' {
    run zpwrExists zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
}

@test 'fn zpwrEmacsFzfWordsearchVerbEdit exists' {
    run zpwrExists zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'fn zpwrEmacsPluginCount exists' {
    run zpwrExists zpwrEmacsPluginCount
    assert $state equals 0
}

@test 'fn zpwrEmacsRecent exists' {
    run zpwrExists zpwrEmacsRecent
    assert $state equals 0
}

@test 'fn zpwrEmacsRecentCd exists' {
    run zpwrExists zpwrEmacsRecentCd
    assert $state equals 0
}

@test 'fn zpwrEmacsScriptEdit exists' {
    run zpwrExists zpwrEmacsScriptEdit
    assert $state equals 0
}

@test 'fn zpwrEmacsScripts exists' {
    run zpwrExists zpwrEmacsScripts
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwr exists' {
    run zpwrExists zpwrEmacsZpwr
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrCtags exists' {
    run zpwrExists zpwrEmacsZpwrCtags
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtags exists' {
    run zpwrExists zpwrEmacsZpwrGtags
    assert $state equals 0
}

@test 'fn zpwrEmacsZpwrGtagsEdit exists' {
    run zpwrExists zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
}

@test 'fn zpwrEnvCounts exists' {
    run zpwrExists zpwrEnvCounts
    assert $state equals 0
}

@test 'fn zpwrEnvVars exists' {
    run zpwrExists zpwrEnvVars
    assert $state equals 0
}

@test 'fn zpwrEnvVarsAll exists' {
    run zpwrExists zpwrEnvVarsAll
    assert $state equals 0
}

@test 'fn zpwrEOLorNextTabStop exists' {
    run zpwrExists zpwrEOLorNextTabStop
    assert $state equals 0
}

@test 'fn zpwrEvalTester exists' {
    run zpwrExists zpwrEvalTester
    assert $state equals 0
}

@test 'fn zpwrExecGlob exists' {
    run zpwrExists zpwrExecGlob
    assert $state equals 0
}

@test 'fn zpwrExecGlobParallel exists' {
    run zpwrExists zpwrExecGlobParallel
    assert $state equals 0
}

@test 'fn zpwrExecpy exists' {
    run zpwrExists zpwrExecpy
    assert $state equals 0
}

@test 'fn zpwrExercismDownloadAll exists' {
    run zpwrExists zpwrExercismDownloadAll
    assert $state equals 0
}

@test 'fn zpwrExpandAliasAccept exists' {
    run zpwrExists zpwrExpandAliasAccept
    assert $state equals 0
}

@test 'fn zpwrExpandAliases exists' {
    run zpwrExists zpwrExpandAliases
    assert $state equals 0
}

@test 'fn zpwrExpandOrCompleteWithDots exists' {
    run zpwrExists zpwrExpandOrCompleteWithDots
    assert $state equals 0
}

@test 'fn zpwrFasdFList exists' {
    run zpwrExists zpwrFasdFList
    assert $state equals 0
}

@test 'fn zpwrFasdFListVerb exists' {
    run zpwrExists zpwrFasdFListVerb
    assert $state equals 0
}

@test 'fn zpwrFasdFZF exists' {
    run zpwrExists zpwrFasdFZF
    assert $state equals 0
}

@test 'fn zpwrFigletfonts exists' {
    run zpwrExists zpwrFigletfonts
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLE exists' {
    run zpwrExists zpwrFindFzfEditNoZLE
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEC exists' {
    run zpwrExists zpwrFindFzfEditNoZLEC
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEEmacs exists' {
    run zpwrExists zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'fn zpwrFindFzfEditNoZLEVim exists' {
    run zpwrExists zpwrFindFzfEditNoZLEVim
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLE exists' {
    run zpwrExists zpwrFindFzfNoZLE
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEC exists' {
    run zpwrExists zpwrFindFzfNoZLEC
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEEmacs exists' {
    run zpwrExists zpwrFindFzfNoZLEEmacs
    assert $state equals 0
}

@test 'fn zpwrFindFzfNoZLEVim exists' {
    run zpwrExists zpwrFindFzfNoZLEVim
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirs exists' {
    run zpwrExists zpwrForAllGitDirs
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsClean exists' {
    run zpwrExists zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsDirty exists' {
    run zpwrExists zpwrForAllGitDirsDirty
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshClean exists' {
    run zpwrExists zpwrForAllGitDirsRefreshClean
    assert $state equals 0
}

@test 'fn zpwrForAllGitDirsRefreshDirty exists' {
    run zpwrExists zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
}

@test 'fn zpwrFordir exists' {
    run zpwrExists zpwrFordir
    assert $state equals 0
}

@test 'fn zpwrFordirUpdate exists' {
    run zpwrExists zpwrFordirUpdate
    assert $state equals 0
}

@test 'fn zpwrFzfAllKeybind exists' {
    run zpwrExists zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'fn zpwrFzfCommits exists' {
    run zpwrExists zpwrFzfCommits
    assert $state equals 0
}

@test 'fn zpwrFzfDirSearch exists' {
    run zpwrExists zpwrFzfDirSearch
    assert $state equals 0
}

@test 'fn zpwrFzfDirsearchVerb exists' {
    run zpwrExists zpwrFzfDirsearchVerb
    assert $state equals 0
}

@test 'fn zpwrFzfEnv exists' {
    run zpwrExists zpwrFzfEnv
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbAccept exists' {
    run zpwrExists zpwrFzfEnvVerbAccept
    assert $state equals 0
}

@test 'fn zpwrFzfEnvVerbEdit exists' {
    run zpwrExists zpwrFzfEnvVerbEdit
    assert $state equals 0
}

@test 'fn zpwrFzfFileSearch exists' {
    run zpwrExists zpwrFzfFileSearch
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerb exists' {
    run zpwrExists zpwrFzfFilesearchVerb
    assert $state equals 0
}

@test 'fn zpwrFzfFilesearchVerbEdit exists' {
    run zpwrExists zpwrFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'fn zpwrFzfSurround exists' {
    run zpwrExists zpwrFzfSurround
    assert $state equals 0
}

@test 'fn zpwrFzfVimKeybind exists' {
    run zpwrExists zpwrFzfVimKeybind
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerb exists' {
    run zpwrExists zpwrFzfWordsearchVerb
    assert $state equals 0
}

@test 'fn zpwrFzfWordsearchVerbEdit exists' {
    run zpwrExists zpwrFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'fn zpwrFzfZList exists' {
    run zpwrExists zpwrFzfZList
    assert $state equals 0
}

@test 'fn zpwrFzfZListVerb exists' {
    run zpwrExists zpwrFzfZListVerb
    assert $state equals 0
}

@test 'fn zpwrFzfZshKeybind exists' {
    run zpwrExists zpwrFzfZshKeybind
    assert $state equals 0
}

@test 'fn zpwrFzvim exists' {
    run zpwrExists zpwrFzvim
    assert $state equals 0
}

@test 'fn zpwrFzvimAll exists' {
    run zpwrExists zpwrFzvimAll
    assert $state equals 0
}

@test 'fn zpwrFzvimScript exists' {
    run zpwrExists zpwrFzvimScript
    assert $state equals 0
}

@test 'fn zpwrGetFound exists' {
    run zpwrExists zpwrGetFound
    assert $state equals 0
}

@test 'fn zpwrGetGHDelURL exists' {
    run zpwrExists zpwrGetGHDelURL
    assert $state equals 0
}

@test 'fn zpwrGetGtags exists' {
    run zpwrExists zpwrGetGtags
    assert $state equals 0
}

@test 'fn zpwrGetGtagsEdit exists' {
    run zpwrExists zpwrGetGtagsEdit
    assert $state equals 0
}

@test 'fn zpwrGetLocate exists' {
    run zpwrExists zpwrGetLocate
    assert $state equals 0
}

@test 'fn zpwrGetrc exists' {
    run zpwrExists zpwrGetrc
    assert $state equals 0
}

@test 'fn zpwrGetrcdev exists' {
    run zpwrExists zpwrGetrcdev
    assert $state equals 0
}

@test 'fn zpwrGetrcWidget exists' {
    run zpwrExists zpwrGetrcWidget
    assert $state equals 0
}

@test 'fn zpwrgh exists' {
    run zpwrExists zpwrgh
    assert $state equals 0
}

@test 'fn zpwrGitCheckoutRebasePush exists' {
    run zpwrExists zpwrGitCheckoutRebasePush
    assert $state equals 0
}

@test 'fn zpwrGitConfig exists' {
    run zpwrExists zpwrGitConfig
    assert $state equals 0
}

@test 'fn zpwrGitIgnores exists' {
    run zpwrExists zpwrGitIgnores
    assert $state equals 0
}

@test 'fn zpwrGitReposFile exists' {
    run zpwrExists zpwrGitReposFile
    assert $state equals 0
}

@test 'fn zpwrGoclean exists' {
    run zpwrExists zpwrGoclean
    assert $state equals 0
}

@test 'fn zpwrGoogle exists' {
    run zpwrExists zpwrGoogle
    assert $state equals 0
}

@test 'fn zpwrGtagsIntoFzf exists' {
    run zpwrExists zpwrGtagsIntoFzf
    assert $state equals 0
}

@test 'fn zpwrHistfile exists' {
    run zpwrExists zpwrHistfile
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbAccept exists' {
    run zpwrExists zpwrHistoryVerbAccept
    assert $state equals 0
}

@test 'fn zpwrHistoryVerbEdit exists' {
    run zpwrExists zpwrHistoryVerbEdit
    assert $state equals 0
}

@test 'fn zpwrInterceptDelete exists' {
    run zpwrExists zpwrInterceptDelete
    assert $state equals 0
}

@test 'fn zpwrInterceptSurround exists' {
    run zpwrExists zpwrInterceptSurround
    assert $state equals 0
}

@test 'fn zpwrIntoFzf exists' {
    run zpwrExists zpwrIntoFzf
    assert $state equals 0
}

@test 'fn zpwrIntoFzfAg exists' {
    run zpwrExists zpwrIntoFzfAg
    assert $state equals 0
}

@test 'fn zpwrJetbrainsWorkspaceEdit exists' {
    run zpwrExists zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
}

@test 'fn zpwrJsonToArray exists' {
    run zpwrExists zpwrJsonToArray
    assert $state equals 0
}

@test 'fn zpwrKeyClear exists' {
    run zpwrExists zpwrKeyClear
    assert $state equals 0
}

@test 'fn zpwrKeySender exists' {
    run zpwrExists zpwrKeySender
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbAccept exists' {
    run zpwrExists zpwrKillLsofVerbAccept
    assert $state equals 0
}

@test 'fn zpwrKillLsofVerbEdit exists' {
    run zpwrExists zpwrKillLsofVerbEdit
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbAccept exists' {
    run zpwrExists zpwrKillPSVerbAccept
    assert $state equals 0
}

@test 'fn zpwrKillPSVerbEdit exists' {
    run zpwrExists zpwrKillPSVerbEdit
    assert $state equals 0
}

@test 'fn zpwrKillRemote exists' {
    run zpwrExists zpwrKillRemote
    assert $state equals 0
}

@test 'fn zpwrLargestGitFiles exists' {
    run zpwrExists zpwrLargestGitFiles
    assert $state equals 0
}

@test 'fn zpwrLastWordDouble exists' {
    run zpwrExists zpwrLastWordDouble
    assert $state equals 0
}

@test 'fn zpwrLineCount exists' {
    run zpwrExists zpwrLineCount
    assert $state equals 0
}

@test 'fn zpwrLinkConf exists' {
    run zpwrExists zpwrLinkConf
    assert $state equals 0
}

@test 'fn zpwrListFiles exists' {
    run zpwrExists zpwrListFiles
    assert $state equals 0
}

@test 'fn zpwrListNoClear exists' {
    run zpwrExists zpwrListNoClear
    assert $state equals 0
}

@test 'fn zpwrListVerbs exists' {
    run zpwrExists zpwrListVerbs
    assert $state equals 0
}

@test 'fn zpwrLoadJenv exists' {
    run zpwrExists zpwrLoadJenv
    assert $state equals 0
}

@test 'fn zpwrLocateFzf exists' {
    run zpwrExists zpwrLocateFzf
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEdit exists' {
    run zpwrExists zpwrLocateFzfEdit
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLE exists' {
    run zpwrExists zpwrLocateFzfEditNoZLE
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEC exists' {
    run zpwrExists zpwrLocateFzfEditNoZLEC
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEEmacs exists' {
    run zpwrExists zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'fn zpwrLocateFzfEditNoZLEVim exists' {
    run zpwrExists zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLE exists' {
    run zpwrExists zpwrLocateFzfNoZLE
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEC exists' {
    run zpwrExists zpwrLocateFzfNoZLEC
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEEmacs exists' {
    run zpwrExists zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
}

@test 'fn zpwrLocateFzfNoZLEVim exists' {
    run zpwrExists zpwrLocateFzfNoZLEVim
    assert $state equals 0
}

@test 'fn zpwrLoginCount exists' {
    run zpwrExists zpwrLoginCount
    assert $state equals 0
}

@test 'fn zpwrLsoffzf exists' {
    run zpwrExists zpwrLsoffzf
    assert $state equals 0
}

@test 'fn zpwrMagicEnter exists' {
    run zpwrExists zpwrMagicEnter
    assert $state equals 0
}

@test 'fn zpwrModulesFZF exists' {
    run zpwrExists zpwrModulesFZF
    assert $state equals 0
}

@test 'fn zpwrMycurl exists' {
    run zpwrExists zpwrMycurl
    assert $state equals 0
}

@test 'fn zpwrNoPonyBanner exists' {
    run zpwrExists zpwrNoPonyBanner
    assert $state equals 0
}

@test 'fn zpwrNumVerbs exists' {
    run zpwrExists zpwrNumVerbs
    assert $state equals 0
}

@test 'fn zpwrNvimThenRecentf exists' {
    run zpwrExists zpwrNvimThenRecentf
    assert $state equals 0
}

@test 'fn zpwrOmzOverrides exists' {
    run zpwrExists zpwrOmzOverrides
    assert $state equals 0
}

@test 'fn zpwrOpen exists' {
    run zpwrExists zpwrOpen
    assert $state equals 0
}

@test 'fn zpwrOpenExercism exists' {
    run zpwrExists zpwrOpenExercism
    assert $state equals 0
}

@test 'fn zpwrOpenmygh exists' {
    run zpwrExists zpwrOpenmygh
    assert $state equals 0
}

@test 'fn zpwrOptionsFZF exists' {
    run zpwrExists zpwrOptionsFZF
    assert $state equals 0
}

@test 'fn zpwrParseRecentf exists' {
    run zpwrExists zpwrParseRecentf
    assert $state equals 0
}

@test 'fn zpwrPasteToBuffer exists' {
    run zpwrExists zpwrPasteToBuffer
    assert $state equals 0
}

@test 'fn zpwrPasteToStdout exists' {
    run zpwrExists zpwrPasteToStdout
    assert $state equals 0
}

@test 'fn zpwrPirun exists' {
    run zpwrExists zpwrPirun
    assert $state equals 0
}

@test 'fn zpwrPoll exists' {
    run zpwrExists zpwrPoll
    assert $state equals 0
}

@test 'fn zpwrPonyBanner exists' {
    run zpwrExists zpwrPonyBanner
    assert $state equals 0
}

@test 'fn zpwrPrecmd exists' {
    run zpwrExists zpwrPrecmd
    assert $state equals 0
}

@test 'fn zpwrPreexec exists' {
    run zpwrExists zpwrPreexec
    assert $state equals 0
}

@test 'fn zpwrPrintMap exists' {
    run zpwrExists zpwrPrintMap
    assert $state equals 0
}

@test 'fn zpwrPstreemonitor exists' {
    run zpwrExists zpwrPstreemonitor
    assert $state equals 0
}

@test 'fn zpwrPygmentcolors exists' {
    run zpwrExists zpwrPygmentcolors
    assert $state equals 0
}

@test 'fn zpwrRationalizeDot exists' {
    run zpwrExists zpwrRationalizeDot
    assert $state equals 0
}

@test 'fn zpwrRecentfThenNvim exists' {
    run zpwrExists zpwrRecentfThenNvim
    assert $state equals 0
}

@test 'fn zpwrRecompile exists' {
    run zpwrExists zpwrRecompile
    assert $state equals 0
}

@test 'fn zpwrRecompileFiles exists' {
    run zpwrExists zpwrRecompileFiles
    assert $state equals 0
}

@test 'fn zpwrRecompileFpath exists' {
    run zpwrExists zpwrRecompileFpath
    assert $state equals 0
}

@test 'fn zpwrRefreshZwc exists' {
    run zpwrExists zpwrRefreshZwc
    assert $state equals 0
}

@test 'fn zpwrRegenAll exists' {
    run zpwrExists zpwrRegenAll
    assert $state equals 0
}

@test 'fn zpwrRegenAllKeybindingsCache exists' {
    run zpwrExists zpwrRegenAllKeybindingsCache
    assert $state equals 0
}

@test 'fn zpwrRegenConfigLinks exists' {
    run zpwrExists zpwrRegenConfigLinks
    assert $state equals 0
}

@test 'fn zpwrRegenCtags exists' {
    run zpwrExists zpwrRegenCtags
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsCtags exists' {
    run zpwrExists zpwrRegenGtagsCtags
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsPygments exists' {
    run zpwrExists zpwrRegenGtagsPygments
    assert $state equals 0
}

@test 'fn zpwrRegenGtagsType exists' {
    run zpwrExists zpwrRegenGtagsType
    assert $state equals 0
}

@test 'fn zpwrRegenHistory exists' {
    run zpwrExists zpwrRegenHistory
    assert $state equals 0
}

@test 'fn zpwrRegenMost exists' {
    run zpwrExists zpwrRegenMost
    assert $state equals 0
}

@test 'fn zpwrRegenPowerlineLink exists' {
    run zpwrExists zpwrRegenPowerlineLink
    assert $state equals 0
}

@test 'fn zpwrRegenSearchEnv exists' {
    run zpwrExists zpwrRegenSearchEnv
    assert $state equals 0
}

@test 'fn zpwrRegenZshCompCache exists' {
    run zpwrExists zpwrRegenZshCompCache
    assert $state equals 0
}

@test 'fn zpwrRegexp-replace-single exists' {
    run zpwrExists zpwrRegexp-replace-single
    assert $state equals 0
}

@test 'fn zpwrReload exists' {
    run zpwrExists zpwrReload
    assert $state equals 0
}

@test 'fn zpwrRelPath exists' {
    run zpwrExists zpwrRelPath
    assert $state equals 0
}

@test 'fn zpwrRename exists' {
    run zpwrExists zpwrRename
    assert $state equals 0
}

@test 'fn zpwrReplacer exists' {
    run zpwrExists zpwrReplacer
    assert $state equals 0
}

@test 'fn zpwrReset exists' {
    run zpwrExists zpwrReset
    assert $state equals 0
}

@test 'fn zpwrRestoreHistfile exists' {
    run zpwrExists zpwrRestoreHistfile
    assert $state equals 0
}

@test 'fn zpwrRetryZcompdump exists' {
    run zpwrExists zpwrRetryZcompdump
    assert $state equals 0
}

@test 'fn zpwrRevealRecurse exists' {
    run zpwrExists zpwrRevealRecurse
    assert $state equals 0
}

@test 'fn zpwrRunner exists' {
    run zpwrExists zpwrRunner
    assert $state equals 0
}

@test 'fn zpwrScnew exists' {
    run zpwrExists zpwrScnew
    assert $state equals 0
}

@test 'fn zpwrScriptCount exists' {
    run zpwrExists zpwrScriptCount
    assert $state equals 0
}

@test 'fn zpwrScriptList exists' {
    run zpwrExists zpwrScriptList
    assert $state equals 0
}

@test 'fn zpwrScripts exists' {
    run zpwrExists zpwrScripts
    assert $state equals 0
}

@test 'fn zpwrSearch exists' {
    run zpwrExists zpwrSearch
    assert $state equals 0
}

@test 'fn zpwrSelfInsert exists' {
    run zpwrExists zpwrSelfInsert
    assert $state equals 0
}

@test 'fn zpwrSshRegain exists' {
    run zpwrExists zpwrSshRegain
    assert $state equals 0
}

@test 'fn zpwrStaleZcompdump exists' {
    run zpwrExists zpwrStaleZcompdump
    assert $state equals 0
}

@test 'fn zpwrStartAutoComplete exists' {
    run zpwrExists zpwrStartAutoComplete
    assert $state equals 0
}

@test 'fn zpwrStartSend exists' {
    run zpwrExists zpwrStartSend
    assert $state equals 0
}

@test 'fn zpwrStartSendFull exists' {
    run zpwrExists zpwrStartSendFull
    assert $state equals 0
}

@test 'fn zpwrStopAutoComplete exists' {
    run zpwrExists zpwrStopAutoComplete
    assert $state equals 0
}

@test 'fn zpwrStopSend exists' {
    run zpwrExists zpwrStopSend
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecent exists' {
    run zpwrExists zpwrSudoEditorRecent
    assert $state equals 0
}

@test 'fn zpwrSudoEditorRecentCd exists' {
    run zpwrExists zpwrSudoEditorRecentCd
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecent exists' {
    run zpwrExists zpwrSudoEmacsRecent
    assert $state equals 0
}

@test 'fn zpwrSudoEmacsRecentCd exists' {
    run zpwrExists zpwrSudoEmacsRecentCd
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecent exists' {
    run zpwrExists zpwrSudoVimRecent
    assert $state equals 0
}

@test 'fn zpwrSudoVimRecentCd exists' {
    run zpwrExists zpwrSudoVimRecentCd
    assert $state equals 0
}

@test 'fn zpwrTabNum exists' {
    run zpwrExists zpwrTabNum
    assert $state equals 0
}

@test 'fn zpwrTabNumCmd exists' {
    run zpwrExists zpwrTabNumCmd
    assert $state equals 0
}

@test 'fn zpwrTest exists' {
    run zpwrExists zpwrTest
    assert $state equals 0
}

@test 'fn zpwrTestAll exists' {
    run zpwrExists zpwrTestAll
    assert $state equals 0
}

@test 'fn zpwrTimer exists' {
    run zpwrExists zpwrTimer
    assert $state equals 0
}

@test 'fn zpwrTmux_capture_paner exists' {
    run zpwrExists zpwrTmux_capture_paner
    assert $state equals 0
}

@test 'fn zpwrTmux_pane_words exists' {
    run zpwrExists zpwrTmux_pane_words
    assert $state equals 0
}

@test 'fn zpwrTorip exists' {
    run zpwrExists zpwrTorip
    assert $state equals 0
}

@test 'fn zpwrToriprenew exists' {
    run zpwrExists zpwrToriprenew
    assert $state equals 0
}

@test 'fn zpwrTotalLines exists' {
    run zpwrExists zpwrTotalLines
    assert $state equals 0
}

@test 'fn zpwrTutsUpdate exists' {
    run zpwrExists zpwrTutsUpdate
    assert $state equals 0
}

@test 'fn zpwrUncompile exists' {
    run zpwrExists zpwrUncompile
    assert $state equals 0
}

@test 'fn zpwrUninstall exists' {
    run zpwrExists zpwrUninstall
    assert $state equals 0
}

@test 'fn zpwrUnlinkConf exists' {
    run zpwrExists zpwrUnlinkConf
    assert $state equals 0
}

@test 'fn zpwrUp8widget exists' {
    run zpwrExists zpwrUp8widget
    assert $state equals 0
}

@test 'fn zpwrUpdate exists' {
    run zpwrExists zpwrUpdate
    assert $state equals 0
}

@test 'fn zpwrUpdateAllGitDirs exists' {
    run zpwrExists zpwrUpdateAllGitDirs
    assert $state equals 0
}

@test 'fn zpwrUpdateDeps exists' {
    run zpwrExists zpwrUpdateDeps
    assert $state equals 0
}

@test 'fn zpwrUpdateDepsClean exists' {
    run zpwrExists zpwrUpdateDepsClean
    assert $state equals 0
}

@test 'fn zpwrUpdater exists' {
    run zpwrExists zpwrUpdater
    assert $state equals 0
}

@test 'fn zpwrUpload exists' {
    run zpwrExists zpwrUpload
    assert $state equals 0
}

@test 'fn zpwrUrlSafe exists' {
    run zpwrExists zpwrUrlSafe
    assert $state equals 0
}

@test 'fn zpwrVerbsEditNoZLE exists' {
    run zpwrExists zpwrVerbsEditNoZLE
    assert $state equals 0
}

@test 'fn zpwrVerbsFZF exists' {
    run zpwrExists zpwrVerbsFZF
    assert $state equals 0
}

@test 'fn zpwrVerbsNoZLE exists' {
    run zpwrExists zpwrVerbsNoZLE
    assert $state equals 0
}

@test 'fn zpwrVerbsWidget exists' {
    run zpwrExists zpwrVerbsWidget
    assert $state equals 0
}

@test 'fn zpwrVerbsWidgetAccept exists' {
    run zpwrExists zpwrVerbsWidgetAccept
    assert $state equals 0
}

@test 'fn zpwrVimAll exists' {
    run zpwrExists zpwrVimAll
    assert $state equals 0
}

@test 'fn zpwrVimAllEdit exists' {
    run zpwrExists zpwrVimAllEdit
    assert $state equals 0
}

@test 'fn zpwrVimAllWidget exists' {
    run zpwrExists zpwrVimAllWidget
    assert $state equals 0
}

@test 'fn zpwrVimAllWidgetAccept exists' {
    run zpwrExists zpwrVimAllWidgetAccept
    assert $state equals 0
}

@test 'fn zpwrVimAutoload exists' {
    run zpwrExists zpwrVimAutoload
    assert $state equals 0
}

@test 'fn zpwrVimEmacsConfig exists' {
    run zpwrExists zpwrVimEmacsConfig
    assert $state equals 0
}

@test 'fn zpwrVimFzf exists' {
    run zpwrExists zpwrVimFzf
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerb exists' {
    run zpwrExists zpwrVimFzfFilesearchVerb
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchVerbEdit exists' {
    run zpwrExists zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'fn zpwrVimFzfFilesearchWidgetAccept exists' {
    run zpwrExists zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'fn zpwrVimFzfSudo exists' {
    run zpwrExists zpwrVimFzfSudo
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerb exists' {
    run zpwrExists zpwrVimFzfWordsearchVerb
    assert $state equals 0
}

@test 'fn zpwrVimFzfWordsearchVerbEdit exists' {
    run zpwrExists zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'fn zpwrVimPluginCount exists' {
    run zpwrExists zpwrVimPluginCount
    assert $state equals 0
}

@test 'fn zpwrVimPluginList exists' {
    run zpwrExists zpwrVimPluginList
    assert $state equals 0
}

@test 'fn zpwrVimRecent exists' {
    run zpwrExists zpwrVimRecent
    assert $state equals 0
}

@test 'fn zpwrVimRecentCd exists' {
    run zpwrExists zpwrVimRecentCd
    assert $state equals 0
}

@test 'fn zpwrVimScriptEdit exists' {
    run zpwrExists zpwrVimScriptEdit
    assert $state equals 0
}

@test 'fn zpwrVimScripts exists' {
    run zpwrExists zpwrVimScripts
    assert $state equals 0
}

@test 'fn zpwrVimZpwrCtags exists' {
    run zpwrExists zpwrVimZpwrCtags
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtags exists' {
    run zpwrExists zpwrVimZpwrGtags
    assert $state equals 0
}

@test 'fn zpwrVimZpwrGtagsEdit exists' {
    run zpwrExists zpwrVimZpwrGtagsEdit
    assert $state equals 0
}

@test 'fn zpwrZcompdump exists' {
    run zpwrExists zpwrZcompdump
    assert $state equals 0
}

@test 'fn zpwrZFZF exists' {
    run zpwrExists zpwrZFZF
    assert $state equals 0
}

@test 'fn zpwrZinitUpdates exists' {
    run zpwrExists zpwrZinitUpdates
    assert $state equals 0
}

@test 'fn zpwrZshPluginCount exists' {
    run zpwrExists zpwrZshPluginCount
    assert $state equals 0
}

@test 'fn zpwrZshPluginList exists' {
    run zpwrExists zpwrZshPluginList
    assert $state equals 0
}

@test 'fn zpwrZshrcSearch exists' {
    run zpwrExists zpwrZshrcSearch
    assert $state equals 0
}

@test 'fn zpwrZstyle exists' {
    run zpwrExists zpwrZstyle
    assert $state equals 0
}

@test 'fn zpz exists' {
    run zpwrExists zpz
    assert $state equals 0
}

@test 'fn zr exists' {
    run zpwrExists zr
    assert $state equals 0
}

@test 'fn zs exists' {
    run zpwrExists zs
    assert $state equals 0
}

@test 'fn zsm exists' {
    run zpwrExists zsm
    assert $state equals 0
}

@test 'fn zt exists' {
    run zpwrExists zt
    assert $state equals 0
}

@test 'fn ztl exists' {
    run zpwrExists ztl
    assert $state equals 0
}

@test 'fn ztm exists' {
    run zpwrExists ztm
    assert $state equals 0
}

@test 'fn zua exists' {
    run zpwrExists zua
    assert $state equals 0
}
