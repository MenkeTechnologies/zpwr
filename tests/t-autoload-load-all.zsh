#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test autoload loading of all autoload/common functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'autoload a loads' {
    run autoload +X a
    assert $state equals 0
}

@test 'autoload apz loads' {
    run autoload +X apz
    assert $state equals 0
}

@test 'autoload asg loads' {
    run autoload +X asg
    assert $state equals 0
}

@test 'autoload b loads' {
    run autoload +X b
    assert $state equals 0
}

@test 'autoload c loads' {
    run autoload +X c
    assert $state equals 0
}

@test 'autoload cca loads' {
    run autoload +X cca
    assert $state equals 0
}

@test 'autoload cd loads' {
    run autoload +X cd
    assert $state equals 0
}

@test 'autoload ce loads' {
    run autoload +X ce
    assert $state equals 0
}

@test 'autoload cg loads' {
    run autoload +X cg
    assert $state equals 0
}

@test 'autoload cgh loads' {
    run autoload +X cgh
    assert $state equals 0
}

@test 'autoload color2 loads' {
    run autoload +X color2
    assert $state equals 0
}

@test 'autoload cv loads' {
    run autoload +X cv
    assert $state equals 0
}

@test 'autoload d loads' {
    run autoload +X d
    assert $state equals 0
}

@test 'autoload dbz loads' {
    run autoload +X dbz
    assert $state equals 0
}

@test 'autoload de loads' {
    run autoload +X de
    assert $state equals 0
}

@test 'autoload digs loads' {
    run autoload +X digs
    assert $state equals 0
}

@test 'autoload dl loads' {
    run autoload +X dl
    assert $state equals 0
}

@test 'autoload docu loads' {
    run autoload +X docu
    assert $state equals 0
}

@test 'autoload e loads' {
    run autoload +X e
    assert $state equals 0
}

@test 'autoload eb loads' {
    run autoload +X eb
    assert $state equals 0
}

@test 'autoload em loads' {
    run autoload +X em
    assert $state equals 0
}

@test 'autoload emm loads' {
    run autoload +X emm
    assert $state equals 0
}

@test 'autoload f loads' {
    run autoload +X f
    assert $state equals 0
}

@test 'autoload ff loads' {
    run autoload +X ff
    assert $state equals 0
}

@test 'autoload fff loads' {
    run autoload +X fff
    assert $state equals 0
}

@test 'autoload fm loads' {
    run autoload +X fm
    assert $state equals 0
}

@test 'autoload fp loads' {
    run autoload +X fp
    assert $state equals 0
}

@test 'autoload gcl loads' {
    run autoload +X gcl
    assert $state equals 0
}

@test 'autoload ge loads' {
    run autoload +X ge
    assert $state equals 0
}

@test 'autoload gil loads' {
    run autoload +X gil
    assert $state equals 0
}

@test 'autoload gsdc loads' {
    run autoload +X gsdc
    assert $state equals 0
}

@test 'autoload gse loads' {
    run autoload +X gse
    assert $state equals 0
}

@test 'autoload h loads' {
    run autoload +X h
    assert $state equals 0
}

@test 'autoload hc loads' {
    run autoload +X hc
    assert $state equals 0
}

@test 'autoload hd loads' {
    run autoload +X hd
    assert $state equals 0
}

@test 'autoload ig loads' {
    run autoload +X ig
    assert $state equals 0
}

@test 'autoload ino loads' {
    run autoload +X ino
    assert $state equals 0
}

@test 'autoload j loads' {
    run autoload +X j
    assert $state equals 0
}

@test 'autoload jd loads' {
    run autoload +X jd
    assert $state equals 0
}

@test 'autoload kr loads' {
    run autoload +X kr
    assert $state equals 0
}

@test 'autoload lcm loads' {
    run autoload +X lcm
    assert $state equals 0
}

@test 'autoload mg loads' {
    run autoload +X mg
    assert $state equals 0
}

@test 'autoload nz loads' {
    run autoload +X nz
    assert $state equals 0
}

@test 'autoload o loads' {
    run autoload +X o
    assert $state equals 0
}

@test 'autoload p loads' {
    run autoload +X p
    assert $state equals 0
}

@test 'autoload pg loads' {
    run autoload +X pg
    assert $state equals 0
}

@test 'autoload post loads' {
    run autoload +X post
    assert $state equals 0
}

@test 'autoload pre loads' {
    run autoload +X pre
    assert $state equals 0
}

@test 'autoload r loads' {
    run autoload +X r
    assert $state equals 0
}

@test 'autoload return2 loads' {
    run autoload +X return2
    assert $state equals 0
}

@test 'autoload rm loads' {
    run autoload +X rm
    assert $state equals 0
}

@test 'autoload sub loads' {
    run autoload +X sub
    assert $state equals 0
}

@test 'autoload suc loads' {
    run autoload +X suc
    assert $state equals 0
}

@test 'autoload t loads' {
    run autoload +X t
    assert $state equals 0
}

@test 'autoload tac loads' {
    run autoload +X tac
    assert $state equals 0
}

@test 'autoload tma loads' {
    run autoload +X tma
    assert $state equals 0
}

@test 'autoload to loads' {
    run autoload +X to
    assert $state equals 0
}

@test 'autoload ue loads' {
    run autoload +X ue
    assert $state equals 0
}

@test 'autoload va loads' {
    run autoload +X va
    assert $state equals 0
}

@test 'autoload vb loads' {
    run autoload +X vb
    assert $state equals 0
}

@test 'autoload vl loads' {
    run autoload +X vl
    assert $state equals 0
}

@test 'autoload we loads' {
    run autoload +X we
    assert $state equals 0
}

@test 'autoload wg loads' {
    run autoload +X wg
    assert $state equals 0
}

@test 'autoload ww loads' {
    run autoload +X ww
    assert $state equals 0
}

@test 'autoload www loads' {
    run autoload +X www
    assert $state equals 0
}

@test 'autoload xx loads' {
    run autoload +X xx
    assert $state equals 0
}

@test 'autoload z loads' {
    run autoload +X z
    assert $state equals 0
}

@test 'autoload zal loads' {
    run autoload +X zal
    assert $state equals 0
}

@test 'autoload zalc loads' {
    run autoload +X zalc
    assert $state equals 0
}

@test 'autoload zald loads' {
    run autoload +X zald
    assert $state equals 0
}

@test 'autoload zalf loads' {
    run autoload +X zalf
    assert $state equals 0
}

@test 'autoload zall loads' {
    run autoload +X zall
    assert $state equals 0
}

@test 'autoload zalo loads' {
    run autoload +X zalo
    assert $state equals 0
}

@test 'autoload zals loads' {
    run autoload +X zals
    assert $state equals 0
}

@test 'autoload zalu loads' {
    run autoload +X zalu
    assert $state equals 0
}

@test 'autoload zarg loads' {
    run autoload +X zarg
    assert $state equals 0
}

