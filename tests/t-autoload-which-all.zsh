#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test which of all autoload/common functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'which a found' {
    run which a
    assert $state equals 0
}

@test 'which apz found' {
    run which apz
    assert $state equals 0
}

@test 'which asg found' {
    run which asg
    assert $state equals 0
}

@test 'which b found' {
    run which b
    assert $state equals 0
}

@test 'which c found' {
    run which c
    assert $state equals 0
}

@test 'which cca found' {
    run which cca
    assert $state equals 0
}

@test 'which cd found' {
    run which cd
    assert $state equals 0
}

@test 'which ce found' {
    run which ce
    assert $state equals 0
}

@test 'which cg found' {
    run which cg
    assert $state equals 0
}

@test 'which cgh found' {
    run which cgh
    assert $state equals 0
}

@test 'which color2 found' {
    run which color2
    assert $state equals 0
}

@test 'which cv found' {
    run which cv
    assert $state equals 0
}

@test 'which d found' {
    run which d
    assert $state equals 0
}

@test 'which dbz found' {
    run which dbz
    assert $state equals 0
}

@test 'which de found' {
    run which de
    assert $state equals 0
}

@test 'which digs found' {
    run which digs
    assert $state equals 0
}

@test 'which dl found' {
    run which dl
    assert $state equals 0
}

@test 'which docu found' {
    run which docu
    assert $state equals 0
}

@test 'which e found' {
    run which e
    assert $state equals 0
}

@test 'which eb found' {
    run which eb
    assert $state equals 0
}

@test 'which em found' {
    run which em
    assert $state equals 0
}

@test 'which emm found' {
    run which emm
    assert $state equals 0
}

@test 'which f found' {
    run which f
    assert $state equals 0
}

@test 'which ff found' {
    run which ff
    assert $state equals 0
}

@test 'which fff found' {
    run which fff
    assert $state equals 0
}

@test 'which fm found' {
    run which fm
    assert $state equals 0
}

@test 'which fp found' {
    run which fp
    assert $state equals 0
}

@test 'which gcl found' {
    run which gcl
    assert $state equals 0
}

@test 'which ge found' {
    run which ge
    assert $state equals 0
}

@test 'which gil found' {
    run which gil
    assert $state equals 0
}

@test 'which gsdc found' {
    run which gsdc
    assert $state equals 0
}

@test 'which gse found' {
    run which gse
    assert $state equals 0
}

@test 'which h found' {
    run which h
    assert $state equals 0
}

@test 'which hc found' {
    run which hc
    assert $state equals 0
}

@test 'which hd found' {
    run which hd
    assert $state equals 0
}

@test 'which ig found' {
    run which ig
    assert $state equals 0
}

@test 'which ino found' {
    run which ino
    assert $state equals 0
}

@test 'which j found' {
    run which j
    assert $state equals 0
}

@test 'which jd found' {
    run which jd
    assert $state equals 0
}

@test 'which kr found' {
    run which kr
    assert $state equals 0
}

@test 'which lcm found' {
    run which lcm
    assert $state equals 0
}

@test 'which mg found' {
    run which mg
    assert $state equals 0
}

@test 'which nz found' {
    run which nz
    assert $state equals 0
}

@test 'which o found' {
    run which o
    assert $state equals 0
}

@test 'which p found' {
    run which p
    assert $state equals 0
}

@test 'which pg found' {
    run which pg
    assert $state equals 0
}

@test 'which post found' {
    run which post
    assert $state equals 0
}

@test 'which pre found' {
    run which pre
    assert $state equals 0
}

@test 'which r found' {
    run which r
    assert $state equals 0
}

@test 'which return2 found' {
    run which return2
    assert $state equals 0
}

@test 'which rm found' {
    run which rm
    assert $state equals 0
}

@test 'which s found' {
    run which s
    assert $state equals 0
}

@test 'which sub found' {
    run which sub
    assert $state equals 0
}

@test 'which suc found' {
    run which suc
    assert $state equals 0
}

@test 'which t found' {
    run which t
    assert $state equals 0
}

@test 'which tac found' {
    run which tac
    assert $state equals 0
}

@test 'which tma found' {
    run which tma
    assert $state equals 0
}

@test 'which to found' {
    run which to
    assert $state equals 0
}

@test 'which ue found' {
    run which ue
    assert $state equals 0
}

@test 'which va found' {
    run which va
    assert $state equals 0
}

@test 'which vb found' {
    run which vb
    assert $state equals 0
}

@test 'which vl found' {
    run which vl
    assert $state equals 0
}

@test 'which we found' {
    run which we
    assert $state equals 0
}

@test 'which wg found' {
    run which wg
    assert $state equals 0
}

@test 'which ww found' {
    run which ww
    assert $state equals 0
}

@test 'which www found' {
    run which www
    assert $state equals 0
}

@test 'which xx found' {
    run which xx
    assert $state equals 0
}

@test 'which z found' {
    run which z
    assert $state equals 0
}

@test 'which zal found' {
    run which zal
    assert $state equals 0
}

@test 'which zalc found' {
    run which zalc
    assert $state equals 0
}

@test 'which zald found' {
    run which zald
    assert $state equals 0
}

@test 'which zalf found' {
    run which zalf
    assert $state equals 0
}

@test 'which zall found' {
    run which zall
    assert $state equals 0
}

@test 'which zalo found' {
    run which zalo
    assert $state equals 0
}

@test 'which zals found' {
    run which zals
    assert $state equals 0
}

@test 'which zalu found' {
    run which zalu
    assert $state equals 0
}

@test 'which zarg found' {
    run which zarg
    assert $state equals 0
}

@test 'which zco found' {
    run which zco
    assert $state equals 0
}

@test 'which zd found' {
    run which zd
    assert $state equals 0
}

@test 'which ze found' {
    run which ze
    assert $state equals 0
}

