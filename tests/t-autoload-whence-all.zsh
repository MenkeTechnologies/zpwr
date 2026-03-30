#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test whence of all autoload/common functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'whence a resolves' {
    run whence a
    assert $state equals 0
}

@test 'whence apz resolves' {
    run whence apz
    assert $state equals 0
}

@test 'whence asg resolves' {
    run whence asg
    assert $state equals 0
}

@test 'whence b resolves' {
    run whence b
    assert $state equals 0
}

@test 'whence c resolves' {
    run whence c
    assert $state equals 0
}

@test 'whence cca resolves' {
    run whence cca
    assert $state equals 0
}

@test 'whence cd resolves' {
    run whence cd
    assert $state equals 0
}

@test 'whence ce resolves' {
    run whence ce
    assert $state equals 0
}

@test 'whence cg resolves' {
    run whence cg
    assert $state equals 0
}

@test 'whence cgh resolves' {
    run whence cgh
    assert $state equals 0
}

@test 'whence color2 resolves' {
    run whence color2
    assert $state equals 0
}

@test 'whence cv resolves' {
    run whence cv
    assert $state equals 0
}

@test 'whence d resolves' {
    run whence d
    assert $state equals 0
}

@test 'whence dbz resolves' {
    run whence dbz
    assert $state equals 0
}

@test 'whence de resolves' {
    run whence de
    assert $state equals 0
}

@test 'whence digs resolves' {
    run whence digs
    assert $state equals 0
}

@test 'whence dl resolves' {
    run whence dl
    assert $state equals 0
}

@test 'whence docu resolves' {
    run whence docu
    assert $state equals 0
}

@test 'whence e resolves' {
    run whence e
    assert $state equals 0
}

@test 'whence eb resolves' {
    run whence eb
    assert $state equals 0
}

@test 'whence em resolves' {
    run whence em
    assert $state equals 0
}

@test 'whence emm resolves' {
    run whence emm
    assert $state equals 0
}

@test 'whence f resolves' {
    run whence f
    assert $state equals 0
}

@test 'whence ff resolves' {
    run whence ff
    assert $state equals 0
}

@test 'whence fff resolves' {
    run whence fff
    assert $state equals 0
}

@test 'whence fm resolves' {
    run whence fm
    assert $state equals 0
}

@test 'whence fp resolves' {
    run whence fp
    assert $state equals 0
}

@test 'whence gcl resolves' {
    run whence gcl
    assert $state equals 0
}

@test 'whence ge resolves' {
    run whence ge
    assert $state equals 0
}

@test 'whence gil resolves' {
    run whence gil
    assert $state equals 0
}

@test 'whence gsdc resolves' {
    run whence gsdc
    assert $state equals 0
}

@test 'whence gse resolves' {
    run whence gse
    assert $state equals 0
}

@test 'whence h resolves' {
    run whence h
    assert $state equals 0
}

@test 'whence hc resolves' {
    run whence hc
    assert $state equals 0
}

@test 'whence hd resolves' {
    run whence hd
    assert $state equals 0
}

@test 'whence ig resolves' {
    run whence ig
    assert $state equals 0
}

@test 'whence ino resolves' {
    run whence ino
    assert $state equals 0
}

@test 'whence j resolves' {
    run whence j
    assert $state equals 0
}

@test 'whence jd resolves' {
    run whence jd
    assert $state equals 0
}

@test 'whence kr resolves' {
    run whence kr
    assert $state equals 0
}

@test 'whence lcm resolves' {
    run whence lcm
    assert $state equals 0
}

@test 'whence mg resolves' {
    run whence mg
    assert $state equals 0
}

@test 'whence nz resolves' {
    run whence nz
    assert $state equals 0
}

@test 'whence o resolves' {
    run whence o
    assert $state equals 0
}

@test 'whence p resolves' {
    run whence p
    assert $state equals 0
}

@test 'whence pg resolves' {
    run whence pg
    assert $state equals 0
}

@test 'whence post resolves' {
    run whence post
    assert $state equals 0
}

@test 'whence pre resolves' {
    run whence pre
    assert $state equals 0
}

@test 'whence r resolves' {
    run whence r
    assert $state equals 0
}

@test 'whence return2 resolves' {
    run whence return2
    assert $state equals 0
}

@test 'whence rm resolves' {
    run whence rm
    assert $state equals 0
}

@test 'whence s resolves' {
    run whence s
    assert $state equals 0
}

@test 'whence sub resolves' {
    run whence sub
    assert $state equals 0
}

@test 'whence suc resolves' {
    run whence suc
    assert $state equals 0
}

@test 'whence t resolves' {
    run whence t
    assert $state equals 0
}

@test 'whence tac resolves' {
    run whence tac
    assert $state equals 0
}

@test 'whence tma resolves' {
    run whence tma
    assert $state equals 0
}

@test 'whence to resolves' {
    run whence to
    assert $state equals 0
}

@test 'whence ue resolves' {
    run whence ue
    assert $state equals 0
}

@test 'whence va resolves' {
    run whence va
    assert $state equals 0
}

@test 'whence vb resolves' {
    run whence vb
    assert $state equals 0
}

@test 'whence vl resolves' {
    run whence vl
    assert $state equals 0
}

@test 'whence we resolves' {
    run whence we
    assert $state equals 0
}

@test 'whence wg resolves' {
    run whence wg
    assert $state equals 0
}

@test 'whence ww resolves' {
    run whence ww
    assert $state equals 0
}

@test 'whence www resolves' {
    run whence www
    assert $state equals 0
}

@test 'whence xx resolves' {
    run whence xx
    assert $state equals 0
}

@test 'whence z resolves' {
    run whence z
    assert $state equals 0
}

@test 'whence zal resolves' {
    run whence zal
    assert $state equals 0
}

@test 'whence zalc resolves' {
    run whence zalc
    assert $state equals 0
}

@test 'whence zald resolves' {
    run whence zald
    assert $state equals 0
}

@test 'whence zalf resolves' {
    run whence zalf
    assert $state equals 0
}

@test 'whence zall resolves' {
    run whence zall
    assert $state equals 0
}

@test 'whence zalo resolves' {
    run whence zalo
    assert $state equals 0
}

@test 'whence zals resolves' {
    run whence zals
    assert $state equals 0
}

@test 'whence zalu resolves' {
    run whence zalu
    assert $state equals 0
}

@test 'whence zarg resolves' {
    run whence zarg
    assert $state equals 0
}