@test 'autoload zco loads' {
    run autoload +X zco
    assert $state equals 0
}

@test 'autoload zd loads' {
    run autoload +X zd
    assert $state equals 0
}

@test 'autoload ze loads' {
    run autoload +X ze
    assert $state equals 0
}

@test 'autoload zg loads' {
    run autoload +X zg
    assert $state equals 0
}

@test 'autoload zh loads' {
    run autoload +X zh
    assert $state equals 0
}

@test 'autoload zhb loads' {
    run autoload +X zhb
    assert $state equals 0
}

@test 'autoload zhc loads' {
    run autoload +X zhc
    assert $state equals 0
}

@test 'autoload zhp loads' {
    run autoload +X zhp
    assert $state equals 0
}

@test 'autoload zhs loads' {
    run autoload +X zhs
    assert $state equals 0
}

@test 'autoload zil loads' {
    run autoload +X zil
    assert $state equals 0
}

@test 'autoload zl loads' {
    run autoload +X zl
    assert $state equals 0
}

@test 'autoload zlc loads' {
    run autoload +X zlc
    assert $state equals 0
}

@test 'autoload zli loads' {
    run autoload +X zli
    assert $state equals 0
}

@test 'autoload zlr loads' {
    run autoload +X zlr
    assert $state equals 0
}

@test 'autoload zlt loads' {
    run autoload +X zlt
    assert $state equals 0
}

@test 'autoload zm loads' {
    run autoload +X zm
    assert $state equals 0
}

@test 'autoload zpl loads' {
    run autoload +X zpl
    assert $state equals 0
}

@test 'autoload zpwr loads' {
    run autoload +X zpwr
    assert $state equals 0
}

@test 'autoload zpwr256ColorTest loads' {
    run autoload +X zpwr256ColorTest
    assert $state equals 0
}

@test 'autoload zpwrAbout loads' {
    run autoload +X zpwrAbout
    assert $state equals 0
}

@test 'autoload zpwrAcceptLine loads' {
    run autoload +X zpwrAcceptLine
    assert $state equals 0
}

@test 'autoload zpwrAddOMZAttrib loads' {
    run autoload +X zpwrAddOMZAttrib
    assert $state equals 0
}

@test 'autoload zpwrAgIntoFzf loads' {
    run autoload +X zpwrAgIntoFzf
    assert $state equals 0
}

@test 'autoload zpwrAlacritty loads' {
    run autoload +X zpwrAlacritty
    assert $state equals 0
}

@test 'autoload zpwrAllRemotes loads' {
    run autoload +X zpwrAllRemotes
    assert $state equals 0
}

@test 'autoload zpwrAllUpdates loads' {
    run autoload +X zpwrAllUpdates
    assert $state equals 0
}

@test 'autoload zpwrAlternateQuotes loads' {
    run autoload +X zpwrAlternateQuotes
    assert $state equals 0
}

@test 'autoload zpwrAnimate loads' {
    run autoload +X zpwrAnimate
    assert $state equals 0
}

@test 'autoload zpwrArrayToJson loads' {
    run autoload +X zpwrArrayToJson
    assert $state equals 0
}

@test 'autoload zpwrAsVar loads' {
    run autoload +X zpwrAsVar
    assert $state equals 0
}

@test 'autoload zpwrAutoloadCount loads' {
    run autoload +X zpwrAutoloadCount
    assert $state equals 0
}

@test 'autoload zpwrAutoloadList loads' {
    run autoload +X zpwrAutoloadList
    assert $state equals 0
}

@test 'autoload zpwrBackup loads' {
    run autoload +X zpwrBackup
    assert $state equals 0
}

@test 'autoload zpwrBackupHistfile loads' {
    run autoload +X zpwrBackupHistfile
    assert $state equals 0
}

@test 'autoload zpwrBannerCounts loads' {
    run autoload +X zpwrBannerCounts
    assert $state equals 0
}

@test 'autoload zpwrBannerLolcat loads' {
    run autoload +X zpwrBannerLolcat
    assert $state equals 0
}

@test 'autoload zpwrBindAliasesLate loads' {
    run autoload +X zpwrBindAliasesLate
    assert $state equals 0
}

@test 'autoload zpwrBindAliasesZshLate loads' {
    run autoload +X zpwrBindAliasesZshLate
    assert $state equals 0
}

@test 'autoload zpwrBindDirs loads' {
    run autoload +X zpwrBindDirs
    assert $state equals 0
}

@test 'autoload zpwrBindFinal loads' {
    run autoload +X zpwrBindFinal
    assert $state equals 0
}

@test 'autoload zpwrBindForGit loads' {
    run autoload +X zpwrBindForGit
    assert $state equals 0
}

@test 'autoload zpwrBindFZFLate loads' {
    run autoload +X zpwrBindFZFLate
    assert $state equals 0
}

@test 'autoload zpwrBindHistorySubstring loads' {
    run autoload +X zpwrBindHistorySubstring
    assert $state equals 0
}

@test 'autoload zpwrBindInterceptSurround loads' {
    run autoload +X zpwrBindInterceptSurround
    assert $state equals 0
}

@test 'autoload zpwrBindOverrideAutoComplete loads' {
    run autoload +X zpwrBindOverrideAutoComplete
    assert $state equals 0
}

@test 'autoload zpwrBindOverrideOMZ loads' {
    run autoload +X zpwrBindOverrideOMZ
    assert $state equals 0
}

@test 'autoload zpwrBindOverrideOMZCompdefs loads' {
    run autoload +X zpwrBindOverrideOMZCompdefs
    assert $state equals 0
}

@test 'autoload zpwrBindOverrideZLE loads' {
    run autoload +X zpwrBindOverrideZLE
    assert $state equals 0
}

@test 'autoload zpwrBindPenultimate loads' {
    run autoload +X zpwrBindPenultimate
    assert $state equals 0
}

@test 'autoload zpwrBindPowerline loads' {
    run autoload +X zpwrBindPowerline
    assert $state equals 0
}

@test 'autoload zpwrBindPowerlineTmux loads' {
    run autoload +X zpwrBindPowerlineTmux
    assert $state equals 0
}

@test 'autoload zpwrBindPrecmd loads' {
    run autoload +X zpwrBindPrecmd
    assert $state equals 0
}

@test 'autoload zpwrBindPreexecChpwd loads' {
    run autoload +X zpwrBindPreexecChpwd
    assert $state equals 0
}

@test 'autoload zpwrBindVerbs loads' {
    run autoload +X zpwrBindVerbs
    assert $state equals 0
}

@test 'autoload zpwrBindZdharma loads' {
    run autoload +X zpwrBindZdharma
    assert $state equals 0
}

@test 'autoload zpwrBindZdharmaPost loads' {
    run autoload +X zpwrBindZdharmaPost
    assert $state equals 0
}

@test 'autoload zpwrBindZstyle loads' {
    run autoload +X zpwrBindZstyle
    assert $state equals 0
}