@test 'which zg found' {
    run which zg
    assert $state equals 0
}

@test 'which zh found' {
    run which zh
    assert $state equals 0
}

@test 'which zhb found' {
    run which zhb
    assert $state equals 0
}

@test 'which zhc found' {
    run which zhc
    assert $state equals 0
}

@test 'which zhp found' {
    run which zhp
    assert $state equals 0
}

@test 'which zhs found' {
    run which zhs
    assert $state equals 0
}

@test 'which zil found' {
    run which zil
    assert $state equals 0
}

@test 'which zl found' {
    run which zl
    assert $state equals 0
}

@test 'which zlc found' {
    run which zlc
    assert $state equals 0
}

@test 'which zli found' {
    run which zli
    assert $state equals 0
}

@test 'which zlr found' {
    run which zlr
    assert $state equals 0
}

@test 'which zlt found' {
    run which zlt
    assert $state equals 0
}

@test 'which zm found' {
    run which zm
    assert $state equals 0
}

@test 'which zpl found' {
    run which zpl
    assert $state equals 0
}

@test 'which zpwr found' {
    run which zpwr
    assert $state equals 0
}

@test 'which zpwr256ColorTest found' {
    run which zpwr256ColorTest
    assert $state equals 0
}

@test 'which zpwrAbout found' {
    run which zpwrAbout
    assert $state equals 0
}

@test 'which zpwrAcceptLine found' {
    run which zpwrAcceptLine
    assert $state equals 0
}

@test 'which zpwrAddOMZAttrib found' {
    run which zpwrAddOMZAttrib
    assert $state equals 0
}

@test 'which zpwrAgIntoFzf found' {
    run which zpwrAgIntoFzf
    assert $state equals 0
}

@test 'which zpwrAlacritty found' {
    run which zpwrAlacritty
    assert $state equals 0
}

@test 'which zpwrAllRemotes found' {
    run which zpwrAllRemotes
    assert $state equals 0
}

@test 'which zpwrAllUpdates found' {
    run which zpwrAllUpdates
    assert $state equals 0
}

@test 'which zpwrAlternateQuotes found' {
    run which zpwrAlternateQuotes
    assert $state equals 0
}

@test 'which zpwrAnimate found' {
    run which zpwrAnimate
    assert $state equals 0
}

@test 'which zpwrArrayToJson found' {
    run which zpwrArrayToJson
    assert $state equals 0
}

@test 'which zpwrAsVar found' {
    run which zpwrAsVar
    assert $state equals 0
}

@test 'which zpwrAutoloadCount found' {
    run which zpwrAutoloadCount
    assert $state equals 0
}

@test 'which zpwrAutoloadList found' {
    run which zpwrAutoloadList
    assert $state equals 0
}

@test 'which zpwrBackup found' {
    run which zpwrBackup
    assert $state equals 0
}

@test 'which zpwrBackupHistfile found' {
    run which zpwrBackupHistfile
    assert $state equals 0
}

@test 'which zpwrBannerCounts found' {
    run which zpwrBannerCounts
    assert $state equals 0
}

@test 'which zpwrBannerLolcat found' {
    run which zpwrBannerLolcat
    assert $state equals 0
}

@test 'which zpwrBindAliasesLate found' {
    run which zpwrBindAliasesLate
    assert $state equals 0
}

@test 'which zpwrBindAliasesZshLate found' {
    run which zpwrBindAliasesZshLate
    assert $state equals 0
}

@test 'which zpwrBindDirs found' {
    run which zpwrBindDirs
    assert $state equals 0
}

@test 'which zpwrBindFinal found' {
    run which zpwrBindFinal
    assert $state equals 0
}

@test 'which zpwrBindForGit found' {
    run which zpwrBindForGit
    assert $state equals 0
}

@test 'which zpwrBindFZFLate found' {
    run which zpwrBindFZFLate
    assert $state equals 0
}

@test 'which zpwrBindHistorySubstring found' {
    run which zpwrBindHistorySubstring
    assert $state equals 0
}

@test 'which zpwrBindInterceptSurround found' {
    run which zpwrBindInterceptSurround
    assert $state equals 0
}

@test 'which zpwrBindOverrideAutoComplete found' {
    run which zpwrBindOverrideAutoComplete
    assert $state equals 0
}

@test 'which zpwrBindOverrideOMZ found' {
    run which zpwrBindOverrideOMZ
    assert $state equals 0
}

@test 'which zpwrBindOverrideOMZCompdefs found' {
    run which zpwrBindOverrideOMZCompdefs
    assert $state equals 0
}

@test 'which zpwrBindOverrideZLE found' {
    run which zpwrBindOverrideZLE
    assert $state equals 0
}

@test 'which zpwrBindPenultimate found' {
    run which zpwrBindPenultimate
    assert $state equals 0
}

@test 'which zpwrBindPowerline found' {
    run which zpwrBindPowerline
    assert $state equals 0
}

@test 'which zpwrBindPowerlineTmux found' {
    run which zpwrBindPowerlineTmux
    assert $state equals 0
}

@test 'which zpwrBindPrecmd found' {
    run which zpwrBindPrecmd
    assert $state equals 0
}

@test 'which zpwrBindPreexecChpwd found' {
    run which zpwrBindPreexecChpwd
    assert $state equals 0
}

@test 'which zpwrBindVerbs found' {
    run which zpwrBindVerbs
    assert $state equals 0
}

@test 'which zpwrBindZdharma found' {
    run which zpwrBindZdharma
    assert $state equals 0
}

@test 'which zpwrBindZdharmaPost found' {
    run which zpwrBindZdharmaPost
    assert $state equals 0
}

@test 'which zpwrBindZstyle found' {
    run which zpwrBindZstyle
    assert $state equals 0
}

@test 'which zpwrBufferXtrace found' {
    run which zpwrBufferXtrace
    assert $state equals 0
}