@test 'whence zco resolves' {
    run whence zco
    assert $state equals 0
}

@test 'whence zd resolves' {
    run whence zd
    assert $state equals 0
}

@test 'whence ze resolves' {
    run whence ze
    assert $state equals 0
}

@test 'whence zg resolves' {
    run whence zg
    assert $state equals 0
}

@test 'whence zh resolves' {
    run whence zh
    assert $state equals 0
}

@test 'whence zhb resolves' {
    run whence zhb
    assert $state equals 0
}

@test 'whence zhc resolves' {
    run whence zhc
    assert $state equals 0
}

@test 'whence zhp resolves' {
    run whence zhp
    assert $state equals 0
}

@test 'whence zhs resolves' {
    run whence zhs
    assert $state equals 0
}

@test 'whence zil resolves' {
    run whence zil
    assert $state equals 0
}

@test 'whence zl resolves' {
    run whence zl
    assert $state equals 0
}

@test 'whence zlc resolves' {
    run whence zlc
    assert $state equals 0
}

@test 'whence zli resolves' {
    run whence zli
    assert $state equals 0
}

@test 'whence zlr resolves' {
    run whence zlr
    assert $state equals 0
}

@test 'whence zlt resolves' {
    run whence zlt
    assert $state equals 0
}

@test 'whence zm resolves' {
    run whence zm
    assert $state equals 0
}

@test 'whence zpl resolves' {
    run whence zpl
    assert $state equals 0
}

@test 'whence zpwr resolves' {
    run whence zpwr
    assert $state equals 0
}

@test 'whence zpwr256ColorTest resolves' {
    run whence zpwr256ColorTest
    assert $state equals 0
}

@test 'whence zpwrAbout resolves' {
    run whence zpwrAbout
    assert $state equals 0
}

@test 'whence zpwrAcceptLine resolves' {
    run whence zpwrAcceptLine
    assert $state equals 0
}

@test 'whence zpwrAddOMZAttrib resolves' {
    run whence zpwrAddOMZAttrib
    assert $state equals 0
}

@test 'whence zpwrAgIntoFzf resolves' {
    run whence zpwrAgIntoFzf
    assert $state equals 0
}

@test 'whence zpwrAlacritty resolves' {
    run whence zpwrAlacritty
    assert $state equals 0
}

@test 'whence zpwrAllRemotes resolves' {
    run whence zpwrAllRemotes
    assert $state equals 0
}

@test 'whence zpwrAllUpdates resolves' {
    run whence zpwrAllUpdates
    assert $state equals 0
}

@test 'whence zpwrAlternateQuotes resolves' {
    run whence zpwrAlternateQuotes
    assert $state equals 0
}

@test 'whence zpwrAnimate resolves' {
    run whence zpwrAnimate
    assert $state equals 0
}

@test 'whence zpwrArrayToJson resolves' {
    run whence zpwrArrayToJson
    assert $state equals 0
}

@test 'whence zpwrAsVar resolves' {
    run whence zpwrAsVar
    assert $state equals 0
}

@test 'whence zpwrAutoloadCount resolves' {
    run whence zpwrAutoloadCount
    assert $state equals 0
}

@test 'whence zpwrAutoloadList resolves' {
    run whence zpwrAutoloadList
    assert $state equals 0
}

@test 'whence zpwrBackup resolves' {
    run whence zpwrBackup
    assert $state equals 0
}

@test 'whence zpwrBackupHistfile resolves' {
    run whence zpwrBackupHistfile
    assert $state equals 0
}

@test 'whence zpwrBannerCounts resolves' {
    run whence zpwrBannerCounts
    assert $state equals 0
}

@test 'whence zpwrBannerLolcat resolves' {
    run whence zpwrBannerLolcat
    assert $state equals 0
}

@test 'whence zpwrBindAliasesLate resolves' {
    run whence zpwrBindAliasesLate
    assert $state equals 0
}

@test 'whence zpwrBindAliasesZshLate resolves' {
    run whence zpwrBindAliasesZshLate
    assert $state equals 0
}

@test 'whence zpwrBindDirs resolves' {
    run whence zpwrBindDirs
    assert $state equals 0
}

@test 'whence zpwrBindFinal resolves' {
    run whence zpwrBindFinal
    assert $state equals 0
}

@test 'whence zpwrBindForGit resolves' {
    run whence zpwrBindForGit
    assert $state equals 0
}

@test 'whence zpwrBindFZFLate resolves' {
    run whence zpwrBindFZFLate
    assert $state equals 0
}

@test 'whence zpwrBindHistorySubstring resolves' {
    run whence zpwrBindHistorySubstring
    assert $state equals 0
}

@test 'whence zpwrBindInterceptSurround resolves' {
    run whence zpwrBindInterceptSurround
    assert $state equals 0
}

@test 'whence zpwrBindOverrideAutoComplete resolves' {
    run whence zpwrBindOverrideAutoComplete
    assert $state equals 0
}

@test 'whence zpwrBindOverrideOMZ resolves' {
    run whence zpwrBindOverrideOMZ
    assert $state equals 0
}

@test 'whence zpwrBindOverrideOMZCompdefs resolves' {
    run whence zpwrBindOverrideOMZCompdefs
    assert $state equals 0
}

@test 'whence zpwrBindOverrideZLE resolves' {
    run whence zpwrBindOverrideZLE
    assert $state equals 0
}

@test 'whence zpwrBindPenultimate resolves' {
    run whence zpwrBindPenultimate
    assert $state equals 0
}

@test 'whence zpwrBindPowerline resolves' {
    run whence zpwrBindPowerline
    assert $state equals 0
}

@test 'whence zpwrBindPowerlineTmux resolves' {
    run whence zpwrBindPowerlineTmux
    assert $state equals 0
}

@test 'whence zpwrBindPrecmd resolves' {
    run whence zpwrBindPrecmd
    assert $state equals 0
}

@test 'whence zpwrBindPreexecChpwd resolves' {
    run whence zpwrBindPreexecChpwd
    assert $state equals 0
}

@test 'whence zpwrBindVerbs resolves' {
    run whence zpwrBindVerbs
    assert $state equals 0
}

@test 'whence zpwrBindZdharma resolves' {
    run whence zpwrBindZdharma
    assert $state equals 0
}

@test 'whence zpwrBindZdharmaPost resolves' {
    run whence zpwrBindZdharmaPost
    assert $state equals 0
}