@test 'autoload zpwrBufferXtrace loads' {
    run autoload +X zpwrBufferXtrace
    assert $state equals 0
}

@test 'autoload zpwrCat loads' {
    run autoload +X zpwrCat
    assert $state equals 0
}

@test 'autoload zpwrCatNvimOrVimInfo loads' {
    run autoload +X zpwrCatNvimOrVimInfo
    assert $state equals 0
}

@test 'autoload zpwrCCommon loads' {
    run autoload +X zpwrCCommon
    assert $state equals 0
}

@test 'autoload zpwrCd loads' {
    run autoload +X zpwrCd
    assert $state equals 0
}

@test 'autoload zpwrCdUp loads' {
    run autoload +X zpwrCdUp
    assert $state equals 0
}

@test 'autoload zpwrCdVimFzfFilesearchWidgetAccept loads' {
    run autoload +X zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'autoload zpwrChangeGitAuthorEmail loads' {
    run autoload +X zpwrChangeGitAuthorEmail
    assert $state equals 0
}

@test 'autoload zpwrChangeGitCommitterEmail loads' {
    run autoload +X zpwrChangeGitCommitterEmail
    assert $state equals 0
}

@test 'autoload zpwrChangeGitEmail loads' {
    run autoload +X zpwrChangeGitEmail
    assert $state equals 0
}

@test 'autoload zpwrChangeName loads' {
    run autoload +X zpwrChangeName
    assert $state equals 0
}

@test 'autoload zpwrChangeNameZpwr loads' {
    run autoload +X zpwrChangeNameZpwr
    assert $state equals 0
}

@test 'autoload zpwrChangeQuotes loads' {
    run autoload +X zpwrChangeQuotes
    assert $state equals 0
}

@test 'autoload zpwrChpwd loads' {
    run autoload +X zpwrChpwd
    assert $state equals 0
}

@test 'autoload zpwrCleanAll loads' {
    run autoload +X zpwrCleanAll
    assert $state equals 0
}

@test 'autoload zpwrCleanCache loads' {
    run autoload +X zpwrCleanCache
    assert $state equals 0
}

@test 'autoload zpwrCleanCompCache loads' {
    run autoload +X zpwrCleanCompCache
    assert $state equals 0
}

@test 'autoload zpwrCleanDirs loads' {
    run autoload +X zpwrCleanDirs
    assert $state equals 0
}

@test 'autoload zpwrCleanDirsAndTemp loads' {
    run autoload +X zpwrCleanDirsAndTemp
    assert $state equals 0
}

@test 'autoload zpwrCleanGitRepoCache loads' {
    run autoload +X zpwrCleanGitRepoCache
    assert $state equals 0
}

@test 'autoload zpwrCleanGitRepoCleanCache loads' {
    run autoload +X zpwrCleanGitRepoCleanCache
    assert $state equals 0
}

@test 'autoload zpwrCleanGitRepoDirtyCache loads' {
    run autoload +X zpwrCleanGitRepoDirtyCache
    assert $state equals 0
}

@test 'autoload zpwrCleanLog loads' {
    run autoload +X zpwrCleanLog
    assert $state equals 0
}

@test 'autoload zpwrCleanRefreshCountsTestUpdate loads' {
    run autoload +X zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
}

@test 'autoload zpwrCleanRefreshUpdate loads' {
    run autoload +X zpwrCleanRefreshUpdate
    assert $state equals 0
}

@test 'autoload zpwrCleanTemp loads' {
    run autoload +X zpwrCleanTemp
    assert $state equals 0
}

@test 'autoload zpwrCleanUpdateDeps loads' {
    run autoload +X zpwrCleanUpdateDeps
    assert $state equals 0
}

@test 'autoload zpwrClearGitCommit loads' {
    run autoload +X zpwrClearGitCommit
    assert $state equals 0
}

@test 'autoload zpwrClearGitFile loads' {
    run autoload +X zpwrClearGitFile
    assert $state equals 0
}

@test 'autoload zpwrClearLine loads' {
    run autoload +X zpwrClearLine
    assert $state equals 0
}

@test 'autoload zpwrClearListFZF loads' {
    run autoload +X zpwrClearListFZF
    assert $state equals 0
}

@test 'autoload zpwrClipboard loads' {
    run autoload +X zpwrClipboard
    assert $state equals 0
}

@test 'autoload zpwrCloneToForked loads' {
    run autoload +X zpwrCloneToForked
    assert $state equals 0
}

@test 'autoload zpwrColorTest loads' {
    run autoload +X zpwrColorTest
    assert $state equals 0
}

@test 'autoload zpwrCommits loads' {
    run autoload +X zpwrCommits
    assert $state equals 0
}

@test 'autoload zpwrConfirm loads' {
    run autoload +X zpwrConfirm
    assert $state equals 0
}

@test 'autoload zpwrContribCount loads' {
    run autoload +X zpwrContribCount
    assert $state equals 0
}

@test 'autoload zpwrContribCountDirs loads' {
    run autoload +X zpwrContribCountDirs
    assert $state equals 0
}

@test 'autoload zpwrContribCountLines loads' {
    run autoload +X zpwrContribCountLines
    assert $state equals 0
}

@test 'autoload zpwrCreateAliasCache loads' {
    run autoload +X zpwrCreateAliasCache
    assert $state equals 0
}

@test 'autoload zpwrCreategif loads' {
    run autoload +X zpwrCreategif
    assert $state equals 0
}

@test 'autoload zpwrDedupPaths loads' {
    run autoload +X zpwrDedupPaths
    assert $state equals 0
}

@test 'autoload zpwrDeleteLastWord loads' {
    run autoload +X zpwrDeleteLastWord
    assert $state equals 0
}

@test 'autoload zpwrDetachall loads' {
    run autoload +X zpwrDetachall
    assert $state equals 0
}

@test 'autoload zpwrDfimage loads' {
    run autoload +X zpwrDfimage
    assert $state equals 0
}

@test 'autoload zpwrDockerWipe loads' {
    run autoload +X zpwrDockerWipe
    assert $state equals 0
}

@test 'autoload zpwrEditExercism loads' {
    run autoload +X zpwrEditExercism
    assert $state equals 0
}

@test 'autoload zpwrEditor loads' {
    run autoload +X zpwrEditor
    assert $state equals 0
}

@test 'autoload zpwrEditorRecent loads' {
    run autoload +X zpwrEditorRecent
    assert $state equals 0
}

@test 'autoload zpwrEditorRecentCd loads' {
    run autoload +X zpwrEditorRecentCd
    assert $state equals 0
}

@test 'autoload zpwrEditTag loads' {
    run autoload +X zpwrEditTag
    assert $state equals 0
}

@test 'autoload zpwrEmacsAll loads' {
    run autoload +X zpwrEmacsAll
    assert $state equals 0
}

@test 'autoload zpwrEmacsAllEdit loads' {
    run autoload +X zpwrEmacsAllEdit
    assert $state equals 0
}

@test 'autoload zpwrEmacsAllServer loads' {
    run autoload +X zpwrEmacsAllServer
    assert $state equals 0
}

@test 'autoload zpwrEmacsAutoload loads' {
    run autoload +X zpwrEmacsAutoload
    assert $state equals 0
}

@test 'autoload zpwrEmacsEmacsConfig loads' {
    run autoload +X zpwrEmacsEmacsConfig
    assert $state equals 0
}

@test 'autoload zpwrEmacsFzf loads' {
    run autoload +X zpwrEmacsFzf
    assert $state equals 0
}

@test 'autoload zpwrEmacsFzfFilesearchVerb loads' {
    run autoload +X zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
}

@test 'autoload zpwrEmacsFzfFilesearchVerbEdit loads' {
    run autoload +X zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrEmacsFzfWordsearchVerb loads' {
    run autoload +X zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
}

@test 'autoload zpwrEmacsFzfWordsearchVerbEdit loads' {
    run autoload +X zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrEmacsPluginCount loads' {
    run autoload +X zpwrEmacsPluginCount
    assert $state equals 0
}

@test 'autoload zpwrEmacsPluginList loads' {
    run autoload +X zpwrEmacsPluginList
    assert $state equals 0
}

@test 'autoload zpwrEmacsRecent loads' {
    run autoload +X zpwrEmacsRecent
    assert $state equals 0
}

@test 'autoload zpwrEmacsRecentCd loads' {
    run autoload +X zpwrEmacsRecentCd
    assert $state equals 0
}

@test 'autoload zpwrEmacsScriptEdit loads' {
    run autoload +X zpwrEmacsScriptEdit
    assert $state equals 0
}

@test 'autoload zpwrEmacsScripts loads' {
    run autoload +X zpwrEmacsScripts
    assert $state equals 0
}

@test 'autoload zpwrEmacsZpwr loads' {
    run autoload +X zpwrEmacsZpwr
    assert $state equals 0
}

@test 'autoload zpwrEmacsZpwrCtags loads' {
    run autoload +X zpwrEmacsZpwrCtags
    assert $state equals 0
}

@test 'autoload zpwrEmacsZpwrGtags loads' {
    run autoload +X zpwrEmacsZpwrGtags
    assert $state equals 0
}

@test 'autoload zpwrEmacsZpwrGtagsEdit loads' {
    run autoload +X zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
}

@test 'autoload zpwrEnvCounts loads' {
    run autoload +X zpwrEnvCounts
    assert $state equals 0
}

@test 'autoload zpwrEnvVars loads' {
    run autoload +X zpwrEnvVars
    assert $state equals 0
}

@test 'autoload zpwrEnvVarsAll loads' {
    run autoload +X zpwrEnvVarsAll
    assert $state equals 0
}

@test 'autoload zpwrEOLorNextTabStop loads' {
    run autoload +X zpwrEOLorNextTabStop
    assert $state equals 0
}

@test 'autoload zpwrEvalTester loads' {
    run autoload +X zpwrEvalTester
    assert $state equals 0
}

@test 'autoload zpwrExecGlob loads' {
    run autoload +X zpwrExecGlob
    assert $state equals 0
}

@test 'autoload zpwrExecGlobParallel loads' {
    run autoload +X zpwrExecGlobParallel
    assert $state equals 0
}

@test 'autoload zpwrExecpy loads' {
    run autoload +X zpwrExecpy
    assert $state equals 0
}

@test 'autoload zpwrExercismDownloadAll loads' {
    run autoload +X zpwrExercismDownloadAll
    assert $state equals 0
}

@test 'autoload zpwrExpandAliasAccept loads' {
    run autoload +X zpwrExpandAliasAccept
    assert $state equals 0
}

@test 'autoload zpwrExpandAliases loads' {
    run autoload +X zpwrExpandAliases
    assert $state equals 0
}

@test 'autoload zpwrExpandOrCompleteWithDots loads' {
    run autoload +X zpwrExpandOrCompleteWithDots
    assert $state equals 0
}

@test 'autoload zpwrFasdFList loads' {
    run autoload +X zpwrFasdFList
    assert $state equals 0
}

@test 'autoload zpwrFasdFListVerb loads' {
    run autoload +X zpwrFasdFListVerb
    assert $state equals 0
}

@test 'autoload zpwrFasdFZF loads' {
    run autoload +X zpwrFasdFZF
    assert $state equals 0
}

@test 'autoload zpwrFigletfonts loads' {
    run autoload +X zpwrFigletfonts
    assert $state equals 0
}

@test 'autoload zpwrFindFzfEditNoZLE loads' {
    run autoload +X zpwrFindFzfEditNoZLE
    assert $state equals 0
}

@test 'autoload zpwrFindFzfEditNoZLEC loads' {
    run autoload +X zpwrFindFzfEditNoZLEC
    assert $state equals 0
}

@test 'autoload zpwrFindFzfEditNoZLEEmacs loads' {
    run autoload +X zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'autoload zpwrFindFzfEditNoZLEVim loads' {
    run autoload +X zpwrFindFzfEditNoZLEVim
    assert $state equals 0
}

@test 'autoload zpwrFindFzfNoZLE loads' {
    run autoload +X zpwrFindFzfNoZLE
    assert $state equals 0
}

@test 'autoload zpwrFindFzfNoZLEC loads' {
    run autoload +X zpwrFindFzfNoZLEC
    assert $state equals 0
}

@test 'autoload zpwrFindFzfNoZLEEmacs loads' {
    run autoload +X zpwrFindFzfNoZLEEmacs
    assert $state equals 0
}

@test 'autoload zpwrFindFzfNoZLEVim loads' {
    run autoload +X zpwrFindFzfNoZLEVim
    assert $state equals 0
}

@test 'autoload zpwrForAllGitDirs loads' {
    run autoload +X zpwrForAllGitDirs
    assert $state equals 0
}

@test 'autoload zpwrForAllGitDirsClean loads' {
    run autoload +X zpwrForAllGitDirsClean
    assert $state equals 0
}

@test 'autoload zpwrForAllGitDirsDirty loads' {
    run autoload +X zpwrForAllGitDirsDirty
    assert $state equals 0
}

@test 'autoload zpwrForAllGitDirsRefreshClean loads' {
    run autoload +X zpwrForAllGitDirsRefreshClean
    assert $state equals 0
}

@test 'autoload zpwrForAllGitDirsRefreshDirty loads' {
    run autoload +X zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
}

@test 'autoload zpwrFordir loads' {
    run autoload +X zpwrFordir
    assert $state equals 0
}

@test 'autoload zpwrFordirUpdate loads' {
    run autoload +X zpwrFordirUpdate
    assert $state equals 0
}

@test 'autoload zpwrFzfAllKeybind loads' {
    run autoload +X zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'autoload zpwrFzfCommits loads' {
    run autoload +X zpwrFzfCommits
    assert $state equals 0
}

@test 'autoload zpwrFzfDirSearch loads' {
    run autoload +X zpwrFzfDirSearch
    assert $state equals 0
}

@test 'autoload zpwrFzfDirsearchVerb loads' {
    run autoload +X zpwrFzfDirsearchVerb
    assert $state equals 0
}

@test 'autoload zpwrFzfEnv loads' {
    run autoload +X zpwrFzfEnv
    assert $state equals 0
}

@test 'autoload zpwrFzfEnvVerbAccept loads' {
    run autoload +X zpwrFzfEnvVerbAccept
    assert $state equals 0
}

@test 'autoload zpwrFzfEnvVerbEdit loads' {
    run autoload +X zpwrFzfEnvVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrFzfFileSearch loads' {
    run autoload +X zpwrFzfFileSearch
    assert $state equals 0
}

@test 'autoload zpwrFzfFilesearchVerb loads' {
    run autoload +X zpwrFzfFilesearchVerb
    assert $state equals 0
}

@test 'autoload zpwrFzfFilesearchVerbEdit loads' {
    run autoload +X zpwrFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrFzfSurround loads' {
    run autoload +X zpwrFzfSurround
    assert $state equals 0
}

@test 'autoload zpwrFzfVimKeybind loads' {
    run autoload +X zpwrFzfVimKeybind
    assert $state equals 0
}

@test 'autoload zpwrFzfWordsearchVerb loads' {
    run autoload +X zpwrFzfWordsearchVerb
    assert $state equals 0
}

@test 'autoload zpwrFzfWordsearchVerbEdit loads' {
    run autoload +X zpwrFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrFzfZList loads' {
    run autoload +X zpwrFzfZList
    assert $state equals 0
}

@test 'autoload zpwrFzfZListVerb loads' {
    run autoload +X zpwrFzfZListVerb
    assert $state equals 0
}

@test 'autoload zpwrFzfZshKeybind loads' {
    run autoload +X zpwrFzfZshKeybind
    assert $state equals 0
}

@test 'autoload zpwrFzvim loads' {
    run autoload +X zpwrFzvim
    assert $state equals 0
}

@test 'autoload zpwrFzvimAll loads' {
    run autoload +X zpwrFzvimAll
    assert $state equals 0
}

@test 'autoload zpwrFzvimScript loads' {
    run autoload +X zpwrFzvimScript
    assert $state equals 0
}

@test 'autoload zpwrGetFound loads' {
    run autoload +X zpwrGetFound
    assert $state equals 0
}

@test 'autoload zpwrGetGHDelURL loads' {
    run autoload +X zpwrGetGHDelURL
    assert $state equals 0
}

@test 'autoload zpwrGetGtags loads' {
    run autoload +X zpwrGetGtags
    assert $state equals 0
}

@test 'autoload zpwrGetGtagsEdit loads' {
    run autoload +X zpwrGetGtagsEdit
    assert $state equals 0
}

@test 'autoload zpwrGetLocate loads' {
    run autoload +X zpwrGetLocate
    assert $state equals 0
}

@test 'autoload zpwrGetrc loads' {
    run autoload +X zpwrGetrc
    assert $state equals 0
}

@test 'autoload zpwrGetrcdev loads' {
    run autoload +X zpwrGetrcdev
    assert $state equals 0
}

@test 'autoload zpwrGetrcWidget loads' {
    run autoload +X zpwrGetrcWidget
    assert $state equals 0
}

@test 'autoload zpwrgh loads' {
    run autoload +X zpwrgh
    assert $state equals 0
}

@test 'autoload zpwrGitCheckoutRebasePush loads' {
    run autoload +X zpwrGitCheckoutRebasePush
    assert $state equals 0
}

@test 'autoload zpwrGitConfig loads' {
    run autoload +X zpwrGitConfig
    assert $state equals 0
}

@test 'autoload zpwrGitIgnores loads' {
    run autoload +X zpwrGitIgnores
    assert $state equals 0
}

@test 'autoload zpwrGitReposFile loads' {
    run autoload +X zpwrGitReposFile
    assert $state equals 0
}

@test 'autoload zpwrGoclean loads' {
    run autoload +X zpwrGoclean
    assert $state equals 0
}

@test 'autoload zpwrGoogle loads' {
    run autoload +X zpwrGoogle
    assert $state equals 0
}

@test 'autoload zpwrGtagsIntoFzf loads' {
    run autoload +X zpwrGtagsIntoFzf
    assert $state equals 0
}

@test 'autoload zpwrHistfile loads' {
    run autoload +X zpwrHistfile
    assert $state equals 0
}

@test 'autoload zpwrHistoryVerbAccept loads' {
    run autoload +X zpwrHistoryVerbAccept
    assert $state equals 0
}

@test 'autoload zpwrHistoryVerbEdit loads' {
    run autoload +X zpwrHistoryVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrInterceptDelete loads' {
    run autoload +X zpwrInterceptDelete
    assert $state equals 0
}

@test 'autoload zpwrInterceptSurround loads' {
    run autoload +X zpwrInterceptSurround
    assert $state equals 0
}

@test 'autoload zpwrIntoFzf loads' {
    run autoload +X zpwrIntoFzf
    assert $state equals 0
}

@test 'autoload zpwrIntoFzfAg loads' {
    run autoload +X zpwrIntoFzfAg
    assert $state equals 0
}

@test 'autoload zpwrJetbrainsWorkspaceEdit loads' {
    run autoload +X zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
}

@test 'autoload zpwrJsonToArray loads' {
    run autoload +X zpwrJsonToArray
    assert $state equals 0
}

@test 'autoload zpwrKeyClear loads' {
    run autoload +X zpwrKeyClear
    assert $state equals 0
}

@test 'autoload zpwrKeySender loads' {
    run autoload +X zpwrKeySender
    assert $state equals 0
}

@test 'autoload zpwrKillLsofVerbAccept loads' {
    run autoload +X zpwrKillLsofVerbAccept
    assert $state equals 0
}

@test 'autoload zpwrKillLsofVerbEdit loads' {
    run autoload +X zpwrKillLsofVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrKillPSVerbAccept loads' {
    run autoload +X zpwrKillPSVerbAccept
    assert $state equals 0
}

@test 'autoload zpwrKillPSVerbEdit loads' {
    run autoload +X zpwrKillPSVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrKillRemote loads' {
    run autoload +X zpwrKillRemote
    assert $state equals 0
}

@test 'autoload zpwrLargestGitFiles loads' {
    run autoload +X zpwrLargestGitFiles
    assert $state equals 0
}

@test 'autoload zpwrLastWordDouble loads' {
    run autoload +X zpwrLastWordDouble
    assert $state equals 0
}

@test 'autoload zpwrLineCount loads' {
    run autoload +X zpwrLineCount
    assert $state equals 0
}

@test 'autoload zpwrLinkConf loads' {
    run autoload +X zpwrLinkConf
    assert $state equals 0
}

@test 'autoload zpwrListFiles loads' {
    run autoload +X zpwrListFiles
    assert $state equals 0
}

@test 'autoload zpwrListNoClear loads' {
    run autoload +X zpwrListNoClear
    assert $state equals 0
}

@test 'autoload zpwrListVerbs loads' {
    run autoload +X zpwrListVerbs
    assert $state equals 0
}

@test 'autoload zpwrListVerbsColor loads' {
    run autoload +X zpwrListVerbsColor
    assert $state equals 0
}

@test 'autoload zpwrLoadJenv loads' {
    run autoload +X zpwrLoadJenv
    assert $state equals 0
}

@test 'autoload zpwrLocateFzf loads' {
    run autoload +X zpwrLocateFzf
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfEdit loads' {
    run autoload +X zpwrLocateFzfEdit
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfEditNoZLE loads' {
    run autoload +X zpwrLocateFzfEditNoZLE
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfEditNoZLEC loads' {
    run autoload +X zpwrLocateFzfEditNoZLEC
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfEditNoZLEEmacs loads' {
    run autoload +X zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfEditNoZLEVim loads' {
    run autoload +X zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfNoZLE loads' {
    run autoload +X zpwrLocateFzfNoZLE
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfNoZLEC loads' {
    run autoload +X zpwrLocateFzfNoZLEC
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfNoZLEEmacs loads' {
    run autoload +X zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
}

@test 'autoload zpwrLocateFzfNoZLEVim loads' {
    run autoload +X zpwrLocateFzfNoZLEVim
    assert $state equals 0
}

@test 'autoload zpwrLoginCount loads' {
    run autoload +X zpwrLoginCount
    assert $state equals 0
}

@test 'autoload zpwrLsoffzf loads' {
    run autoload +X zpwrLsoffzf
    assert $state equals 0
}

@test 'autoload zpwrMagicEnter loads' {
    run autoload +X zpwrMagicEnter
    assert $state equals 0
}

@test 'autoload zpwrModulesFZF loads' {
    run autoload +X zpwrModulesFZF
    assert $state equals 0
}

@test 'autoload zpwrMycurl loads' {
    run autoload +X zpwrMycurl
    assert $state equals 0
}

@test 'autoload zpwrNoPonyBanner loads' {
    run autoload +X zpwrNoPonyBanner
    assert $state equals 0
}

@test 'autoload zpwrNumVerbs loads' {
    run autoload +X zpwrNumVerbs
    assert $state equals 0
}

@test 'autoload zpwrNvimThenRecentf loads' {
    run autoload +X zpwrNvimThenRecentf
    assert $state equals 0
}

@test 'autoload zpwrOmzOverrides loads' {
    run autoload +X zpwrOmzOverrides
    assert $state equals 0
}

@test 'autoload zpwrOpen loads' {
    run autoload +X zpwrOpen
    assert $state equals 0
}

@test 'autoload zpwrOpenExercism loads' {
    run autoload +X zpwrOpenExercism
    assert $state equals 0
}

@test 'autoload zpwrOpenmygh loads' {
    run autoload +X zpwrOpenmygh
    assert $state equals 0
}

@test 'autoload zpwrOptionsFZF loads' {
    run autoload +X zpwrOptionsFZF
    assert $state equals 0
}

@test 'autoload zpwrParseRecentf loads' {
    run autoload +X zpwrParseRecentf
    assert $state equals 0
}

@test 'autoload zpwrPasteToBuffer loads' {
    run autoload +X zpwrPasteToBuffer
    assert $state equals 0
}

@test 'autoload zpwrPasteToStdout loads' {
    run autoload +X zpwrPasteToStdout
    assert $state equals 0
}

@test 'autoload zpwrPirun loads' {
    run autoload +X zpwrPirun
    assert $state equals 0
}

@test 'autoload zpwrPoll loads' {
    run autoload +X zpwrPoll
    assert $state equals 0
}

@test 'autoload zpwrPonyBanner loads' {
    run autoload +X zpwrPonyBanner
    assert $state equals 0
}

@test 'autoload zpwrPrecmd loads' {
    run autoload +X zpwrPrecmd
    assert $state equals 0
}

@test 'autoload zpwrPreexec loads' {
    run autoload +X zpwrPreexec
    assert $state equals 0
}

@test 'autoload zpwrPrintMap loads' {
    run autoload +X zpwrPrintMap
    assert $state equals 0
}

@test 'autoload zpwrPstreemonitor loads' {
    run autoload +X zpwrPstreemonitor
    assert $state equals 0
}

@test 'autoload zpwrPygmentcolors loads' {
    run autoload +X zpwrPygmentcolors
    assert $state equals 0
}

@test 'autoload zpwrRationalizeDot loads' {
    run autoload +X zpwrRationalizeDot
    assert $state equals 0
}

@test 'autoload zpwrRecentfThenNvim loads' {
    run autoload +X zpwrRecentfThenNvim
    assert $state equals 0
}

@test 'autoload zpwrRecompile loads' {
    run autoload +X zpwrRecompile
    assert $state equals 0
}

@test 'autoload zpwrRecompileFiles loads' {
    run autoload +X zpwrRecompileFiles
    assert $state equals 0
}

@test 'autoload zpwrRecompileFpath loads' {
    run autoload +X zpwrRecompileFpath
    assert $state equals 0
}

@test 'autoload zpwrRefreshZwc loads' {
    run autoload +X zpwrRefreshZwc
    assert $state equals 0
}

@test 'autoload zpwrRegenAll loads' {
    run autoload +X zpwrRegenAll
    assert $state equals 0
}

@test 'autoload zpwrRegenAllKeybindingsCache loads' {
    run autoload +X zpwrRegenAllKeybindingsCache
    assert $state equals 0
}

@test 'autoload zpwrRegenConfigLinks loads' {
    run autoload +X zpwrRegenConfigLinks
    assert $state equals 0
}

@test 'autoload zpwrRegenCtags loads' {
    run autoload +X zpwrRegenCtags
    assert $state equals 0
}

@test 'autoload zpwrRegenGtagsCtags loads' {
    run autoload +X zpwrRegenGtagsCtags
    assert $state equals 0
}

@test 'autoload zpwrRegenGtagsPygments loads' {
    run autoload +X zpwrRegenGtagsPygments
    assert $state equals 0
}

@test 'autoload zpwrRegenGtagsType loads' {
    run autoload +X zpwrRegenGtagsType
    assert $state equals 0
}

@test 'autoload zpwrRegenHistory loads' {
    run autoload +X zpwrRegenHistory
    assert $state equals 0
}

@test 'autoload zpwrRegenMost loads' {
    run autoload +X zpwrRegenMost
    assert $state equals 0
}

@test 'autoload zpwrRegenPowerlineLink loads' {
    run autoload +X zpwrRegenPowerlineLink
    assert $state equals 0
}

@test 'autoload zpwrRegenSearchEnv loads' {
    run autoload +X zpwrRegenSearchEnv
    assert $state equals 0
}

@test 'autoload zpwrRegenZshCompCache loads' {
    run autoload +X zpwrRegenZshCompCache
    assert $state equals 0
}

@test 'autoload zpwrRegexp-replace-single loads' {
    run autoload +X zpwrRegexp-replace-single
    assert $state equals 0
}

@test 'autoload zpwrReload loads' {
    run autoload +X zpwrReload
    assert $state equals 0
}

@test 'autoload zpwrRelPath loads' {
    run autoload +X zpwrRelPath
    assert $state equals 0
}

@test 'autoload zpwrRename loads' {
    run autoload +X zpwrRename
    assert $state equals 0
}

@test 'autoload zpwrReplacer loads' {
    run autoload +X zpwrReplacer
    assert $state equals 0
}

@test 'autoload zpwrReset loads' {
    run autoload +X zpwrReset
    assert $state equals 0
}

@test 'autoload zpwrRestoreHistfile loads' {
    run autoload +X zpwrRestoreHistfile
    assert $state equals 0
}

@test 'autoload zpwrRetryZcompdump loads' {
    run autoload +X zpwrRetryZcompdump
    assert $state equals 0
}

@test 'autoload zpwrRevealRecurse loads' {
    run autoload +X zpwrRevealRecurse
    assert $state equals 0
}

@test 'autoload zpwrRunner loads' {
    run autoload +X zpwrRunner
    assert $state equals 0
}

@test 'autoload zpwrScnew loads' {
    run autoload +X zpwrScnew
    assert $state equals 0
}

@test 'autoload zpwrScriptCount loads' {
    run autoload +X zpwrScriptCount
    assert $state equals 0
}

@test 'autoload zpwrScriptList loads' {
    run autoload +X zpwrScriptList
    assert $state equals 0
}

@test 'autoload zpwrScripts loads' {
    run autoload +X zpwrScripts
    assert $state equals 0
}

@test 'autoload zpwrSearch loads' {
    run autoload +X zpwrSearch
    assert $state equals 0
}

@test 'autoload zpwrSelfInsert loads' {
    run autoload +X zpwrSelfInsert
    assert $state equals 0
}

@test 'autoload zpwrSshRegain loads' {
    run autoload +X zpwrSshRegain
    assert $state equals 0
}

@test 'autoload zpwrStaleZcompdump loads' {
    run autoload +X zpwrStaleZcompdump
    assert $state equals 0
}

@test 'autoload zpwrStartAutoComplete loads' {
    run autoload +X zpwrStartAutoComplete
    assert $state equals 0
}

@test 'autoload zpwrStartSend loads' {
    run autoload +X zpwrStartSend
    assert $state equals 0
}

@test 'autoload zpwrStartSendFull loads' {
    run autoload +X zpwrStartSendFull
    assert $state equals 0
}

@test 'autoload zpwrStopAutoComplete loads' {
    run autoload +X zpwrStopAutoComplete
    assert $state equals 0
}

@test 'autoload zpwrStopSend loads' {
    run autoload +X zpwrStopSend
    assert $state equals 0
}

@test 'autoload zpwrSudoEditorRecent loads' {
    run autoload +X zpwrSudoEditorRecent
    assert $state equals 0
}

@test 'autoload zpwrSudoEditorRecentCd loads' {
    run autoload +X zpwrSudoEditorRecentCd
    assert $state equals 0
}

@test 'autoload zpwrSudoEmacsRecent loads' {
    run autoload +X zpwrSudoEmacsRecent
    assert $state equals 0
}

@test 'autoload zpwrSudoEmacsRecentCd loads' {
    run autoload +X zpwrSudoEmacsRecentCd
    assert $state equals 0
}

@test 'autoload zpwrSudoVimRecent loads' {
    run autoload +X zpwrSudoVimRecent
    assert $state equals 0
}

@test 'autoload zpwrSudoVimRecentCd loads' {
    run autoload +X zpwrSudoVimRecentCd
    assert $state equals 0
}

@test 'autoload zpwrTabNum loads' {
    run autoload +X zpwrTabNum
    assert $state equals 0
}

@test 'autoload zpwrTabNumCmd loads' {
    run autoload +X zpwrTabNumCmd
    assert $state equals 0
}

@test 'autoload zpwrTest loads' {
    run autoload +X zpwrTest
    assert $state equals 0
}

@test 'autoload zpwrTestAll loads' {
    run autoload +X zpwrTestAll
    assert $state equals 0
}

@test 'autoload zpwrTimer loads' {
    run autoload +X zpwrTimer
    assert $state equals 0
}

@test 'autoload zpwrTmux_capture_paner loads' {
    run autoload +X zpwrTmux_capture_paner
    assert $state equals 0
}

@test 'autoload zpwrTmux_pane_words loads' {
    run autoload +X zpwrTmux_pane_words
    assert $state equals 0
}

@test 'autoload zpwrTorip loads' {
    run autoload +X zpwrTorip
    assert $state equals 0
}

@test 'autoload zpwrToriprenew loads' {
    run autoload +X zpwrToriprenew
    assert $state equals 0
}

@test 'autoload zpwrTotalLines loads' {
    run autoload +X zpwrTotalLines
    assert $state equals 0
}

@test 'autoload zpwrTutsUpdate loads' {
    run autoload +X zpwrTutsUpdate
    assert $state equals 0
}

@test 'autoload zpwrUncompile loads' {
    run autoload +X zpwrUncompile
    assert $state equals 0
}

@test 'autoload zpwrUninstall loads' {
    run autoload +X zpwrUninstall
    assert $state equals 0
}

@test 'autoload zpwrUnlinkConf loads' {
    run autoload +X zpwrUnlinkConf
    assert $state equals 0
}

@test 'autoload zpwrUp8widget loads' {
    run autoload +X zpwrUp8widget
    assert $state equals 0
}

@test 'autoload zpwrUpdate loads' {
    run autoload +X zpwrUpdate
    assert $state equals 0
}

@test 'autoload zpwrUpdateAllGitDirs loads' {
    run autoload +X zpwrUpdateAllGitDirs
    assert $state equals 0
}

@test 'autoload zpwrUpdateDeps loads' {
    run autoload +X zpwrUpdateDeps
    assert $state equals 0
}

@test 'autoload zpwrUpdateDepsClean loads' {
    run autoload +X zpwrUpdateDepsClean
    assert $state equals 0
}

@test 'autoload zpwrUpdater loads' {
    run autoload +X zpwrUpdater
    assert $state equals 0
}

@test 'autoload zpwrUpload loads' {
    run autoload +X zpwrUpload
    assert $state equals 0
}

@test 'autoload zpwrUrlSafe loads' {
    run autoload +X zpwrUrlSafe
    assert $state equals 0
}

@test 'autoload zpwrVerbsEditNoZLE loads' {
    run autoload +X zpwrVerbsEditNoZLE
    assert $state equals 0
}

@test 'autoload zpwrVerbsFZF loads' {
    run autoload +X zpwrVerbsFZF
    assert $state equals 0
}

@test 'autoload zpwrVerbsNoZLE loads' {
    run autoload +X zpwrVerbsNoZLE
    assert $state equals 0
}

@test 'autoload zpwrVerbsWidget loads' {
    run autoload +X zpwrVerbsWidget
    assert $state equals 0
}

@test 'autoload zpwrVerbsWidgetAccept loads' {
    run autoload +X zpwrVerbsWidgetAccept
    assert $state equals 0
}

@test 'autoload zpwrVimAll loads' {
    run autoload +X zpwrVimAll
    assert $state equals 0
}

@test 'autoload zpwrVimAllEdit loads' {
    run autoload +X zpwrVimAllEdit
    assert $state equals 0
}

@test 'autoload zpwrVimAllWidget loads' {
    run autoload +X zpwrVimAllWidget
    assert $state equals 0
}

@test 'autoload zpwrVimAllWidgetAccept loads' {
    run autoload +X zpwrVimAllWidgetAccept
    assert $state equals 0
}

@test 'autoload zpwrVimAutoload loads' {
    run autoload +X zpwrVimAutoload
    assert $state equals 0
}

@test 'autoload zpwrVimEmacsConfig loads' {
    run autoload +X zpwrVimEmacsConfig
    assert $state equals 0
}

@test 'autoload zpwrVimFzf loads' {
    run autoload +X zpwrVimFzf
    assert $state equals 0
}

@test 'autoload zpwrVimFzfFilesearchVerb loads' {
    run autoload +X zpwrVimFzfFilesearchVerb
    assert $state equals 0
}

@test 'autoload zpwrVimFzfFilesearchVerbEdit loads' {
    run autoload +X zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrVimFzfFilesearchWidgetAccept loads' {
    run autoload +X zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
}

@test 'autoload zpwrVimFzfSudo loads' {
    run autoload +X zpwrVimFzfSudo
    assert $state equals 0
}

@test 'autoload zpwrVimFzfWordsearchVerb loads' {
    run autoload +X zpwrVimFzfWordsearchVerb
    assert $state equals 0
}

@test 'autoload zpwrVimFzfWordsearchVerbEdit loads' {
    run autoload +X zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
}

@test 'autoload zpwrVimPluginCount loads' {
    run autoload +X zpwrVimPluginCount
    assert $state equals 0
}

@test 'autoload zpwrVimPluginList loads' {
    run autoload +X zpwrVimPluginList
    assert $state equals 0
}

@test 'autoload zpwrVimRecent loads' {
    run autoload +X zpwrVimRecent
    assert $state equals 0
}

@test 'autoload zpwrVimRecentCd loads' {
    run autoload +X zpwrVimRecentCd
    assert $state equals 0
}

@test 'autoload zpwrVimScriptEdit loads' {
    run autoload +X zpwrVimScriptEdit
    assert $state equals 0
}

@test 'autoload zpwrVimScripts loads' {
    run autoload +X zpwrVimScripts
    assert $state equals 0
}

@test 'autoload zpwrVimZpwrCtags loads' {
    run autoload +X zpwrVimZpwrCtags
    assert $state equals 0
}

@test 'autoload zpwrVimZpwrGtags loads' {
    run autoload +X zpwrVimZpwrGtags
    assert $state equals 0
}

@test 'autoload zpwrVimZpwrGtagsEdit loads' {
    run autoload +X zpwrVimZpwrGtagsEdit
    assert $state equals 0
}

@test 'autoload zpwrZcompdump loads' {
    run autoload +X zpwrZcompdump
    assert $state equals 0
}

@test 'autoload zpwrZFZF loads' {
    run autoload +X zpwrZFZF
    assert $state equals 0
}

@test 'autoload zpwrZinitUpdates loads' {
    run autoload +X zpwrZinitUpdates
    assert $state equals 0
}

@test 'autoload zpwrZshPluginCount loads' {
    run autoload +X zpwrZshPluginCount
    assert $state equals 0
}

@test 'autoload zpwrZshPluginList loads' {
    run autoload +X zpwrZshPluginList
    assert $state equals 0
}

@test 'autoload zpwrZshrcSearch loads' {
    run autoload +X zpwrZshrcSearch
    assert $state equals 0
}

@test 'autoload zpwrZstyle loads' {
    run autoload +X zpwrZstyle
    assert $state equals 0
}

@test 'autoload zpz loads' {
    run autoload +X zpz
    assert $state equals 0
}

@test 'autoload zr loads' {
    run autoload +X zr
    assert $state equals 0
}

@test 'autoload zs loads' {
    run autoload +X zs
    assert $state equals 0
}

@test 'autoload zsm loads' {
    run autoload +X zsm
    assert $state equals 0
}

@test 'autoload zt loads' {
    run autoload +X zt
    assert $state equals 0
}

@test 'autoload ztl loads' {
    run autoload +X ztl
    assert $state equals 0
}

@test 'autoload ztm loads' {
    run autoload +X ztm
    assert $state equals 0
}

@test 'autoload zua loads' {
    run autoload +X zua
    assert $state equals 0
}

@test 'autoload zpwrBench loads' {
    run autoload +X zpwrBench
    assert $state equals 0
}

@test 'autoload zpwrTop loads' {
    run autoload +X zpwrTop
    assert $state equals 0
}

@test 'autoload zpwrDoctor loads' {
    run autoload +X zpwrDoctor
    assert $state equals 0
}

@test 'autoload zpwrFlame loads' {
    run autoload +X zpwrFlame
    assert $state equals 0
}

@test 'autoload zpwrAliasRank loads' {
    run autoload +X zpwrAliasRank
    assert $state equals 0
}

@test 'autoload zpwrFuncRank loads' {
    run autoload +X zpwrFuncRank
    assert $state equals 0
}

@test 'autoload zpwrWatch loads' {
    run autoload +X zpwrWatch
    assert $state equals 0
}

@test 'autoload zpwrReplay loads' {
    run autoload +X zpwrReplay
    assert $state equals 0
}

@test 'autoload zpwrSnapshot loads' {
    run autoload +X zpwrSnapshot
    assert $state equals 0
}

@test 'autoload zpwrTrace loads' {
    run autoload +X zpwrTrace
    assert $state equals 0
}

@test 'autoload zpwrDeps loads' {
    run autoload +X zpwrDeps
    assert $state equals 0
}

@test 'autoload zpwrTailLog loads' {
    run autoload +X zpwrTailLog
    assert $state equals 0
}

@test 'autoload zpwrStudy loads' {
    run autoload +X zpwrStudy
    assert $state equals 0
}

@test 'autoload zpwrWizard loads' {
    run autoload +X zpwrWizard
    assert $state equals 0
}