@test 'which zpwrCat found' {
    run which zpwrCat
    assert $state equals 0
}

@test 'which zpwrCatNvimOrVimInfo found' {
    run which zpwrCatNvimOrVimInfo
    assert $state equals 0
}

@test 'which zpwrCCommon found' {
    run which zpwrCCommon
    assert $state equals 0
}

@test 'which zpwrCd found' {
    run which zpwrCd
    assert $state equals 0
}

@test 'which zpwrCdUp found' {
    run which zpwrCdUp
    assert $state equals 0
}

@test 'which zpwrCdVimFzfFilesearchWidgetAccept found' {
    run which zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'which zpwrChangeGitAuthorEmail found' {
    run which zpwrChangeGitAuthorEmail
    assert $state equals 0
}

@test 'which zpwrChangeGitCommitterEmail found' {
    run which zpwrChangeGitCommitterEmail
    assert $state equals 0
}

@test 'which zpwrChangeGitEmail found' {
    run which zpwrChangeGitEmail
    assert $state equals 0
}

@test 'which zpwrChangeName found' {
    run which zpwrChangeName
    assert $state equals 0
}

@test 'which zpwrChangeNameZpwr found' {
    run which zpwrChangeNameZpwr
    assert $state equals 0
}

@test 'which zpwrChangeQuotes found' {
    run which zpwrChangeQuotes
    assert $state equals 0
}

@test 'which zpwrChpwd found' {
    run which zpwrChpwd
    assert $state equals 0
}

@test 'which zpwrCleanAll found' {
    run which zpwrCleanAll
    assert $state equals 0
}

@test 'which zpwrCleanCache found' {
    run which zpwrCleanCache
    assert $state equals 0
}

@test 'which zpwrCleanCompCache found' {
    run which zpwrCleanCompCache
    assert $state equals 0
}

@test 'which zpwrCleanDirs found' {
    run which zpwrCleanDirs
    assert $state equals 0
}

@test 'which zpwrCleanDirsAndTemp found' {
    run which zpwrCleanDirsAndTemp
    assert $state equals 0
}

@test 'which zpwrCleanGitRepoCache found' {
    run which zpwrCleanGitRepoCache
    assert $state equals 0
}

@test 'which zpwrCleanGitRepoCleanCache found' {
    run which zpwrCleanGitRepoCleanCache
    assert $state equals 0
}

@test 'which zpwrCleanGitRepoDirtyCache found' {
    run which zpwrCleanGitRepoDirtyCache
    assert $state equals 0
}

@test 'which zpwrCleanLog found' {
    run which zpwrCleanLog
    assert $state equals 0
}

@test 'which zpwrCleanRefreshCountsTestUpdate found' {
    run which zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
}

@test 'which zpwrCleanRefreshUpdate found' {
    run which zpwrCleanRefreshUpdate
    assert $state equals 0
}

@test 'which zpwrCleanTemp found' {
    run which zpwrCleanTemp
    assert $state equals 0
}

@test 'which zpwrCleanUpdateDeps found' {
    run which zpwrCleanUpdateDeps
    assert $state equals 0
}

@test 'which zpwrClearGitCommit found' {
    run which zpwrClearGitCommit
    assert $state equals 0
}

@test 'which zpwrClearGitFile found' {
    run which zpwrClearGitFile
    assert $state equals 0
}

@test 'which zpwrClearLine found' {
    run which zpwrClearLine
    assert $state equals 0
}

@test 'which zpwrClearListFZF found' {
    run which zpwrClearListFZF
    assert $state equals 0
}

@test 'which zpwrClipboard found' {
    run which zpwrClipboard
    assert $state equals 0
}

@test 'which zpwrCloneToForked found' {
    run which zpwrCloneToForked
    assert $state equals 0
}

@test 'which zpwrColorTest found' {
    run which zpwrColorTest
    assert $state equals 0
}

@test 'which zpwrCommits found' {
    run which zpwrCommits
    assert $state equals 0
}

@test 'which zpwrConfirm found' {
    run which zpwrConfirm
    assert $state equals 0
}

@test 'which zpwrContribCount found' {
    run which zpwrContribCount
    assert $state equals 0
}

@test 'which zpwrContribCountDirs found' {
    run which zpwrContribCountDirs
    assert $state equals 0
}

@test 'which zpwrContribCountLines found' {
    run which zpwrContribCountLines
    assert $state equals 0
}

@test 'which zpwrCreateAliasCache found' {
    run which zpwrCreateAliasCache
    assert $state equals 0
}

@test 'which zpwrCreategif found' {
    run which zpwrCreategif
    assert $state equals 0
}

@test 'which zpwrDedupPaths found' {
    run which zpwrDedupPaths
    assert $state equals 0
}

@test 'which zpwrDeleteLastWord found' {
    run which zpwrDeleteLastWord
    assert $state equals 0
}

@test 'which zpwrDetachall found' {
    run which zpwrDetachall
    assert $state equals 0
}

@test 'which zpwrDfimage found' {
    run which zpwrDfimage
    assert $state equals 0
}

@test 'which zpwrDockerWipe found' {
    run which zpwrDockerWipe
    assert $state equals 0
}

@test 'which zpwrEditExercism found' {
    run which zpwrEditExercism
    assert $state equals 0
}

@test 'which zpwrEditor found' {
    run which zpwrEditor
    assert $state equals 0
}

@test 'which zpwrEditorRecent found' {
    run which zpwrEditorRecent
    assert $state equals 0
}

@test 'which zpwrEditorRecentCd found' {
    run which zpwrEditorRecentCd
    assert $state equals 0
}

@test 'which zpwrEditTag found' {
    run which zpwrEditTag
    assert $state equals 0
}

@test 'which zpwrEmacsAll found' {
    run which zpwrEmacsAll
    assert $state equals 0
}

@test 'which zpwrEmacsAllEdit found' {
    run which zpwrEmacsAllEdit
    assert $state equals 0
}

@test 'which zpwrEmacsAllServer found' {
    run which zpwrEmacsAllServer
    assert $state equals 0
}

@test 'which zpwrEmacsAutoload found' {
    run which zpwrEmacsAutoload
    assert $state equals 0
}

@test 'which zpwrEmacsEmacsConfig found' {
    run which zpwrEmacsEmacsConfig
    assert $state equals 0
}

@test 'which zpwrEmacsFzf found' {
    run which zpwrEmacsFzf
    assert $state equals 0
}

@test 'which zpwrEmacsFzfFilesearchVerb found' {
    run which zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
}

@test 'which zpwrEmacsFzfFilesearchVerbEdit found' {
    run which zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'which zpwrEmacsFzfWordsearchVerb found' {
    run which zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
}

@test 'which zpwrEmacsFzfWordsearchVerbEdit found' {
    run which zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'which zpwrEmacsPluginCount found' {
    run which zpwrEmacsPluginCount
    assert $state equals 0
}

@test 'which zpwrEmacsPluginList found' {
    run which zpwrEmacsPluginList
    assert $state equals 0
}

@test 'which zpwrEmacsRecent found' {
    run which zpwrEmacsRecent
    assert $state equals 0
}

@test 'which zpwrEmacsRecentCd found' {
    run which zpwrEmacsRecentCd
    assert $state equals 0
}

@test 'which zpwrEmacsScriptEdit found' {
    run which zpwrEmacsScriptEdit
    assert $state equals 0
}

@test 'which zpwrEmacsScripts found' {
    run which zpwrEmacsScripts
    assert $state equals 0
}

@test 'which zpwrEmacsZpwr found' {
    run which zpwrEmacsZpwr
    assert $state equals 0
}

@test 'which zpwrEmacsZpwrCtags found' {
    run which zpwrEmacsZpwrCtags
    assert $state equals 0
}

@test 'which zpwrEmacsZpwrGtags found' {
    run which zpwrEmacsZpwrGtags
    assert $state equals 0
}

@test 'which zpwrEmacsZpwrGtagsEdit found' {
    run which zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
}

@test 'which zpwrEnvCounts found' {
    run which zpwrEnvCounts
    assert $state equals 0
}

@test 'which zpwrEnvVars found' {
    run which zpwrEnvVars
    assert $state equals 0
}

@test 'which zpwrEnvVarsAll found' {
    run which zpwrEnvVarsAll
    assert $state equals 0
}

@test 'which zpwrEOLorNextTabStop found' {
    run which zpwrEOLorNextTabStop
    assert $state equals 0
}

@test 'which zpwrEvalTester found' {
    run which zpwrEvalTester
    assert $state equals 0
}

@test 'which zpwrExecGlob found' {
    run which zpwrExecGlob
    assert $state equals 0
}

@test 'which zpwrExecGlobParallel found' {
    run which zpwrExecGlobParallel
    assert $state equals 0
}

@test 'which zpwrExecpy found' {
    run which zpwrExecpy
    assert $state equals 0
}

@test 'which zpwrExercismDownloadAll found' {
    run which zpwrExercismDownloadAll
    assert $state equals 0
}

@test 'which zpwrExpandAliasAccept found' {
    run which zpwrExpandAliasAccept
    assert $state equals 0
}

@test 'which zpwrExpandAliases found' {
    run which zpwrExpandAliases
    assert $state equals 0
}

@test 'which zpwrExpandOrCompleteWithDots found' {
    run which zpwrExpandOrCompleteWithDots
    assert $state equals 0
}

@test 'which zpwrFasdFList found' {
    run which zpwrFasdFList
    assert $state equals 0
}

@test 'which zpwrFasdFListVerb found' {
    run which zpwrFasdFListVerb
    assert $state equals 0
}

@test 'which zpwrFasdFZF found' {
    run which zpwrFasdFZF
    assert $state equals 0
}

@test 'which zpwrFigletfonts found' {
    run which zpwrFigletfonts
    assert $state equals 0
}

@test 'which zpwrFindFzfEditNoZLE found' {
    run which zpwrFindFzfEditNoZLE
    assert $state equals 0
}

@test 'which zpwrFindFzfEditNoZLEC found' {
    run which zpwrFindFzfEditNoZLEC
    assert $state equals 0
}

@test 'which zpwrFindFzfEditNoZLEEmacs found' {
    run which zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'which zpwrFindFzfEditNoZLEVim found' {
    run which zpwrFindFzfEditNoZLEVim
    assert $state equals 0
}

@test 'which zpwrFindFzfNoZLE found' {
    run which zpwrFindFzfNoZLE
    assert $state equals 0
}

@test 'which zpwrFindFzfNoZLEC found' {
    run which zpwrFindFzfNoZLEC
    assert $state equals 0
}

@test 'which zpwrFindFzfNoZLEEmacs found' {
    run which zpwrFindFzfNoZLEEmacs
    assert $state equals 0
}

@test 'which zpwrFindFzfNoZLEVim found' {
    run which zpwrFindFzfNoZLEVim
    assert $state equals 0
}

@test 'which zpwrForAllGitDirs found' {
    run which zpwrForAllGitDirs
    assert $state equals 0
}

@test 'which zpwrForAllGitDirsClean found' {
    run which zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'which zpwrForAllGitDirsDirty found' {
    run which zpwrForAllGitDirsDirty
    assert $state equals 0
}

@test 'which zpwrForAllGitDirsRefreshClean found' {
    run which zpwrForAllGitDirsRefreshClean
    assert $state equals 0
}

@test 'which zpwrForAllGitDirsRefreshDirty found' {
    run which zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
}

@test 'which zpwrFordir found' {
    run which zpwrFordir
    assert $state equals 0
}

@test 'which zpwrFordirUpdate found' {
    run which zpwrFordirUpdate
    assert $state equals 0
}

@test 'which zpwrFzfAllKeybind found' {
    run which zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'which zpwrFzfCommits found' {
    run which zpwrFzfCommits
    assert $state equals 0
}

@test 'which zpwrFzfDirSearch found' {
    run which zpwrFzfDirSearch
    assert $state equals 0
}

@test 'which zpwrFzfDirsearchVerb found' {
    run which zpwrFzfDirsearchVerb
    assert $state equals 0
}

@test 'which zpwrFzfEnv found' {
    run which zpwrFzfEnv
    assert $state equals 0
}

@test 'which zpwrFzfEnvVerbAccept found' {
    run which zpwrFzfEnvVerbAccept
    assert $state equals 0
}

@test 'which zpwrFzfEnvVerbEdit found' {
    run which zpwrFzfEnvVerbEdit
    assert $state equals 0
}

@test 'which zpwrFzfFileSearch found' {
    run which zpwrFzfFileSearch
    assert $state equals 0
}

@test 'which zpwrFzfFilesearchVerb found' {
    run which zpwrFzfFilesearchVerb
    assert $state equals 0
}

@test 'which zpwrFzfFilesearchVerbEdit found' {
    run which zpwrFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'which zpwrFzfSurround found' {
    run which zpwrFzfSurround
    assert $state equals 0
}

@test 'which zpwrFzfVimKeybind found' {
    run which zpwrFzfVimKeybind
    assert $state equals 0
}

@test 'which zpwrFzfWordsearchVerb found' {
    run which zpwrFzfWordsearchVerb
    assert $state equals 0
}

@test 'which zpwrFzfWordsearchVerbEdit found' {
    run which zpwrFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'which zpwrFzfZList found' {
    run which zpwrFzfZList
    assert $state equals 0
}

@test 'which zpwrFzfZListVerb found' {
    run which zpwrFzfZListVerb
    assert $state equals 0
}

@test 'which zpwrFzfZshKeybind found' {
    run which zpwrFzfZshKeybind
    assert $state equals 0
}

@test 'which zpwrFzvim found' {
    run which zpwrFzvim
    assert $state equals 0
}

@test 'which zpwrFzvimAll found' {
    run which zpwrFzvimAll
    assert $state equals 0
}

@test 'which zpwrFzvimScript found' {
    run which zpwrFzvimScript
    assert $state equals 0
}

@test 'which zpwrGetFound found' {
    run which zpwrGetFound
    assert $state equals 0
}

@test 'which zpwrGetGHDelURL found' {
    run which zpwrGetGHDelURL
    assert $state equals 0
}

@test 'which zpwrGetGtags found' {
    run which zpwrGetGtags
    assert $state equals 0
}

@test 'which zpwrGetGtagsEdit found' {
    run which zpwrGetGtagsEdit
    assert $state equals 0
}

@test 'which zpwrGetLocate found' {
    run which zpwrGetLocate
    assert $state equals 0
}

@test 'which zpwrGetrc found' {
    run which zpwrGetrc
    assert $state equals 0
}

@test 'which zpwrGetrcdev found' {
    run which zpwrGetrcdev
    assert $state equals 0
}

@test 'which zpwrGetrcWidget found' {
    run which zpwrGetrcWidget
    assert $state equals 0
}

@test 'which zpwrgh found' {
    run which zpwrgh
    assert $state equals 0
}

@test 'which zpwrGitCheckoutRebasePush found' {
    run which zpwrGitCheckoutRebasePush
    assert $state equals 0
}

@test 'which zpwrGitConfig found' {
    run which zpwrGitConfig
    assert $state equals 0
}

@test 'which zpwrGitIgnores found' {
    run which zpwrGitIgnores
    assert $state equals 0
}

@test 'which zpwrGitReposFile found' {
    run which zpwrGitReposFile
    assert $state equals 0
}

@test 'which zpwrGoclean found' {
    run which zpwrGoclean
    assert $state equals 0
}

@test 'which zpwrGoogle found' {
    run which zpwrGoogle
    assert $state equals 0
}

@test 'which zpwrGtagsIntoFzf found' {
    run which zpwrGtagsIntoFzf
    assert $state equals 0
}

@test 'which zpwrHistfile found' {
    run which zpwrHistfile
    assert $state equals 0
}

@test 'which zpwrHistoryVerbAccept found' {
    run which zpwrHistoryVerbAccept
    assert $state equals 0
}

@test 'which zpwrHistoryVerbEdit found' {
    run which zpwrHistoryVerbEdit
    assert $state equals 0
}

@test 'which zpwrInterceptDelete found' {
    run which zpwrInterceptDelete
    assert $state equals 0
}

@test 'which zpwrInterceptSurround found' {
    run which zpwrInterceptSurround
    assert $state equals 0
}

@test 'which zpwrIntoFzf found' {
    run which zpwrIntoFzf
    assert $state equals 0
}

@test 'which zpwrIntoFzfAg found' {
    run which zpwrIntoFzfAg
    assert $state equals 0
}

@test 'which zpwrJetbrainsWorkspaceEdit found' {
    run which zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
}

@test 'which zpwrJsonToArray found' {
    run which zpwrJsonToArray
    assert $state equals 0
}

@test 'which zpwrKeyClear found' {
    run which zpwrKeyClear
    assert $state equals 0
}

@test 'which zpwrKeySender found' {
    run which zpwrKeySender
    assert $state equals 0
}

@test 'which zpwrKillLsofVerbAccept found' {
    run which zpwrKillLsofVerbAccept
    assert $state equals 0
}

@test 'which zpwrKillLsofVerbEdit found' {
    run which zpwrKillLsofVerbEdit
    assert $state equals 0
}

@test 'which zpwrKillPSVerbAccept found' {
    run which zpwrKillPSVerbAccept
    assert $state equals 0
}

@test 'which zpwrKillPSVerbEdit found' {
    run which zpwrKillPSVerbEdit
    assert $state equals 0
}

@test 'which zpwrKillRemote found' {
    run which zpwrKillRemote
    assert $state equals 0
}

@test 'which zpwrLargestGitFiles found' {
    run which zpwrLargestGitFiles
    assert $state equals 0
}

@test 'which zpwrLastWordDouble found' {
    run which zpwrLastWordDouble
    assert $state equals 0
}

@test 'which zpwrLineCount found' {
    run which zpwrLineCount
    assert $state equals 0
}

@test 'which zpwrLinkConf found' {
    run which zpwrLinkConf
    assert $state equals 0
}

@test 'which zpwrListFiles found' {
    run which zpwrListFiles
    assert $state equals 0
}

@test 'which zpwrListNoClear found' {
    run which zpwrListNoClear
    assert $state equals 0
}

@test 'which zpwrListVerbs found' {
    run which zpwrListVerbs
    assert $state equals 0
}

@test 'which zpwrListVerbsColor found' {
    run which zpwrListVerbsColor
    assert $state equals 0
}

@test 'which zpwrLoadJenv found' {
    run which zpwrLoadJenv
    assert $state equals 0
}

@test 'which zpwrLocateFzf found' {
    run which zpwrLocateFzf
    assert $state equals 0
}

@test 'which zpwrLocateFzfEdit found' {
    run which zpwrLocateFzfEdit
    assert $state equals 0
}

@test 'which zpwrLocateFzfEditNoZLE found' {
    run which zpwrLocateFzfEditNoZLE
    assert $state equals 0
}

@test 'which zpwrLocateFzfEditNoZLEC found' {
    run which zpwrLocateFzfEditNoZLEC
    assert $state equals 0
}

@test 'which zpwrLocateFzfEditNoZLEEmacs found' {
    run which zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'which zpwrLocateFzfEditNoZLEVim found' {
    run which zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
}

@test 'which zpwrLocateFzfNoZLE found' {
    run which zpwrLocateFzfNoZLE
    assert $state equals 0
}

@test 'which zpwrLocateFzfNoZLEC found' {
    run which zpwrLocateFzfNoZLEC
    assert $state equals 0
}

@test 'which zpwrLocateFzfNoZLEEmacs found' {
    run which zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
}

@test 'which zpwrLocateFzfNoZLEVim found' {
    run which zpwrLocateFzfNoZLEVim
    assert $state equals 0
}

@test 'which zpwrLoginCount found' {
    run which zpwrLoginCount
    assert $state equals 0
}

@test 'which zpwrLsoffzf found' {
    run which zpwrLsoffzf
    assert $state equals 0
}

@test 'which zpwrMagicEnter found' {
    run which zpwrMagicEnter
    assert $state equals 0
}

@test 'which zpwrModulesFZF found' {
    run which zpwrModulesFZF
    assert $state equals 0
}

@test 'which zpwrMycurl found' {
    run which zpwrMycurl
    assert $state equals 0
}

@test 'which zpwrNoPonyBanner found' {
    run which zpwrNoPonyBanner
    assert $state equals 0
}

@test 'which zpwrNumVerbs found' {
    run which zpwrNumVerbs
    assert $state equals 0
}

@test 'which zpwrNvimThenRecentf found' {
    run which zpwrNvimThenRecentf
    assert $state equals 0
}

@test 'which zpwrOmzOverrides found' {
    run which zpwrOmzOverrides
    assert $state equals 0
}

@test 'which zpwrOpen found' {
    run which zpwrOpen
    assert $state equals 0
}

@test 'which zpwrOpenExercism found' {
    run which zpwrOpenExercism
    assert $state equals 0
}

@test 'which zpwrOpenmygh found' {
    run which zpwrOpenmygh
    assert $state equals 0
}

@test 'which zpwrOptionsFZF found' {
    run which zpwrOptionsFZF
    assert $state equals 0
}

@test 'which zpwrParseRecentf found' {
    run which zpwrParseRecentf
    assert $state equals 0
}

@test 'which zpwrPasteToBuffer found' {
    run which zpwrPasteToBuffer
    assert $state equals 0
}

@test 'which zpwrPasteToStdout found' {
    run which zpwrPasteToStdout
    assert $state equals 0
}

@test 'which zpwrPirun found' {
    run which zpwrPirun
    assert $state equals 0
}

@test 'which zpwrPoll found' {
    run which zpwrPoll
    assert $state equals 0
}

@test 'which zpwrPonyBanner found' {
    run which zpwrPonyBanner
    assert $state equals 0
}

@test 'which zpwrPrecmd found' {
    run which zpwrPrecmd
    assert $state equals 0
}

@test 'which zpwrPreexec found' {
    run which zpwrPreexec
    assert $state equals 0
}

@test 'which zpwrPrintMap found' {
    run which zpwrPrintMap
    assert $state equals 0
}

@test 'which zpwrPstreemonitor found' {
    run which zpwrPstreemonitor
    assert $state equals 0
}

@test 'which zpwrPygmentcolors found' {
    run which zpwrPygmentcolors
    assert $state equals 0
}

@test 'which zpwrRationalizeDot found' {
    run which zpwrRationalizeDot
    assert $state equals 0
}

@test 'which zpwrRecentfThenNvim found' {
    run which zpwrRecentfThenNvim
    assert $state equals 0
}

@test 'which zpwrRecompile found' {
    run which zpwrRecompile
    assert $state equals 0
}

@test 'which zpwrRecompileFiles found' {
    run which zpwrRecompileFiles
    assert $state equals 0
}

@test 'which zpwrRecompileFpath found' {
    run which zpwrRecompileFpath
    assert $state equals 0
}

@test 'which zpwrRefreshZwc found' {
    run which zpwrRefreshZwc
    assert $state equals 0
}

@test 'which zpwrRegenAll found' {
    run which zpwrRegenAll
    assert $state equals 0
}

@test 'which zpwrRegenAllKeybindingsCache found' {
    run which zpwrRegenAllKeybindingsCache
    assert $state equals 0
}

@test 'which zpwrRegenConfigLinks found' {
    run which zpwrRegenConfigLinks
    assert $state equals 0
}

@test 'which zpwrRegenCtags found' {
    run which zpwrRegenCtags
    assert $state equals 0
}

@test 'which zpwrRegenGtagsCtags found' {
    run which zpwrRegenGtagsCtags
    assert $state equals 0
}

@test 'which zpwrRegenGtagsPygments found' {
    run which zpwrRegenGtagsPygments
    assert $state equals 0
}

@test 'which zpwrRegenGtagsType found' {
    run which zpwrRegenGtagsType
    assert $state equals 0
}

@test 'which zpwrRegenHistory found' {
    run which zpwrRegenHistory
    assert $state equals 0
}

@test 'which zpwrRegenMost found' {
    run which zpwrRegenMost
    assert $state equals 0
}

@test 'which zpwrRegenPowerlineLink found' {
    run which zpwrRegenPowerlineLink
    assert $state equals 0
}

@test 'which zpwrRegenSearchEnv found' {
    run which zpwrRegenSearchEnv
    assert $state equals 0
}

@test 'which zpwrRegenZshCompCache found' {
    run which zpwrRegenZshCompCache
    assert $state equals 0
}

@test 'which zpwrRegexp-replace-single found' {
    run which zpwrRegexp-replace-single
    assert $state equals 0
}

@test 'which zpwrReload found' {
    run which zpwrReload
    assert $state equals 0
}

@test 'which zpwrRelPath found' {
    run which zpwrRelPath
    assert $state equals 0
}

@test 'which zpwrRename found' {
    run which zpwrRename
    assert $state equals 0
}

@test 'which zpwrReplacer found' {
    run which zpwrReplacer
    assert $state equals 0
}

@test 'which zpwrReset found' {
    run which zpwrReset
    assert $state equals 0
}

@test 'which zpwrRestoreHistfile found' {
    run which zpwrRestoreHistfile
    assert $state equals 0
}

@test 'which zpwrRetryZcompdump found' {
    run which zpwrRetryZcompdump
    assert $state equals 0
}

@test 'which zpwrRevealRecurse found' {
    run which zpwrRevealRecurse
    assert $state equals 0
}

@test 'which zpwrRunner found' {
    run which zpwrRunner
    assert $state equals 0
}

@test 'which zpwrScnew found' {
    run which zpwrScnew
    assert $state equals 0
}

@test 'which zpwrScriptCount found' {
    run which zpwrScriptCount
    assert $state equals 0
}

@test 'which zpwrScriptList found' {
    run which zpwrScriptList
    assert $state equals 0
}

@test 'which zpwrScripts found' {
    run which zpwrScripts
    assert $state equals 0
}

@test 'which zpwrSearch found' {
    run which zpwrSearch
    assert $state equals 0
}

@test 'which zpwrSelfInsert found' {
    run which zpwrSelfInsert
    assert $state equals 0
}

@test 'which zpwrSshRegain found' {
    run which zpwrSshRegain
    assert $state equals 0
}

@test 'which zpwrStaleZcompdump found' {
    run which zpwrStaleZcompdump
    assert $state equals 0
}

@test 'which zpwrStartAutoComplete found' {
    run which zpwrStartAutoComplete
    assert $state equals 0
}

@test 'which zpwrStartSend found' {
    run which zpwrStartSend
    assert $state equals 0
}

@test 'which zpwrStartSendFull found' {
    run which zpwrStartSendFull
    assert $state equals 0
}

@test 'which zpwrStopAutoComplete found' {
    run which zpwrStopAutoComplete
    assert $state equals 0
}

@test 'which zpwrStopSend found' {
    run which zpwrStopSend
    assert $state equals 0
}

@test 'which zpwrSudoEditorRecent found' {
    run which zpwrSudoEditorRecent
    assert $state equals 0
}

@test 'which zpwrSudoEditorRecentCd found' {
    run which zpwrSudoEditorRecentCd
    assert $state equals 0
}

@test 'which zpwrSudoEmacsRecent found' {
    run which zpwrSudoEmacsRecent
    assert $state equals 0
}

@test 'which zpwrSudoEmacsRecentCd found' {
    run which zpwrSudoEmacsRecentCd
    assert $state equals 0
}

@test 'which zpwrSudoVimRecent found' {
    run which zpwrSudoVimRecent
    assert $state equals 0
}

@test 'which zpwrSudoVimRecentCd found' {
    run which zpwrSudoVimRecentCd
    assert $state equals 0
}

@test 'which zpwrTabNum found' {
    run which zpwrTabNum
    assert $state equals 0
}

@test 'which zpwrTabNumCmd found' {
    run which zpwrTabNumCmd
    assert $state equals 0
}

@test 'which zpwrTest found' {
    run which zpwrTest
    assert $state equals 0
}

@test 'which zpwrTestAll found' {
    run which zpwrTestAll
    assert $state equals 0
}

@test 'which zpwrTimer found' {
    run which zpwrTimer
    assert $state equals 0
}

@test 'which zpwrTmux_capture_paner found' {
    run which zpwrTmux_capture_paner
    assert $state equals 0
}

@test 'which zpwrTmux_pane_words found' {
    run which zpwrTmux_pane_words
    assert $state equals 0
}

@test 'which zpwrTorip found' {
    run which zpwrTorip
    assert $state equals 0
}

@test 'which zpwrToriprenew found' {
    run which zpwrToriprenew
    assert $state equals 0
}

@test 'which zpwrTotalLines found' {
    run which zpwrTotalLines
    assert $state equals 0
}

@test 'which zpwrTutsUpdate found' {
    run which zpwrTutsUpdate
    assert $state equals 0
}

@test 'which zpwrUncompile found' {
    run which zpwrUncompile
    assert $state equals 0
}

@test 'which zpwrUninstall found' {
    run which zpwrUninstall
    assert $state equals 0
}

@test 'which zpwrUnlinkConf found' {
    run which zpwrUnlinkConf
    assert $state equals 0
}

@test 'which zpwrUp8widget found' {
    run which zpwrUp8widget
    assert $state equals 0
}

@test 'which zpwrUpdate found' {
    run which zpwrUpdate
    assert $state equals 0
}

@test 'which zpwrUpdateAllGitDirs found' {
    run which zpwrUpdateAllGitDirs
    assert $state equals 0
}

@test 'which zpwrUpdateDeps found' {
    run which zpwrUpdateDeps
    assert $state equals 0
}

@test 'which zpwrUpdateDepsClean found' {
    run which zpwrUpdateDepsClean
    assert $state equals 0
}

@test 'which zpwrUpdater found' {
    run which zpwrUpdater
    assert $state equals 0
}

@test 'which zpwrUpload found' {
    run which zpwrUpload
    assert $state equals 0
}

@test 'which zpwrUrlSafe found' {
    run which zpwrUrlSafe
    assert $state equals 0
}

@test 'which zpwrVerbsEditNoZLE found' {
    run which zpwrVerbsEditNoZLE
    assert $state equals 0
}

@test 'which zpwrVerbsFZF found' {
    run which zpwrVerbsFZF
    assert $state equals 0
}

@test 'which zpwrVerbsNoZLE found' {
    run which zpwrVerbsNoZLE
    assert $state equals 0
}

@test 'which zpwrVerbsWidget found' {
    run which zpwrVerbsWidget
    assert $state equals 0
}

@test 'which zpwrVerbsWidgetAccept found' {
    run which zpwrVerbsWidgetAccept
    assert $state equals 0
}

@test 'which zpwrVimAll found' {
    run which zpwrVimAll
    assert $state equals 0
}

@test 'which zpwrVimAllEdit found' {
    run which zpwrVimAllEdit
    assert $state equals 0
}

@test 'which zpwrVimAllWidget found' {
    run which zpwrVimAllWidget
    assert $state equals 0
}

@test 'which zpwrVimAllWidgetAccept found' {
    run which zpwrVimAllWidgetAccept
    assert $state equals 0
}

@test 'which zpwrVimAutoload found' {
    run which zpwrVimAutoload
    assert $state equals 0
}

@test 'which zpwrVimEmacsConfig found' {
    run which zpwrVimEmacsConfig
    assert $state equals 0
}

@test 'which zpwrVimFzf found' {
    run which zpwrVimFzf
    assert $state equals 0
}

@test 'which zpwrVimFzfFilesearchVerb found' {
    run which zpwrVimFzfFilesearchVerb
    assert $state equals 0
}

@test 'which zpwrVimFzfFilesearchVerbEdit found' {
    run which zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'which zpwrVimFzfFilesearchWidgetAccept found' {
    run which zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'which zpwrVimFzfSudo found' {
    run which zpwrVimFzfSudo
    assert $state equals 0
}

@test 'which zpwrVimFzfWordsearchVerb found' {
    run which zpwrVimFzfWordsearchVerb
    assert $state equals 0
}

@test 'which zpwrVimFzfWordsearchVerbEdit found' {
    run which zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'which zpwrVimPluginCount found' {
    run which zpwrVimPluginCount
    assert $state equals 0
}

@test 'which zpwrVimPluginList found' {
    run which zpwrVimPluginList
    assert $state equals 0
}

@test 'which zpwrVimRecent found' {
    run which zpwrVimRecent
    assert $state equals 0
}

@test 'which zpwrVimRecentCd found' {
    run which zpwrVimRecentCd
    assert $state equals 0
}

@test 'which zpwrVimScriptEdit found' {
    run which zpwrVimScriptEdit
    assert $state equals 0
}

@test 'which zpwrVimScripts found' {
    run which zpwrVimScripts
    assert $state equals 0
}

@test 'which zpwrVimZpwrCtags found' {
    run which zpwrVimZpwrCtags
    assert $state equals 0
}

@test 'which zpwrVimZpwrGtags found' {
    run which zpwrVimZpwrGtags
    assert $state equals 0
}

@test 'which zpwrVimZpwrGtagsEdit found' {
    run which zpwrVimZpwrGtagsEdit
    assert $state equals 0
}

@test 'which zpwrZcompdump found' {
    run which zpwrZcompdump
    assert $state equals 0
}

@test 'which zpwrZFZF found' {
    run which zpwrZFZF
    assert $state equals 0
}

@test 'which zpwrZinitUpdates found' {
    run which zpwrZinitUpdates
    assert $state equals 0
}

@test 'which zpwrZshPluginCount found' {
    run which zpwrZshPluginCount
    assert $state equals 0
}

@test 'which zpwrZshPluginList found' {
    run which zpwrZshPluginList
    assert $state equals 0
}

@test 'which zpwrZshrcSearch found' {
    run which zpwrZshrcSearch
    assert $state equals 0
}

@test 'which zpwrZstyle found' {
    run which zpwrZstyle
    assert $state equals 0
}

@test 'which zpz found' {
    run which zpz
    assert $state equals 0
}

@test 'which zr found' {
    run which zr
    assert $state equals 0
}

@test 'which zs found' {
    run which zs
    assert $state equals 0
}

@test 'which zsm found' {
    run which zsm
    assert $state equals 0
}

@test 'which zt found' {
    run which zt
    assert $state equals 0
}

@test 'which ztl found' {
    run which ztl
    assert $state equals 0
}

@test 'which ztm found' {
    run which ztm
    assert $state equals 0
}

@test 'which zua found' {
    run which zua
    assert $state equals 0
}