@test 'whence zpwrBindZstyle resolves' {
    run whence zpwrBindZstyle
    assert $state equals 0
}

@test 'whence zpwrBufferXtrace resolves' {
    run whence zpwrBufferXtrace
    assert $state equals 0
}

@test 'whence zpwrCat resolves' {
    run whence zpwrCat
    assert $state equals 0
}

@test 'whence zpwrCatNvimOrVimInfo resolves' {
    run whence zpwrCatNvimOrVimInfo
    assert $state equals 0
}

@test 'whence zpwrCCommon resolves' {
    run whence zpwrCCommon
    assert $state equals 0
}

@test 'whence zpwrCd resolves' {
    run whence zpwrCd
    assert $state equals 0
}

@test 'whence zpwrCdUp resolves' {
    run whence zpwrCdUp
    assert $state equals 0
}

@test 'whence zpwrCdVimFzfFilesearchWidgetAccept resolves' {
    run whence zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'whence zpwrChangeGitAuthorEmail resolves' {
    run whence zpwrChangeGitAuthorEmail
    assert $state equals 0
}

@test 'whence zpwrChangeGitCommitterEmail resolves' {
    run whence zpwrChangeGitCommitterEmail
    assert $state equals 0
}

@test 'whence zpwrChangeGitEmail resolves' {
    run whence zpwrChangeGitEmail
    assert $state equals 0
}

@test 'whence zpwrChangeName resolves' {
    run whence zpwrChangeName
    assert $state equals 0
}

@test 'whence zpwrChangeNameZpwr resolves' {
    run whence zpwrChangeNameZpwr
    assert $state equals 0
}

@test 'whence zpwrChangeQuotes resolves' {
    run whence zpwrChangeQuotes
    assert $state equals 0
}

@test 'whence zpwrChpwd resolves' {
    run whence zpwrChpwd
    assert $state equals 0
}

@test 'whence zpwrCleanAll resolves' {
    run whence zpwrCleanAll
    assert $state equals 0
}

@test 'whence zpwrCleanCache resolves' {
    run whence zpwrCleanCache
    assert $state equals 0
}

@test 'whence zpwrCleanCompCache resolves' {
    run whence zpwrCleanCompCache
    assert $state equals 0
}

@test 'whence zpwrCleanDirs resolves' {
    run whence zpwrCleanDirs
    assert $state equals 0
}

@test 'whence zpwrCleanDirsAndTemp resolves' {
    run whence zpwrCleanDirsAndTemp
    assert $state equals 0
}

@test 'whence zpwrCleanGitRepoCache resolves' {
    run whence zpwrCleanGitRepoCache
    assert $state equals 0
}

@test 'whence zpwrCleanGitRepoCleanCache resolves' {
    run whence zpwrCleanGitRepoCleanCache
    assert $state equals 0
}

@test 'whence zpwrCleanGitRepoDirtyCache resolves' {
    run whence zpwrCleanGitRepoDirtyCache
    assert $state equals 0
}

@test 'whence zpwrCleanLog resolves' {
    run whence zpwrCleanLog
    assert $state equals 0
}

@test 'whence zpwrCleanRefreshCountsTestUpdate resolves' {
    run whence zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
}

@test 'whence zpwrCleanRefreshUpdate resolves' {
    run whence zpwrCleanRefreshUpdate
    assert $state equals 0
}

@test 'whence zpwrCleanTemp resolves' {
    run whence zpwrCleanTemp
    assert $state equals 0
}

@test 'whence zpwrCleanUpdateDeps resolves' {
    run whence zpwrCleanUpdateDeps
    assert $state equals 0
}

@test 'whence zpwrClearGitCommit resolves' {
    run whence zpwrClearGitCommit
    assert $state equals 0
}

@test 'whence zpwrClearGitFile resolves' {
    run whence zpwrClearGitFile
    assert $state equals 0
}

@test 'whence zpwrClearLine resolves' {
    run whence zpwrClearLine
    assert $state equals 0
}

@test 'whence zpwrClearListFZF resolves' {
    run whence zpwrClearListFZF
    assert $state equals 0
}

@test 'whence zpwrClipboard resolves' {
    run whence zpwrClipboard
    assert $state equals 0
}

@test 'whence zpwrCloneToForked resolves' {
    run whence zpwrCloneToForked
    assert $state equals 0
}

@test 'whence zpwrColorTest resolves' {
    run whence zpwrColorTest
    assert $state equals 0
}

@test 'whence zpwrCommits resolves' {
    run whence zpwrCommits
    assert $state equals 0
}

@test 'whence zpwrConfirm resolves' {
    run whence zpwrConfirm
    assert $state equals 0
}

@test 'whence zpwrContribCount resolves' {
    run whence zpwrContribCount
    assert $state equals 0
}

@test 'whence zpwrContribCountDirs resolves' {
    run whence zpwrContribCountDirs
    assert $state equals 0
}

@test 'whence zpwrContribCountLines resolves' {
    run whence zpwrContribCountLines
    assert $state equals 0
}

@test 'whence zpwrCreateAliasCache resolves' {
    run whence zpwrCreateAliasCache
    assert $state equals 0
}

@test 'whence zpwrCreategif resolves' {
    run whence zpwrCreategif
    assert $state equals 0
}

@test 'whence zpwrDedupPaths resolves' {
    run whence zpwrDedupPaths
    assert $state equals 0
}

@test 'whence zpwrDeleteLastWord resolves' {
    run whence zpwrDeleteLastWord
    assert $state equals 0
}

@test 'whence zpwrDetachall resolves' {
    run whence zpwrDetachall
    assert $state equals 0
}

@test 'whence zpwrDfimage resolves' {
    run whence zpwrDfimage
    assert $state equals 0
}

@test 'whence zpwrDockerWipe resolves' {
    run whence zpwrDockerWipe
    assert $state equals 0
}

@test 'whence zpwrEditExercism resolves' {
    run whence zpwrEditExercism
    assert $state equals 0
}

@test 'whence zpwrEditor resolves' {
    run whence zpwrEditor
    assert $state equals 0
}

@test 'whence zpwrEditorRecent resolves' {
    run whence zpwrEditorRecent
    assert $state equals 0
}

@test 'whence zpwrEditorRecentCd resolves' {
    run whence zpwrEditorRecentCd
    assert $state equals 0
}

@test 'whence zpwrEditTag resolves' {
    run whence zpwrEditTag
    assert $state equals 0
}

@test 'whence zpwrEmacsAll resolves' {
    run whence zpwrEmacsAll
    assert $state equals 0
}

@test 'whence zpwrEmacsAllEdit resolves' {
    run whence zpwrEmacsAllEdit
    assert $state equals 0
}

@test 'whence zpwrEmacsAllServer resolves' {
    run whence zpwrEmacsAllServer
    assert $state equals 0
}

@test 'whence zpwrEmacsAutoload resolves' {
    run whence zpwrEmacsAutoload
    assert $state equals 0
}

@test 'whence zpwrEmacsEmacsConfig resolves' {
    run whence zpwrEmacsEmacsConfig
    assert $state equals 0
}

@test 'whence zpwrEmacsFzf resolves' {
    run whence zpwrEmacsFzf
    assert $state equals 0
}

@test 'whence zpwrEmacsFzfFilesearchVerb resolves' {
    run whence zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
}

@test 'whence zpwrEmacsFzfFilesearchVerbEdit resolves' {
    run whence zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'whence zpwrEmacsFzfWordsearchVerb resolves' {
    run whence zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
}

@test 'whence zpwrEmacsFzfWordsearchVerbEdit resolves' {
    run whence zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'whence zpwrEmacsPluginCount resolves' {
    run whence zpwrEmacsPluginCount
    assert $state equals 0
}

@test 'whence zpwrEmacsPluginList resolves' {
    run whence zpwrEmacsPluginList
    assert $state equals 0
}

@test 'whence zpwrEmacsRecent resolves' {
    run whence zpwrEmacsRecent
    assert $state equals 0
}

@test 'whence zpwrEmacsRecentCd resolves' {
    run whence zpwrEmacsRecentCd
    assert $state equals 0
}

@test 'whence zpwrEmacsScriptEdit resolves' {
    run whence zpwrEmacsScriptEdit
    assert $state equals 0
}

@test 'whence zpwrEmacsScripts resolves' {
    run whence zpwrEmacsScripts
    assert $state equals 0
}

@test 'whence zpwrEmacsZpwr resolves' {
    run whence zpwrEmacsZpwr
    assert $state equals 0
}

@test 'whence zpwrEmacsZpwrCtags resolves' {
    run whence zpwrEmacsZpwrCtags
    assert $state equals 0
}

@test 'whence zpwrEmacsZpwrGtags resolves' {
    run whence zpwrEmacsZpwrGtags
    assert $state equals 0
}

@test 'whence zpwrEmacsZpwrGtagsEdit resolves' {
    run whence zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
}

@test 'whence zpwrEnvCounts resolves' {
    run whence zpwrEnvCounts
    assert $state equals 0
}

@test 'whence zpwrEnvVars resolves' {
    run whence zpwrEnvVars
    assert $state equals 0
}

@test 'whence zpwrEnvVarsAll resolves' {
    run whence zpwrEnvVarsAll
    assert $state equals 0
}

@test 'whence zpwrEOLorNextTabStop resolves' {
    run whence zpwrEOLorNextTabStop
    assert $state equals 0
}

@test 'whence zpwrEvalTester resolves' {
    run whence zpwrEvalTester
    assert $state equals 0
}

@test 'whence zpwrExecGlob resolves' {
    run whence zpwrExecGlob
    assert $state equals 0
}

@test 'whence zpwrExecGlobParallel resolves' {
    run whence zpwrExecGlobParallel
    assert $state equals 0
}

@test 'whence zpwrExecpy resolves' {
    run whence zpwrExecpy
    assert $state equals 0
}

@test 'whence zpwrExercismDownloadAll resolves' {
    run whence zpwrExercismDownloadAll
    assert $state equals 0
}

@test 'whence zpwrExpandAliasAccept resolves' {
    run whence zpwrExpandAliasAccept
    assert $state equals 0
}

@test 'whence zpwrExpandAliases resolves' {
    run whence zpwrExpandAliases
    assert $state equals 0
}

@test 'whence zpwrExpandOrCompleteWithDots resolves' {
    run whence zpwrExpandOrCompleteWithDots
    assert $state equals 0
}

@test 'whence zpwrFasdFList resolves' {
    run whence zpwrFasdFList
    assert $state equals 0
}

@test 'whence zpwrFasdFListVerb resolves' {
    run whence zpwrFasdFListVerb
    assert $state equals 0
}

@test 'whence zpwrFasdFZF resolves' {
    run whence zpwrFasdFZF
    assert $state equals 0
}

@test 'whence zpwrFigletfonts resolves' {
    run whence zpwrFigletfonts
    assert $state equals 0
}

@test 'whence zpwrFindFzfEditNoZLE resolves' {
    run whence zpwrFindFzfEditNoZLE
    assert $state equals 0
}

@test 'whence zpwrFindFzfEditNoZLEC resolves' {
    run whence zpwrFindFzfEditNoZLEC
    assert $state equals 0
}

@test 'whence zpwrFindFzfEditNoZLEEmacs resolves' {
    run whence zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'whence zpwrFindFzfEditNoZLEVim resolves' {
    run whence zpwrFindFzfEditNoZLEVim
    assert $state equals 0
}

@test 'whence zpwrFindFzfNoZLE resolves' {
    run whence zpwrFindFzfNoZLE
    assert $state equals 0
}

@test 'whence zpwrFindFzfNoZLEC resolves' {
    run whence zpwrFindFzfNoZLEC
    assert $state equals 0
}

@test 'whence zpwrFindFzfNoZLEEmacs resolves' {
    run whence zpwrFindFzfNoZLEEmacs
    assert $state equals 0
}

@test 'whence zpwrFindFzfNoZLEVim resolves' {
    run whence zpwrFindFzfNoZLEVim
    assert $state equals 0
}

@test 'whence zpwrForAllGitDirs resolves' {
    run whence zpwrForAllGitDirs
    assert $state equals 0
}

@test 'whence zpwrForAllGitDirsClean resolves' {
    run whence zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'whence zpwrForAllGitDirsDirty resolves' {
    run whence zpwrForAllGitDirsDirty
    assert $state equals 0
}

@test 'whence zpwrForAllGitDirsRefreshClean resolves' {
    run whence zpwrForAllGitDirsRefreshClean
    assert $state equals 0
}

@test 'whence zpwrForAllGitDirsRefreshDirty resolves' {
    run whence zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
}

@test 'whence zpwrFordir resolves' {
    run whence zpwrFordir
    assert $state equals 0
}

@test 'whence zpwrFordirUpdate resolves' {
    run whence zpwrFordirUpdate
    assert $state equals 0
}

@test 'whence zpwrFzfAllKeybind resolves' {
    run whence zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'whence zpwrFzfCommits resolves' {
    run whence zpwrFzfCommits
    assert $state equals 0
}

@test 'whence zpwrFzfDirSearch resolves' {
    run whence zpwrFzfDirSearch
    assert $state equals 0
}

@test 'whence zpwrFzfDirsearchVerb resolves' {
    run whence zpwrFzfDirsearchVerb
    assert $state equals 0
}

@test 'whence zpwrFzfEnv resolves' {
    run whence zpwrFzfEnv
    assert $state equals 0
}

@test 'whence zpwrFzfEnvVerbAccept resolves' {
    run whence zpwrFzfEnvVerbAccept
    assert $state equals 0
}

@test 'whence zpwrFzfEnvVerbEdit resolves' {
    run whence zpwrFzfEnvVerbEdit
    assert $state equals 0
}

@test 'whence zpwrFzfFileSearch resolves' {
    run whence zpwrFzfFileSearch
    assert $state equals 0
}

@test 'whence zpwrFzfFilesearchVerb resolves' {
    run whence zpwrFzfFilesearchVerb
    assert $state equals 0
}

@test 'whence zpwrFzfFilesearchVerbEdit resolves' {
    run whence zpwrFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'whence zpwrFzfSurround resolves' {
    run whence zpwrFzfSurround
    assert $state equals 0
}

@test 'whence zpwrFzfVimKeybind resolves' {
    run whence zpwrFzfVimKeybind
    assert $state equals 0
}

@test 'whence zpwrFzfWordsearchVerb resolves' {
    run whence zpwrFzfWordsearchVerb
    assert $state equals 0
}

@test 'whence zpwrFzfWordsearchVerbEdit resolves' {
    run whence zpwrFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'whence zpwrFzfZList resolves' {
    run whence zpwrFzfZList
    assert $state equals 0
}

@test 'whence zpwrFzfZListVerb resolves' {
    run whence zpwrFzfZListVerb
    assert $state equals 0
}

@test 'whence zpwrFzfZshKeybind resolves' {
    run whence zpwrFzfZshKeybind
    assert $state equals 0
}

@test 'whence zpwrFzvim resolves' {
    run whence zpwrFzvim
    assert $state equals 0
}

@test 'whence zpwrFzvimAll resolves' {
    run whence zpwrFzvimAll
    assert $state equals 0
}

@test 'whence zpwrFzvimScript resolves' {
    run whence zpwrFzvimScript
    assert $state equals 0
}

@test 'whence zpwrGetFound resolves' {
    run whence zpwrGetFound
    assert $state equals 0
}

@test 'whence zpwrGetGHDelURL resolves' {
    run whence zpwrGetGHDelURL
    assert $state equals 0
}

@test 'whence zpwrGetGtags resolves' {
    run whence zpwrGetGtags
    assert $state equals 0
}

@test 'whence zpwrGetGtagsEdit resolves' {
    run whence zpwrGetGtagsEdit
    assert $state equals 0
}

@test 'whence zpwrGetLocate resolves' {
    run whence zpwrGetLocate
    assert $state equals 0
}

@test 'whence zpwrGetrc resolves' {
    run whence zpwrGetrc
    assert $state equals 0
}

@test 'whence zpwrGetrcdev resolves' {
    run whence zpwrGetrcdev
    assert $state equals 0
}

@test 'whence zpwrGetrcWidget resolves' {
    run whence zpwrGetrcWidget
    assert $state equals 0
}

@test 'whence zpwrgh resolves' {
    run whence zpwrgh
    assert $state equals 0
}

@test 'whence zpwrGitCheckoutRebasePush resolves' {
    run whence zpwrGitCheckoutRebasePush
    assert $state equals 0
}

@test 'whence zpwrGitConfig resolves' {
    run whence zpwrGitConfig
    assert $state equals 0
}

@test 'whence zpwrGitIgnores resolves' {
    run whence zpwrGitIgnores
    assert $state equals 0
}

@test 'whence zpwrGitReposFile resolves' {
    run whence zpwrGitReposFile
    assert $state equals 0
}

@test 'whence zpwrGoclean resolves' {
    run whence zpwrGoclean
    assert $state equals 0
}

@test 'whence zpwrGoogle resolves' {
    run whence zpwrGoogle
    assert $state equals 0
}

@test 'whence zpwrGtagsIntoFzf resolves' {
    run whence zpwrGtagsIntoFzf
    assert $state equals 0
}

@test 'whence zpwrHistfile resolves' {
    run whence zpwrHistfile
    assert $state equals 0
}

@test 'whence zpwrHistoryVerbAccept resolves' {
    run whence zpwrHistoryVerbAccept
    assert $state equals 0
}

@test 'whence zpwrHistoryVerbEdit resolves' {
    run whence zpwrHistoryVerbEdit
    assert $state equals 0
}

@test 'whence zpwrInterceptDelete resolves' {
    run whence zpwrInterceptDelete
    assert $state equals 0
}

@test 'whence zpwrInterceptSurround resolves' {
    run whence zpwrInterceptSurround
    assert $state equals 0
}

@test 'whence zpwrIntoFzf resolves' {
    run whence zpwrIntoFzf
    assert $state equals 0
}

@test 'whence zpwrIntoFzfAg resolves' {
    run whence zpwrIntoFzfAg
    assert $state equals 0
}

@test 'whence zpwrJetbrainsWorkspaceEdit resolves' {
    run whence zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
}

@test 'whence zpwrJsonToArray resolves' {
    run whence zpwrJsonToArray
    assert $state equals 0
}

@test 'whence zpwrKeyClear resolves' {
    run whence zpwrKeyClear
    assert $state equals 0
}

@test 'whence zpwrKeySender resolves' {
    run whence zpwrKeySender
    assert $state equals 0
}

@test 'whence zpwrKillLsofVerbAccept resolves' {
    run whence zpwrKillLsofVerbAccept
    assert $state equals 0
}

@test 'whence zpwrKillLsofVerbEdit resolves' {
    run whence zpwrKillLsofVerbEdit
    assert $state equals 0
}

@test 'whence zpwrKillPSVerbAccept resolves' {
    run whence zpwrKillPSVerbAccept
    assert $state equals 0
}

@test 'whence zpwrKillPSVerbEdit resolves' {
    run whence zpwrKillPSVerbEdit
    assert $state equals 0
}

@test 'whence zpwrKillRemote resolves' {
    run whence zpwrKillRemote
    assert $state equals 0
}

@test 'whence zpwrLargestGitFiles resolves' {
    run whence zpwrLargestGitFiles
    assert $state equals 0
}

@test 'whence zpwrLastWordDouble resolves' {
    run whence zpwrLastWordDouble
    assert $state equals 0
}

@test 'whence zpwrLineCount resolves' {
    run whence zpwrLineCount
    assert $state equals 0
}

@test 'whence zpwrLinkConf resolves' {
    run whence zpwrLinkConf
    assert $state equals 0
}

@test 'whence zpwrListFiles resolves' {
    run whence zpwrListFiles
    assert $state equals 0
}

@test 'whence zpwrListNoClear resolves' {
    run whence zpwrListNoClear
    assert $state equals 0
}

@test 'whence zpwrListVerbs resolves' {
    run whence zpwrListVerbs
    assert $state equals 0
}

@test 'whence zpwrListVerbsColor resolves' {
    run whence zpwrListVerbsColor
    assert $state equals 0
}

@test 'whence zpwrLoadJenv resolves' {
    run whence zpwrLoadJenv
    assert $state equals 0
}

@test 'whence zpwrLocateFzf resolves' {
    run whence zpwrLocateFzf
    assert $state equals 0
}

@test 'whence zpwrLocateFzfEdit resolves' {
    run whence zpwrLocateFzfEdit
    assert $state equals 0
}

@test 'whence zpwrLocateFzfEditNoZLE resolves' {
    run whence zpwrLocateFzfEditNoZLE
    assert $state equals 0
}

@test 'whence zpwrLocateFzfEditNoZLEC resolves' {
    run whence zpwrLocateFzfEditNoZLEC
    assert $state equals 0
}

@test 'whence zpwrLocateFzfEditNoZLEEmacs resolves' {
    run whence zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'whence zpwrLocateFzfEditNoZLEVim resolves' {
    run whence zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
}

@test 'whence zpwrLocateFzfNoZLE resolves' {
    run whence zpwrLocateFzfNoZLE
    assert $state equals 0
}

@test 'whence zpwrLocateFzfNoZLEC resolves' {
    run whence zpwrLocateFzfNoZLEC
    assert $state equals 0
}

@test 'whence zpwrLocateFzfNoZLEEmacs resolves' {
    run whence zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
}

@test 'whence zpwrLocateFzfNoZLEVim resolves' {
    run whence zpwrLocateFzfNoZLEVim
    assert $state equals 0
}

@test 'whence zpwrLoginCount resolves' {
    run whence zpwrLoginCount
    assert $state equals 0
}

@test 'whence zpwrLsoffzf resolves' {
    run whence zpwrLsoffzf
    assert $state equals 0
}

@test 'whence zpwrMagicEnter resolves' {
    run whence zpwrMagicEnter
    assert $state equals 0
}

@test 'whence zpwrModulesFZF resolves' {
    run whence zpwrModulesFZF
    assert $state equals 0
}

@test 'whence zpwrMycurl resolves' {
    run whence zpwrMycurl
    assert $state equals 0
}

@test 'whence zpwrNoPonyBanner resolves' {
    run whence zpwrNoPonyBanner
    assert $state equals 0
}

@test 'whence zpwrNumVerbs resolves' {
    run whence zpwrNumVerbs
    assert $state equals 0
}

@test 'whence zpwrNvimThenRecentf resolves' {
    run whence zpwrNvimThenRecentf
    assert $state equals 0
}

@test 'whence zpwrOmzOverrides resolves' {
    run whence zpwrOmzOverrides
    assert $state equals 0
}

@test 'whence zpwrOpen resolves' {
    run whence zpwrOpen
    assert $state equals 0
}

@test 'whence zpwrOpenExercism resolves' {
    run whence zpwrOpenExercism
    assert $state equals 0
}

@test 'whence zpwrOpenmygh resolves' {
    run whence zpwrOpenmygh
    assert $state equals 0
}

@test 'whence zpwrOptionsFZF resolves' {
    run whence zpwrOptionsFZF
    assert $state equals 0
}

@test 'whence zpwrParseRecentf resolves' {
    run whence zpwrParseRecentf
    assert $state equals 0
}

@test 'whence zpwrPasteToBuffer resolves' {
    run whence zpwrPasteToBuffer
    assert $state equals 0
}

@test 'whence zpwrPasteToStdout resolves' {
    run whence zpwrPasteToStdout
    assert $state equals 0
}

@test 'whence zpwrPirun resolves' {
    run whence zpwrPirun
    assert $state equals 0
}

@test 'whence zpwrPoll resolves' {
    run whence zpwrPoll
    assert $state equals 0
}

@test 'whence zpwrPonyBanner resolves' {
    run whence zpwrPonyBanner
    assert $state equals 0
}

@test 'whence zpwrPrecmd resolves' {
    run whence zpwrPrecmd
    assert $state equals 0
}

@test 'whence zpwrPreexec resolves' {
    run whence zpwrPreexec
    assert $state equals 0
}

@test 'whence zpwrPrintMap resolves' {
    run whence zpwrPrintMap
    assert $state equals 0
}

@test 'whence zpwrPstreemonitor resolves' {
    run whence zpwrPstreemonitor
    assert $state equals 0
}

@test 'whence zpwrPygmentcolors resolves' {
    run whence zpwrPygmentcolors
    assert $state equals 0
}

@test 'whence zpwrRationalizeDot resolves' {
    run whence zpwrRationalizeDot
    assert $state equals 0
}

@test 'whence zpwrRecentfThenNvim resolves' {
    run whence zpwrRecentfThenNvim
    assert $state equals 0
}

@test 'whence zpwrRecompile resolves' {
    run whence zpwrRecompile
    assert $state equals 0
}

@test 'whence zpwrRecompileFiles resolves' {
    run whence zpwrRecompileFiles
    assert $state equals 0
}

@test 'whence zpwrRecompileFpath resolves' {
    run whence zpwrRecompileFpath
    assert $state equals 0
}

@test 'whence zpwrRefreshZwc resolves' {
    run whence zpwrRefreshZwc
    assert $state equals 0
}

@test 'whence zpwrRegenAll resolves' {
    run whence zpwrRegenAll
    assert $state equals 0
}

@test 'whence zpwrRegenAllKeybindingsCache resolves' {
    run whence zpwrRegenAllKeybindingsCache
    assert $state equals 0
}

@test 'whence zpwrRegenConfigLinks resolves' {
    run whence zpwrRegenConfigLinks
    assert $state equals 0
}

@test 'whence zpwrRegenCtags resolves' {
    run whence zpwrRegenCtags
    assert $state equals 0
}

@test 'whence zpwrRegenGtagsCtags resolves' {
    run whence zpwrRegenGtagsCtags
    assert $state equals 0
}

@test 'whence zpwrRegenGtagsPygments resolves' {
    run whence zpwrRegenGtagsPygments
    assert $state equals 0
}

@test 'whence zpwrRegenGtagsType resolves' {
    run whence zpwrRegenGtagsType
    assert $state equals 0
}

@test 'whence zpwrRegenHistory resolves' {
    run whence zpwrRegenHistory
    assert $state equals 0
}

@test 'whence zpwrRegenMost resolves' {
    run whence zpwrRegenMost
    assert $state equals 0
}

@test 'whence zpwrRegenPowerlineLink resolves' {
    run whence zpwrRegenPowerlineLink
    assert $state equals 0
}

@test 'whence zpwrRegenSearchEnv resolves' {
    run whence zpwrRegenSearchEnv
    assert $state equals 0
}

@test 'whence zpwrRegenZshCompCache resolves' {
    run whence zpwrRegenZshCompCache
    assert $state equals 0
}

@test 'whence zpwrRegexp-replace-single resolves' {
    run whence zpwrRegexp-replace-single
    assert $state equals 0
}

@test 'whence zpwrReload resolves' {
    run whence zpwrReload
    assert $state equals 0
}

@test 'whence zpwrRelPath resolves' {
    run whence zpwrRelPath
    assert $state equals 0
}

@test 'whence zpwrRename resolves' {
    run whence zpwrRename
    assert $state equals 0
}

@test 'whence zpwrReplacer resolves' {
    run whence zpwrReplacer
    assert $state equals 0
}

@test 'whence zpwrReset resolves' {
    run whence zpwrReset
    assert $state equals 0
}

@test 'whence zpwrRestoreHistfile resolves' {
    run whence zpwrRestoreHistfile
    assert $state equals 0
}

@test 'whence zpwrRetryZcompdump resolves' {
    run whence zpwrRetryZcompdump
    assert $state equals 0
}

@test 'whence zpwrRevealRecurse resolves' {
    run whence zpwrRevealRecurse
    assert $state equals 0
}

@test 'whence zpwrRunner resolves' {
    run whence zpwrRunner
    assert $state equals 0
}

@test 'whence zpwrScnew resolves' {
    run whence zpwrScnew
    assert $state equals 0
}

@test 'whence zpwrScriptCount resolves' {
    run whence zpwrScriptCount
    assert $state equals 0
}

@test 'whence zpwrScriptList resolves' {
    run whence zpwrScriptList
    assert $state equals 0
}

@test 'whence zpwrScripts resolves' {
    run whence zpwrScripts
    assert $state equals 0
}

@test 'whence zpwrSearch resolves' {
    run whence zpwrSearch
    assert $state equals 0
}

@test 'whence zpwrSelfInsert resolves' {
    run whence zpwrSelfInsert
    assert $state equals 0
}

@test 'whence zpwrSshRegain resolves' {
    run whence zpwrSshRegain
    assert $state equals 0
}

@test 'whence zpwrStaleZcompdump resolves' {
    run whence zpwrStaleZcompdump
    assert $state equals 0
}

@test 'whence zpwrStartAutoComplete resolves' {
    run whence zpwrStartAutoComplete
    assert $state equals 0
}

@test 'whence zpwrStartSend resolves' {
    run whence zpwrStartSend
    assert $state equals 0
}

@test 'whence zpwrStartSendFull resolves' {
    run whence zpwrStartSendFull
    assert $state equals 0
}

@test 'whence zpwrStopAutoComplete resolves' {
    run whence zpwrStopAutoComplete
    assert $state equals 0
}

@test 'whence zpwrStopSend resolves' {
    run whence zpwrStopSend
    assert $state equals 0
}

@test 'whence zpwrSudoEditorRecent resolves' {
    run whence zpwrSudoEditorRecent
    assert $state equals 0
}

@test 'whence zpwrSudoEditorRecentCd resolves' {
    run whence zpwrSudoEditorRecentCd
    assert $state equals 0
}

@test 'whence zpwrSudoEmacsRecent resolves' {
    run whence zpwrSudoEmacsRecent
    assert $state equals 0
}

@test 'whence zpwrSudoEmacsRecentCd resolves' {
    run whence zpwrSudoEmacsRecentCd
    assert $state equals 0
}

@test 'whence zpwrSudoVimRecent resolves' {
    run whence zpwrSudoVimRecent
    assert $state equals 0
}

@test 'whence zpwrSudoVimRecentCd resolves' {
    run whence zpwrSudoVimRecentCd
    assert $state equals 0
}

@test 'whence zpwrTabNum resolves' {
    run whence zpwrTabNum
    assert $state equals 0
}

@test 'whence zpwrTabNumCmd resolves' {
    run whence zpwrTabNumCmd
    assert $state equals 0
}

@test 'whence zpwrTest resolves' {
    run whence zpwrTest
    assert $state equals 0
}

@test 'whence zpwrTestAll resolves' {
    run whence zpwrTestAll
    assert $state equals 0
}

@test 'whence zpwrTimer resolves' {
    run whence zpwrTimer
    assert $state equals 0
}

@test 'whence zpwrTmux_capture_paner resolves' {
    run whence zpwrTmux_capture_paner
    assert $state equals 0
}

@test 'whence zpwrTmux_pane_words resolves' {
    run whence zpwrTmux_pane_words
    assert $state equals 0
}

@test 'whence zpwrTorip resolves' {
    run whence zpwrTorip
    assert $state equals 0
}

@test 'whence zpwrToriprenew resolves' {
    run whence zpwrToriprenew
    assert $state equals 0
}

@test 'whence zpwrTotalLines resolves' {
    run whence zpwrTotalLines
    assert $state equals 0
}

@test 'whence zpwrTutsUpdate resolves' {
    run whence zpwrTutsUpdate
    assert $state equals 0
}

@test 'whence zpwrUncompile resolves' {
    run whence zpwrUncompile
    assert $state equals 0
}

@test 'whence zpwrUninstall resolves' {
    run whence zpwrUninstall
    assert $state equals 0
}

@test 'whence zpwrUnlinkConf resolves' {
    run whence zpwrUnlinkConf
    assert $state equals 0
}

@test 'whence zpwrUp8widget resolves' {
    run whence zpwrUp8widget
    assert $state equals 0
}

@test 'whence zpwrUpdate resolves' {
    run whence zpwrUpdate
    assert $state equals 0
}

@test 'whence zpwrUpdateAllGitDirs resolves' {
    run whence zpwrUpdateAllGitDirs
    assert $state equals 0
}

@test 'whence zpwrUpdateDeps resolves' {
    run whence zpwrUpdateDeps
    assert $state equals 0
}

@test 'whence zpwrUpdateDepsClean resolves' {
    run whence zpwrUpdateDepsClean
    assert $state equals 0
}

@test 'whence zpwrUpdater resolves' {
    run whence zpwrUpdater
    assert $state equals 0
}

@test 'whence zpwrUpload resolves' {
    run whence zpwrUpload
    assert $state equals 0
}

@test 'whence zpwrUrlSafe resolves' {
    run whence zpwrUrlSafe
    assert $state equals 0
}

@test 'whence zpwrVerbsEditNoZLE resolves' {
    run whence zpwrVerbsEditNoZLE
    assert $state equals 0
}

@test 'whence zpwrVerbsFZF resolves' {
    run whence zpwrVerbsFZF
    assert $state equals 0
}

@test 'whence zpwrVerbsNoZLE resolves' {
    run whence zpwrVerbsNoZLE
    assert $state equals 0
}

@test 'whence zpwrVerbsWidget resolves' {
    run whence zpwrVerbsWidget
    assert $state equals 0
}

@test 'whence zpwrVerbsWidgetAccept resolves' {
    run whence zpwrVerbsWidgetAccept
    assert $state equals 0
}

@test 'whence zpwrVimAll resolves' {
    run whence zpwrVimAll
    assert $state equals 0
}

@test 'whence zpwrVimAllEdit resolves' {
    run whence zpwrVimAllEdit
    assert $state equals 0
}

@test 'whence zpwrVimAllWidget resolves' {
    run whence zpwrVimAllWidget
    assert $state equals 0
}

@test 'whence zpwrVimAllWidgetAccept resolves' {
    run whence zpwrVimAllWidgetAccept
    assert $state equals 0
}

@test 'whence zpwrVimAutoload resolves' {
    run whence zpwrVimAutoload
    assert $state equals 0
}

@test 'whence zpwrVimEmacsConfig resolves' {
    run whence zpwrVimEmacsConfig
    assert $state equals 0
}

@test 'whence zpwrVimFzf resolves' {
    run whence zpwrVimFzf
    assert $state equals 0
}

@test 'whence zpwrVimFzfFilesearchVerb resolves' {
    run whence zpwrVimFzfFilesearchVerb
    assert $state equals 0
}

@test 'whence zpwrVimFzfFilesearchVerbEdit resolves' {
    run whence zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'whence zpwrVimFzfFilesearchWidgetAccept resolves' {
    run whence zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'whence zpwrVimFzfSudo resolves' {
    run whence zpwrVimFzfSudo
    assert $state equals 0
}

@test 'whence zpwrVimFzfWordsearchVerb resolves' {
    run whence zpwrVimFzfWordsearchVerb
    assert $state equals 0
}

@test 'whence zpwrVimFzfWordsearchVerbEdit resolves' {
    run whence zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'whence zpwrVimPluginCount resolves' {
    run whence zpwrVimPluginCount
    assert $state equals 0
}

@test 'whence zpwrVimPluginList resolves' {
    run whence zpwrVimPluginList
    assert $state equals 0
}

@test 'whence zpwrVimRecent resolves' {
    run whence zpwrVimRecent
    assert $state equals 0
}

@test 'whence zpwrVimRecentCd resolves' {
    run whence zpwrVimRecentCd
    assert $state equals 0
}

@test 'whence zpwrVimScriptEdit resolves' {
    run whence zpwrVimScriptEdit
    assert $state equals 0
}

@test 'whence zpwrVimScripts resolves' {
    run whence zpwrVimScripts
    assert $state equals 0
}

@test 'whence zpwrVimZpwrCtags resolves' {
    run whence zpwrVimZpwrCtags
    assert $state equals 0
}

@test 'whence zpwrVimZpwrGtags resolves' {
    run whence zpwrVimZpwrGtags
    assert $state equals 0
}

@test 'whence zpwrVimZpwrGtagsEdit resolves' {
    run whence zpwrVimZpwrGtagsEdit
    assert $state equals 0
}

@test 'whence zpwrZcompdump resolves' {
    run whence zpwrZcompdump
    assert $state equals 0
}

@test 'whence zpwrZFZF resolves' {
    run whence zpwrZFZF
    assert $state equals 0
}

@test 'whence zpwrZinitUpdates resolves' {
    run whence zpwrZinitUpdates
    assert $state equals 0
}

@test 'whence zpwrZshPluginCount resolves' {
    run whence zpwrZshPluginCount
    assert $state equals 0
}

@test 'whence zpwrZshPluginList resolves' {
    run whence zpwrZshPluginList
    assert $state equals 0
}

@test 'whence zpwrZshrcSearch resolves' {
    run whence zpwrZshrcSearch
    assert $state equals 0
}

@test 'whence zpwrZstyle resolves' {
    run whence zpwrZstyle
    assert $state equals 0
}

@test 'whence zpz resolves' {
    run whence zpz
    assert $state equals 0
}

@test 'whence zr resolves' {
    run whence zr
    assert $state equals 0
}

@test 'whence zs resolves' {
    run whence zs
    assert $state equals 0
}

@test 'whence zsm resolves' {
    run whence zsm
    assert $state equals 0
}

@test 'whence zt resolves' {
    run whence zt
    assert $state equals 0
}

@test 'whence ztl resolves' {
    run whence ztl
    assert $state equals 0
}

@test 'whence ztm resolves' {
    run whence ztm
    assert $state equals 0
}

@test 'whence zua resolves' {
    run whence zua
    assert $state equals 0
}
