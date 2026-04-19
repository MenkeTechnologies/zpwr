#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test functions output of all autoload/common functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'functions a contains name' {
    run functions a
    assert $state equals 0
    assert "$output" contains a
}

@test 'functions apz contains name' {
    run functions apz
    assert $state equals 0
    assert "$output" contains apz
}

@test 'functions asg contains name' {
    run functions asg
    assert $state equals 0
    assert "$output" contains asg
}

@test 'functions b contains name' {
    run functions b
    assert $state equals 0
    assert "$output" contains b
}

@test 'functions c contains name' {
    run functions c
    assert $state equals 0
    assert "$output" contains c
}

@test 'functions cca contains name' {
    run functions cca
    assert $state equals 0
    assert "$output" contains cca
}

@test 'functions cd contains name' {
    run functions cd
    assert $state equals 0
    assert "$output" contains cd
}

@test 'functions ce contains name' {
    run functions ce
    assert $state equals 0
    assert "$output" contains ce
}

@test 'functions cg contains name' {
    run functions cg
    assert $state equals 0
    assert "$output" contains cg
}

@test 'functions cgh contains name' {
    run functions cgh
    assert $state equals 0
    assert "$output" contains cgh
}

@test 'functions color2 contains name' {
    run functions color2
    assert $state equals 0
    assert "$output" contains color2
}

@test 'functions cv contains name' {
    run functions cv
    assert $state equals 0
    assert "$output" contains cv
}

@test 'functions d contains name' {
    run functions d
    assert $state equals 0
    assert "$output" contains d
}

@test 'functions dbz contains name' {
    run functions dbz
    assert $state equals 0
    assert "$output" contains dbz
}

@test 'functions de contains name' {
    run functions de
    assert $state equals 0
    assert "$output" contains de
}

@test 'functions digs contains name' {
    run functions digs
    assert $state equals 0
    assert "$output" contains digs
}

@test 'functions dl contains name' {
    run functions dl
    assert $state equals 0
    assert "$output" contains dl
}

@test 'functions docu contains name' {
    run functions docu
    assert $state equals 0
    assert "$output" contains docu
}

@test 'functions e contains name' {
    run functions e
    assert $state equals 0
    assert "$output" contains e
}

@test 'functions eb contains name' {
    run functions eb
    assert $state equals 0
    assert "$output" contains eb
}

@test 'functions em contains name' {
    run functions em
    assert $state equals 0
    assert "$output" contains em
}

@test 'functions emm contains name' {
    run functions emm
    assert $state equals 0
    assert "$output" contains emm
}

@test 'functions f contains name' {
    run functions f
    assert $state equals 0
    assert "$output" contains f
}

@test 'functions ff contains name' {
    run functions ff
    assert $state equals 0
    assert "$output" contains ff
}

@test 'functions fff contains name' {
    run functions fff
    assert $state equals 0
    assert "$output" contains fff
}

@test 'functions fm contains name' {
    run functions fm
    assert $state equals 0
    assert "$output" contains fm
}

@test 'functions fp contains name' {
    run functions fp
    assert $state equals 0
    assert "$output" contains fp
}

@test 'functions gcl contains name' {
    run functions gcl
    assert $state equals 0
    assert "$output" contains gcl
}

@test 'functions ge contains name' {
    run functions ge
    assert $state equals 0
    assert "$output" contains ge
}

@test 'functions gil contains name' {
    run functions gil
    assert $state equals 0
    assert "$output" contains gil
}

@test 'functions gsdc contains name' {
    run functions gsdc
    assert $state equals 0
    assert "$output" contains gsdc
}

@test 'functions gse contains name' {
    run functions gse
    assert $state equals 0
    assert "$output" contains gse
}

@test 'functions h contains name' {
    run functions h
    assert $state equals 0
    assert "$output" contains h
}

@test 'functions hc contains name' {
    run functions hc
    assert $state equals 0
    assert "$output" contains hc
}

@test 'functions hd contains name' {
    run functions hd
    assert $state equals 0
    assert "$output" contains hd
}

@test 'functions ig contains name' {
    run functions ig
    assert $state equals 0
    assert "$output" contains ig
}

@test 'functions ino contains name' {
    run functions ino
    assert $state equals 0
    assert "$output" contains ino
}

@test 'functions j contains name' {
    run functions j
    assert $state equals 0
    assert "$output" contains j
}

@test 'functions jd contains name' {
    run functions jd
    assert $state equals 0
    assert "$output" contains jd
}

@test 'functions kr contains name' {
    run functions kr
    assert $state equals 0
    assert "$output" contains kr
}

@test 'functions lcm contains name' {
    run functions lcm
    assert $state equals 0
    assert "$output" contains lcm
}

@test 'functions mg contains name' {
    run functions mg
    assert $state equals 0
    assert "$output" contains mg
}

@test 'functions nz contains name' {
    run functions nz
    assert $state equals 0
    assert "$output" contains nz
}

@test 'functions o contains name' {
    run functions o
    assert $state equals 0
    assert "$output" contains o
}

@test 'functions p contains name' {
    run functions p
    assert $state equals 0
    assert "$output" contains p
}

@test 'functions pg contains name' {
    run functions pg
    assert $state equals 0
    assert "$output" contains pg
}

@test 'functions post contains name' {
    run functions post
    assert $state equals 0
    assert "$output" contains post
}

@test 'functions pre contains name' {
    run functions pre
    assert $state equals 0
    assert "$output" contains pre
}

@test 'functions r contains name' {
    run functions r
    assert $state equals 0
    assert "$output" contains r
}

@test 'functions return2 contains name' {
    run functions return2
    assert $state equals 0
    assert "$output" contains return2
}

@test 'functions rm contains name' {
    run functions rm
    assert $state equals 0
    assert "$output" contains rm
}

@test 'functions sub contains name' {
    run functions sub
    assert $state equals 0
    assert "$output" contains sub
}

@test 'functions suc contains name' {
    run functions suc
    assert $state equals 0
    assert "$output" contains suc
}

@test 'functions t contains name' {
    run functions t
    assert $state equals 0
    assert "$output" contains t
}

@test 'functions tac contains name' {
    run functions tac
    assert $state equals 0
    assert "$output" contains tac
}

@test 'functions tma contains name' {
    run functions tma
    assert $state equals 0
    assert "$output" contains tma
}

@test 'functions to contains name' {
    run functions to
    assert $state equals 0
    assert "$output" contains to
}

@test 'functions ue contains name' {
    run functions ue
    assert $state equals 0
    assert "$output" contains ue
}

@test 'functions va contains name' {
    run functions va
    assert $state equals 0
    assert "$output" contains va
}

@test 'functions vb contains name' {
    run functions vb
    assert $state equals 0
    assert "$output" contains vb
}

@test 'functions vl contains name' {
    run functions vl
    assert $state equals 0
    assert "$output" contains vl
}

@test 'functions we contains name' {
    run functions we
    assert $state equals 0
    assert "$output" contains we
}

@test 'functions wg contains name' {
    run functions wg
    assert $state equals 0
    assert "$output" contains wg
}

@test 'functions ww contains name' {
    run functions ww
    assert $state equals 0
    assert "$output" contains ww
}

@test 'functions www contains name' {
    run functions www
    assert $state equals 0
    assert "$output" contains www
}

@test 'functions xx contains name' {
    run functions xx
    assert $state equals 0
    assert "$output" contains xx
}

@test 'functions z contains name' {
    run functions z
    assert $state equals 0
    assert "$output" contains z
}

@test 'functions zal contains name' {
    run functions zal
    assert $state equals 0
    assert "$output" contains zal
}

@test 'functions zalc contains name' {
    run functions zalc
    assert $state equals 0
    assert "$output" contains zalc
}

@test 'functions zald contains name' {
    run functions zald
    assert $state equals 0
    assert "$output" contains zald
}

@test 'functions zalf contains name' {
    run functions zalf
    assert $state equals 0
    assert "$output" contains zalf
}

@test 'functions zall contains name' {
    run functions zall
    assert $state equals 0
    assert "$output" contains zall
}

@test 'functions zalo contains name' {
    run functions zalo
    assert $state equals 0
    assert "$output" contains zalo
}

@test 'functions zals contains name' {
    run functions zals
    assert $state equals 0
    assert "$output" contains zals
}

@test 'functions zalu contains name' {
    run functions zalu
    assert $state equals 0
    assert "$output" contains zalu
}

@test 'functions zarg contains name' {
    run functions zarg
    assert $state equals 0
    assert "$output" contains zarg
}

@test 'functions zco contains name' {
    run functions zco
    assert $state equals 0
    assert "$output" contains zco
}

@test 'functions zd contains name' {
    run functions zd
    assert $state equals 0
    assert "$output" contains zd
}

@test 'functions ze contains name' {
    run functions ze
    assert $state equals 0
    assert "$output" contains ze
}

@test 'functions zg contains name' {
    run functions zg
    assert $state equals 0
    assert "$output" contains zg
}

@test 'functions zh contains name' {
    run functions zh
    assert $state equals 0
    assert "$output" contains zh
}

@test 'functions zhb contains name' {
    run functions zhb
    assert $state equals 0
    assert "$output" contains zhb
}

@test 'functions zhc contains name' {
    run functions zhc
    assert $state equals 0
    assert "$output" contains zhc
}

@test 'functions zhp contains name' {
    run functions zhp
    assert $state equals 0
    assert "$output" contains zhp
}

@test 'functions zhs contains name' {
    run functions zhs
    assert $state equals 0
    assert "$output" contains zhs
}

@test 'functions zil contains name' {
    run functions zil
    assert $state equals 0
    assert "$output" contains zil
}

@test 'functions zl contains name' {
    run functions zl
    assert $state equals 0
    assert "$output" contains zl
}

@test 'functions zlc contains name' {
    run functions zlc
    assert $state equals 0
    assert "$output" contains zlc
}

@test 'functions zli contains name' {
    run functions zli
    assert $state equals 0
    assert "$output" contains zli
}

@test 'functions zlr contains name' {
    run functions zlr
    assert $state equals 0
    assert "$output" contains zlr
}

@test 'functions zlt contains name' {
    run functions zlt
    assert $state equals 0
    assert "$output" contains zlt
}

@test 'functions zm contains name' {
    run functions zm
    assert $state equals 0
    assert "$output" contains zm
}

@test 'functions zpl contains name' {
    run functions zpl
    assert $state equals 0
    assert "$output" contains zpl
}

@test 'functions zpwr contains name' {
    run functions zpwr
    assert $state equals 0
    assert "$output" contains zpwr
}

@test 'functions zpwr256ColorTest contains name' {
    run functions zpwr256ColorTest
    assert $state equals 0
    assert "$output" contains zpwr256ColorTest
}

@test 'functions zpwrAbout contains name' {
    run functions zpwrAbout
    assert $state equals 0
    assert "$output" contains zpwrAbout
}

@test 'functions zpwrAcceptLine contains name' {
    run functions zpwrAcceptLine
    assert $state equals 0
    assert "$output" contains zpwrAcceptLine
}

@test 'functions zpwrAddOMZAttrib contains name' {
    run functions zpwrAddOMZAttrib
    assert $state equals 0
    assert "$output" contains zpwrAddOMZAttrib
}

@test 'functions zpwrAgIntoFzf contains name' {
    run functions zpwrAgIntoFzf
    assert $state equals 0
    assert "$output" contains zpwrAgIntoFzf
}

@test 'functions zpwrAlacritty contains name' {
    run functions zpwrAlacritty
    assert $state equals 0
    assert "$output" contains zpwrAlacritty
}

@test 'functions zpwrAllRemotes contains name' {
    run functions zpwrAllRemotes
    assert $state equals 0
    assert "$output" contains zpwrAllRemotes
}

@test 'functions zpwrAllUpdates contains name' {
    run functions zpwrAllUpdates
    assert $state equals 0
    assert "$output" contains zpwrAllUpdates
}

@test 'functions zpwrAlternateQuotes contains name' {
    run functions zpwrAlternateQuotes
    assert $state equals 0
    assert "$output" contains zpwrAlternateQuotes
}

@test 'functions zpwrAnimate contains name' {
    run functions zpwrAnimate
    assert $state equals 0
    assert "$output" contains zpwrAnimate
}

@test 'functions zpwrArrayToJson contains name' {
    run functions zpwrArrayToJson
    assert $state equals 0
    assert "$output" contains zpwrArrayToJson
}

@test 'functions zpwrAsVar contains name' {
    run functions zpwrAsVar
    assert $state equals 0
    assert "$output" contains zpwrAsVar
}

@test 'functions zpwrAutoloadCount contains name' {
    run functions zpwrAutoloadCount
    assert $state equals 0
    assert "$output" contains zpwrAutoloadCount
}

@test 'functions zpwrAutoloadList contains name' {
    run functions zpwrAutoloadList
    assert $state equals 0
    assert "$output" contains zpwrAutoloadList
}

@test 'functions zpwrBackup contains name' {
    run functions zpwrBackup
    assert $state equals 0
    assert "$output" contains zpwrBackup
}

@test 'functions zpwrBackupHistfile contains name' {
    run functions zpwrBackupHistfile
    assert $state equals 0
    assert "$output" contains zpwrBackupHistfile
}

@test 'functions zpwrBannerCounts contains name' {
    run functions zpwrBannerCounts
    assert $state equals 0
    assert "$output" contains zpwrBannerCounts
}

@test 'functions zpwrBannerLolcat contains name' {
    run functions zpwrBannerLolcat
    assert $state equals 0
    assert "$output" contains zpwrBannerLolcat
}

@test 'functions zpwrBindAliasesLate contains name' {
    run functions zpwrBindAliasesLate
    assert $state equals 0
    assert "$output" contains zpwrBindAliasesLate
}

@test 'functions zpwrBindAliasesZshLate contains name' {
    run functions zpwrBindAliasesZshLate
    assert $state equals 0
    assert "$output" contains zpwrBindAliasesZshLate
}

@test 'functions zpwrBindDirs contains name' {
    run functions zpwrBindDirs
    assert $state equals 0
    assert "$output" contains zpwrBindDirs
}

@test 'functions zpwrBindFinal contains name' {
    run functions zpwrBindFinal
    assert $state equals 0
    assert "$output" contains zpwrBindFinal
}

@test 'functions zpwrBindForGit contains name' {
    run functions zpwrBindForGit
    assert $state equals 0
    assert "$output" contains zpwrBindForGit
}

@test 'functions zpwrBindFZFLate contains name' {
    run functions zpwrBindFZFLate
    assert $state equals 0
    assert "$output" contains zpwrBindFZFLate
}

@test 'functions zpwrBindHistorySubstring contains name' {
    run functions zpwrBindHistorySubstring
    assert $state equals 0
    assert "$output" contains zpwrBindHistorySubstring
}

@test 'functions zpwrBindInterceptSurround contains name' {
    run functions zpwrBindInterceptSurround
    assert $state equals 0
    assert "$output" contains zpwrBindInterceptSurround
}

@test 'functions zpwrBindOverrideAutoComplete contains name' {
    run functions zpwrBindOverrideAutoComplete
    assert $state equals 0
    assert "$output" contains zpwrBindOverrideAutoComplete
}

@test 'functions zpwrBindOverrideOMZ contains name' {
    run functions zpwrBindOverrideOMZ
    assert $state equals 0
    assert "$output" contains zpwrBindOverrideOMZ
}

@test 'functions zpwrBindOverrideOMZCompdefs contains name' {
    run functions zpwrBindOverrideOMZCompdefs
    assert $state equals 0
    assert "$output" contains zpwrBindOverrideOMZCompdefs
}

@test 'functions zpwrBindOverrideZLE contains name' {
    run functions zpwrBindOverrideZLE
    assert $state equals 0
    assert "$output" contains zpwrBindOverrideZLE
}

@test 'functions zpwrBindPenultimate contains name' {
    run functions zpwrBindPenultimate
    assert $state equals 0
    assert "$output" contains zpwrBindPenultimate
}

@test 'functions zpwrBindPowerline contains name' {
    run functions zpwrBindPowerline
    assert $state equals 0
    assert "$output" contains zpwrBindPowerline
}

@test 'functions zpwrBindPowerlineTmux contains name' {
    run functions zpwrBindPowerlineTmux
    assert $state equals 0
    assert "$output" contains zpwrBindPowerlineTmux
}

@test 'functions zpwrBindPrecmd contains name' {
    run functions zpwrBindPrecmd
    assert $state equals 0
    assert "$output" contains zpwrBindPrecmd
}

@test 'functions zpwrBindPreexecChpwd contains name' {
    run functions zpwrBindPreexecChpwd
    assert $state equals 0
    assert "$output" contains zpwrBindPreexecChpwd
}

@test 'functions zpwrBindVerbs contains name' {
    run functions zpwrBindVerbs
    assert $state equals 0
    assert "$output" contains zpwrBindVerbs
}

@test 'functions zpwrBindZdharma contains name' {
    run functions zpwrBindZdharma
    assert $state equals 0
    assert "$output" contains zpwrBindZdharma
}

@test 'functions zpwrBindZdharmaPost contains name' {
    run functions zpwrBindZdharmaPost
    assert $state equals 0
    assert "$output" contains zpwrBindZdharmaPost
}

@test 'functions zpwrBindZstyle contains name' {
    run functions zpwrBindZstyle
    assert $state equals 0
    assert "$output" contains zpwrBindZstyle
}

@test 'functions zpwrBufferXtrace contains name' {
    run functions zpwrBufferXtrace
    assert $state equals 0
    assert "$output" contains zpwrBufferXtrace
}

@test 'functions zpwrCat contains name' {
    run functions zpwrCat
    assert $state equals 0
    assert "$output" contains zpwrCat
}

@test 'functions zpwrCatNvimOrVimInfo contains name' {
    run functions zpwrCatNvimOrVimInfo
    assert $state equals 0
    assert "$output" contains zpwrCatNvimOrVimInfo
}

@test 'functions zpwrCCommon contains name' {
    run functions zpwrCCommon
    assert $state equals 0
    assert "$output" contains zpwrCCommon
}

@test 'functions zpwrCd contains name' {
    run functions zpwrCd
    assert $state equals 0
    assert "$output" contains zpwrCd
}

@test 'functions zpwrCdUp contains name' {
    run functions zpwrCdUp
    assert $state equals 0
    assert "$output" contains zpwrCdUp
}

@test 'functions zpwrCdVimFzfFilesearchWidgetAccept contains name' {
    run functions zpwrCdVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" contains zpwrCdVimFzfFilesearchWidgetAccept
}

@test 'functions zpwrChangeGitAuthorEmail contains name' {
    run functions zpwrChangeGitAuthorEmail
    assert $state equals 0
    assert "$output" contains zpwrChangeGitAuthorEmail
}

@test 'functions zpwrChangeGitCommitterEmail contains name' {
    run functions zpwrChangeGitCommitterEmail
    assert $state equals 0
    assert "$output" contains zpwrChangeGitCommitterEmail
}

@test 'functions zpwrChangeGitEmail contains name' {
    run functions zpwrChangeGitEmail
    assert $state equals 0
    assert "$output" contains zpwrChangeGitEmail
}

@test 'functions zpwrChangeName contains name' {
    run functions zpwrChangeName
    assert $state equals 0
    assert "$output" contains zpwrChangeName
}

@test 'functions zpwrChangeNameZpwr contains name' {
    run functions zpwrChangeNameZpwr
    assert $state equals 0
    assert "$output" contains zpwrChangeNameZpwr
}

@test 'functions zpwrChangeQuotes contains name' {
    run functions zpwrChangeQuotes
    assert $state equals 0
    assert "$output" contains zpwrChangeQuotes
}

@test 'functions zpwrChpwd contains name' {
    run functions zpwrChpwd
    assert $state equals 0
    assert "$output" contains zpwrChpwd
}

@test 'functions zpwrCleanAll contains name' {
    run functions zpwrCleanAll
    assert $state equals 0
    assert "$output" contains zpwrCleanAll
}

@test 'functions zpwrCleanCache contains name' {
    run functions zpwrCleanCache
    assert $state equals 0
    assert "$output" contains zpwrCleanCache
}

@test 'functions zpwrCleanCompCache contains name' {
    run functions zpwrCleanCompCache
    assert $state equals 0
    assert "$output" contains zpwrCleanCompCache
}

@test 'functions zpwrCleanDirs contains name' {
    run functions zpwrCleanDirs
    assert $state equals 0
    assert "$output" contains zpwrCleanDirs
}

@test 'functions zpwrCleanDirsAndTemp contains name' {
    run functions zpwrCleanDirsAndTemp
    assert $state equals 0
    assert "$output" contains zpwrCleanDirsAndTemp
}

@test 'functions zpwrCleanGitRepoCache contains name' {
    run functions zpwrCleanGitRepoCache
    assert $state equals 0
    assert "$output" contains zpwrCleanGitRepoCache
}

@test 'functions zpwrCleanGitRepoCleanCache contains name' {
    run functions zpwrCleanGitRepoCleanCache
    assert $state equals 0
    assert "$output" contains zpwrCleanGitRepoCleanCache
}

@test 'functions zpwrCleanGitRepoDirtyCache contains name' {
    run functions zpwrCleanGitRepoDirtyCache
    assert $state equals 0
    assert "$output" contains zpwrCleanGitRepoDirtyCache
}

@test 'functions zpwrCleanLog contains name' {
    run functions zpwrCleanLog
    assert $state equals 0
    assert "$output" contains zpwrCleanLog
}

@test 'functions zpwrCleanRefreshCountsTestUpdate contains name' {
    run functions zpwrCleanRefreshCountsTestUpdate
    assert $state equals 0
    assert "$output" contains zpwrCleanRefreshCountsTestUpdate
}

@test 'functions zpwrCleanRefreshUpdate contains name' {
    run functions zpwrCleanRefreshUpdate
    assert $state equals 0
    assert "$output" contains zpwrCleanRefreshUpdate
}

@test 'functions zpwrCleanTemp contains name' {
    run functions zpwrCleanTemp
    assert $state equals 0
    assert "$output" contains zpwrCleanTemp
}

@test 'functions zpwrCleanUpdateDeps contains name' {
    run functions zpwrCleanUpdateDeps
    assert $state equals 0
    assert "$output" contains zpwrCleanUpdateDeps
}

@test 'functions zpwrClearGitCommit contains name' {
    run functions zpwrClearGitCommit
    assert $state equals 0
    assert "$output" contains zpwrClearGitCommit
}

@test 'functions zpwrClearGitFile contains name' {
    run functions zpwrClearGitFile
    assert $state equals 0
    assert "$output" contains zpwrClearGitFile
}

@test 'functions zpwrClearLine contains name' {
    run functions zpwrClearLine
    assert $state equals 0
    assert "$output" contains zpwrClearLine
}

@test 'functions zpwrClearListFZF contains name' {
    run functions zpwrClearListFZF
    assert $state equals 0
    assert "$output" contains zpwrClearListFZF
}

@test 'functions zpwrClipboard contains name' {
    run functions zpwrClipboard
    assert $state equals 0
    assert "$output" contains zpwrClipboard
}

@test 'functions zpwrCloneToForked contains name' {
    run functions zpwrCloneToForked
    assert $state equals 0
    assert "$output" contains zpwrCloneToForked
}

@test 'functions zpwrColorTest contains name' {
    run functions zpwrColorTest
    assert $state equals 0
    assert "$output" contains zpwrColorTest
}

@test 'functions zpwrCommits contains name' {
    run functions zpwrCommits
    assert $state equals 0
    assert "$output" contains zpwrCommits
}

@test 'functions zpwrConfirm contains name' {
    run functions zpwrConfirm
    assert $state equals 0
    assert "$output" contains zpwrConfirm
}

@test 'functions zpwrContribCount contains name' {
    run functions zpwrContribCount
    assert $state equals 0
    assert "$output" contains zpwrContribCount
}

@test 'functions zpwrContribCountDirs contains name' {
    run functions zpwrContribCountDirs
    assert $state equals 0
    assert "$output" contains zpwrContribCountDirs
}

@test 'functions zpwrContribCountLines contains name' {
    run functions zpwrContribCountLines
    assert $state equals 0
    assert "$output" contains zpwrContribCountLines
}

@test 'functions zpwrCreateAliasCache contains name' {
    run functions zpwrCreateAliasCache
    assert $state equals 0
    assert "$output" contains zpwrCreateAliasCache
}

@test 'functions zpwrCreategif contains name' {
    run functions zpwrCreategif
    assert $state equals 0
    assert "$output" contains zpwrCreategif
}

@test 'functions zpwrDedupPaths contains name' {
    run functions zpwrDedupPaths
    assert $state equals 0
    assert "$output" contains zpwrDedupPaths
}

@test 'functions zpwrDeleteLastWord contains name' {
    run functions zpwrDeleteLastWord
    assert $state equals 0
    assert "$output" contains zpwrDeleteLastWord
}

@test 'functions zpwrDetachall contains name' {
    run functions zpwrDetachall
    assert $state equals 0
    assert "$output" contains zpwrDetachall
}

@test 'functions zpwrDfimage contains name' {
    run functions zpwrDfimage
    assert $state equals 0
    assert "$output" contains zpwrDfimage
}

@test 'functions zpwrDockerWipe contains name' {
    run functions zpwrDockerWipe
    assert $state equals 0
    assert "$output" contains zpwrDockerWipe
}

@test 'functions zpwrEditExercism contains name' {
    run functions zpwrEditExercism
    assert $state equals 0
    assert "$output" contains zpwrEditExercism
}

@test 'functions zpwrEditor contains name' {
    run functions zpwrEditor
    assert $state equals 0
    assert "$output" contains zpwrEditor
}

@test 'functions zpwrEditorRecent contains name' {
    run functions zpwrEditorRecent
    assert $state equals 0
    assert "$output" contains zpwrEditorRecent
}

@test 'functions zpwrEditorRecentCd contains name' {
    run functions zpwrEditorRecentCd
    assert $state equals 0
    assert "$output" contains zpwrEditorRecentCd
}

@test 'functions zpwrEditTag contains name' {
    run functions zpwrEditTag
    assert $state equals 0
    assert "$output" contains zpwrEditTag
}

@test 'functions zpwrEmacsAll contains name' {
    run functions zpwrEmacsAll
    assert $state equals 0
    assert "$output" contains zpwrEmacsAll
}

@test 'functions zpwrEmacsAllEdit contains name' {
    run functions zpwrEmacsAllEdit
    assert $state equals 0
    assert "$output" contains zpwrEmacsAllEdit
}

@test 'functions zpwrEmacsAllServer contains name' {
    run functions zpwrEmacsAllServer
    assert $state equals 0
    assert "$output" contains zpwrEmacsAllServer
}

@test 'functions zpwrEmacsAutoload contains name' {
    run functions zpwrEmacsAutoload
    assert $state equals 0
    assert "$output" contains zpwrEmacsAutoload
}

@test 'functions zpwrEmacsEmacsConfig contains name' {
    run functions zpwrEmacsEmacsConfig
    assert $state equals 0
    assert "$output" contains zpwrEmacsEmacsConfig
}

@test 'functions zpwrEmacsFzf contains name' {
    run functions zpwrEmacsFzf
    assert $state equals 0
    assert "$output" contains zpwrEmacsFzf
}

@test 'functions zpwrEmacsFzfFilesearchVerb contains name' {
    run functions zpwrEmacsFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains zpwrEmacsFzfFilesearchVerb
}

@test 'functions zpwrEmacsFzfFilesearchVerbEdit contains name' {
    run functions zpwrEmacsFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrEmacsFzfFilesearchVerbEdit
}

@test 'functions zpwrEmacsFzfWordsearchVerb contains name' {
    run functions zpwrEmacsFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains zpwrEmacsFzfWordsearchVerb
}

@test 'functions zpwrEmacsFzfWordsearchVerbEdit contains name' {
    run functions zpwrEmacsFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrEmacsFzfWordsearchVerbEdit
}

@test 'functions zpwrEmacsPluginCount contains name' {
    run functions zpwrEmacsPluginCount
    assert $state equals 0
    assert "$output" contains zpwrEmacsPluginCount
}

@test 'functions zpwrEmacsPluginList contains name' {
    run functions zpwrEmacsPluginList
    assert $state equals 0
    assert "$output" contains zpwrEmacsPluginList
}

@test 'functions zpwrEmacsRecent contains name' {
    run functions zpwrEmacsRecent
    assert $state equals 0
    assert "$output" contains zpwrEmacsRecent
}

@test 'functions zpwrEmacsRecentCd contains name' {
    run functions zpwrEmacsRecentCd
    assert $state equals 0
    assert "$output" contains zpwrEmacsRecentCd
}

@test 'functions zpwrEmacsScriptEdit contains name' {
    run functions zpwrEmacsScriptEdit
    assert $state equals 0
    assert "$output" contains zpwrEmacsScriptEdit
}

@test 'functions zpwrEmacsScripts contains name' {
    run functions zpwrEmacsScripts
    assert $state equals 0
    assert "$output" contains zpwrEmacsScripts
}

@test 'functions zpwrEmacsZpwr contains name' {
    run functions zpwrEmacsZpwr
    assert $state equals 0
    assert "$output" contains zpwrEmacsZpwr
}

@test 'functions zpwrEmacsZpwrCtags contains name' {
    run functions zpwrEmacsZpwrCtags
    assert $state equals 0
    assert "$output" contains zpwrEmacsZpwrCtags
}

@test 'functions zpwrEmacsZpwrGtags contains name' {
    run functions zpwrEmacsZpwrGtags
    assert $state equals 0
    assert "$output" contains zpwrEmacsZpwrGtags
}

@test 'functions zpwrEmacsZpwrGtagsEdit contains name' {
    run functions zpwrEmacsZpwrGtagsEdit
    assert $state equals 0
    assert "$output" contains zpwrEmacsZpwrGtagsEdit
}

@test 'functions zpwrEnvCounts contains name' {
    run functions zpwrEnvCounts
    assert $state equals 0
    assert "$output" contains zpwrEnvCounts
}

@test 'functions zpwrEnvVars contains name' {
    run functions zpwrEnvVars
    assert $state equals 0
    assert "$output" contains zpwrEnvVars
}

@test 'functions zpwrEnvVarsAll contains name' {
    run functions zpwrEnvVarsAll
    assert $state equals 0
    assert "$output" contains zpwrEnvVarsAll
}

@test 'functions zpwrEOLorNextTabStop contains name' {
    run functions zpwrEOLorNextTabStop
    assert $state equals 0
    assert "$output" contains zpwrEOLorNextTabStop
}

@test 'functions zpwrEvalTester contains name' {
    run functions zpwrEvalTester
    assert $state equals 0
    assert "$output" contains zpwrEvalTester
}

@test 'functions zpwrExecGlob contains name' {
    run functions zpwrExecGlob
    assert $state equals 0
    assert "$output" contains zpwrExecGlob
}

@test 'functions zpwrExecGlobParallel contains name' {
    run functions zpwrExecGlobParallel
    assert $state equals 0
    assert "$output" contains zpwrExecGlobParallel
}

@test 'functions zpwrExecpy contains name' {
    run functions zpwrExecpy
    assert $state equals 0
    assert "$output" contains zpwrExecpy
}

@test 'functions zpwrExercismDownloadAll contains name' {
    run functions zpwrExercismDownloadAll
    assert $state equals 0
    assert "$output" contains zpwrExercismDownloadAll
}

@test 'functions zpwrExpandAliasAccept contains name' {
    run functions zpwrExpandAliasAccept
    assert $state equals 0
    assert "$output" contains zpwrExpandAliasAccept
}

@test 'functions zpwrExpandAliases contains name' {
    run functions zpwrExpandAliases
    assert $state equals 0
    assert "$output" contains zpwrExpandAliases
}

@test 'functions zpwrExpandOrCompleteWithDots contains name' {
    run functions zpwrExpandOrCompleteWithDots
    assert $state equals 0
    assert "$output" contains zpwrExpandOrCompleteWithDots
}

@test 'functions zpwrFasdFList contains name' {
    run functions zpwrFasdFList
    assert $state equals 0
    assert "$output" contains zpwrFasdFList
}

@test 'functions zpwrFasdFListVerb contains name' {
    run functions zpwrFasdFListVerb
    assert $state equals 0
    assert "$output" contains zpwrFasdFListVerb
}

@test 'functions zpwrFasdFZF contains name' {
    run functions zpwrFasdFZF
    assert $state equals 0
    assert "$output" contains zpwrFasdFZF
}

@test 'functions zpwrFigletfonts contains name' {
    run functions zpwrFigletfonts
    assert $state equals 0
    assert "$output" contains zpwrFigletfonts
}

@test 'functions zpwrFindFzfEditNoZLE contains name' {
    run functions zpwrFindFzfEditNoZLE
    assert $state equals 0
    assert "$output" contains zpwrFindFzfEditNoZLE
}

@test 'functions zpwrFindFzfEditNoZLEC contains name' {
    run functions zpwrFindFzfEditNoZLEC
    assert $state equals 0
    assert "$output" contains zpwrFindFzfEditNoZLEC
}

@test 'functions zpwrFindFzfEditNoZLEEmacs contains name' {
    run functions zpwrFindFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" contains zpwrFindFzfEditNoZLEEmacs
}

@test 'functions zpwrFindFzfEditNoZLEVim contains name' {
    run functions zpwrFindFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" contains zpwrFindFzfEditNoZLEVim
}

@test 'functions zpwrFindFzfNoZLE contains name' {
    run functions zpwrFindFzfNoZLE
    assert $state equals 0
    assert "$output" contains zpwrFindFzfNoZLE
}

@test 'functions zpwrFindFzfNoZLEC contains name' {
    run functions zpwrFindFzfNoZLEC
    assert $state equals 0
    assert "$output" contains zpwrFindFzfNoZLEC
}

@test 'functions zpwrFindFzfNoZLEEmacs contains name' {
    run functions zpwrFindFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" contains zpwrFindFzfNoZLEEmacs
}

@test 'functions zpwrFindFzfNoZLEVim contains name' {
    run functions zpwrFindFzfNoZLEVim
    assert $state equals 0
    assert "$output" contains zpwrFindFzfNoZLEVim
}

@test 'functions zpwrForAllGitDirs contains name' {
    run functions zpwrForAllGitDirs
    assert $state equals 0
    assert "$output" contains zpwrForAllGitDirs
}

@test 'functions zpwrForAllGitDirsClean contains name' {
    run functions zpwrForAllGitDirsClean
    assert $state equals 0
    assert "$output" contains zpwrForAllGitDirsClean
}

@test 'functions zpwrForAllGitDirsDirty contains name' {
    run functions zpwrForAllGitDirsDirty
    assert $state equals 0
    assert "$output" contains zpwrForAllGitDirsDirty
}

@test 'functions zpwrForAllGitDirsRefreshClean contains name' {
    run functions zpwrForAllGitDirsRefreshClean
    assert $state equals 0
    assert "$output" contains zpwrForAllGitDirsRefreshClean
}

@test 'functions zpwrForAllGitDirsRefreshDirty contains name' {
    run functions zpwrForAllGitDirsRefreshDirty
    assert $state equals 0
    assert "$output" contains zpwrForAllGitDirsRefreshDirty
}

@test 'functions zpwrFordir contains name' {
    run functions zpwrFordir
    assert $state equals 0
    assert "$output" contains zpwrFordir
}

@test 'functions zpwrFordirUpdate contains name' {
    run functions zpwrFordirUpdate
    assert $state equals 0
    assert "$output" contains zpwrFordirUpdate
}

@test 'functions zpwrFzfAllKeybind contains name' {
    run functions zpwrFzfAllKeybind
    assert $state equals 0
    assert "$output" contains zpwrFzfAllKeybind
}

@test 'functions zpwrFzfCommits contains name' {
    run functions zpwrFzfCommits
    assert $state equals 0
    assert "$output" contains zpwrFzfCommits
}

@test 'functions zpwrFzfDirSearch contains name' {
    run functions zpwrFzfDirSearch
    assert $state equals 0
    assert "$output" contains zpwrFzfDirSearch
}

@test 'functions zpwrFzfDirsearchVerb contains name' {
    run functions zpwrFzfDirsearchVerb
    assert $state equals 0
    assert "$output" contains zpwrFzfDirsearchVerb
}

@test 'functions zpwrFzfEnv contains name' {
    run functions zpwrFzfEnv
    assert $state equals 0
    assert "$output" contains zpwrFzfEnv
}

@test 'functions zpwrFzfEnvVerbAccept contains name' {
    run functions zpwrFzfEnvVerbAccept
    assert $state equals 0
    assert "$output" contains zpwrFzfEnvVerbAccept
}

@test 'functions zpwrFzfEnvVerbEdit contains name' {
    run functions zpwrFzfEnvVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrFzfEnvVerbEdit
}

@test 'functions zpwrFzfFileSearch contains name' {
    run functions zpwrFzfFileSearch
    assert $state equals 0
    assert "$output" contains zpwrFzfFileSearch
}

@test 'functions zpwrFzfFilesearchVerb contains name' {
    run functions zpwrFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains zpwrFzfFilesearchVerb
}

@test 'functions zpwrFzfFilesearchVerbEdit contains name' {
    run functions zpwrFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrFzfFilesearchVerbEdit
}

@test 'functions zpwrFzfSurround contains name' {
    run functions zpwrFzfSurround
    assert $state equals 0
    assert "$output" contains zpwrFzfSurround
}

@test 'functions zpwrFzfVimKeybind contains name' {
    run functions zpwrFzfVimKeybind
    assert $state equals 0
    assert "$output" contains zpwrFzfVimKeybind
}

@test 'functions zpwrFzfWordsearchVerb contains name' {
    run functions zpwrFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains zpwrFzfWordsearchVerb
}

@test 'functions zpwrFzfWordsearchVerbEdit contains name' {
    run functions zpwrFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrFzfWordsearchVerbEdit
}

@test 'functions zpwrFzfZList contains name' {
    run functions zpwrFzfZList
    assert $state equals 0
    assert "$output" contains zpwrFzfZList
}

@test 'functions zpwrFzfZListVerb contains name' {
    run functions zpwrFzfZListVerb
    assert $state equals 0
    assert "$output" contains zpwrFzfZListVerb
}

@test 'functions zpwrFzfZshKeybind contains name' {
    run functions zpwrFzfZshKeybind
    assert $state equals 0
    assert "$output" contains zpwrFzfZshKeybind
}

@test 'functions zpwrFzvim contains name' {
    run functions zpwrFzvim
    assert $state equals 0
    assert "$output" contains zpwrFzvim
}

@test 'functions zpwrFzvimAll contains name' {
    run functions zpwrFzvimAll
    assert $state equals 0
    assert "$output" contains zpwrFzvimAll
}

@test 'functions zpwrFzvimScript contains name' {
    run functions zpwrFzvimScript
    assert $state equals 0
    assert "$output" contains zpwrFzvimScript
}

@test 'functions zpwrGetFound contains name' {
    run functions zpwrGetFound
    assert $state equals 0
    assert "$output" contains zpwrGetFound
}

@test 'functions zpwrGetGHDelURL contains name' {
    run functions zpwrGetGHDelURL
    assert $state equals 0
    assert "$output" contains zpwrGetGHDelURL
}

@test 'functions zpwrGetGtags contains name' {
    run functions zpwrGetGtags
    assert $state equals 0
    assert "$output" contains zpwrGetGtags
}

@test 'functions zpwrGetGtagsEdit contains name' {
    run functions zpwrGetGtagsEdit
    assert $state equals 0
    assert "$output" contains zpwrGetGtagsEdit
}

@test 'functions zpwrGetLocate contains name' {
    run functions zpwrGetLocate
    assert $state equals 0
    assert "$output" contains zpwrGetLocate
}

@test 'functions zpwrGetrc contains name' {
    run functions zpwrGetrc
    assert $state equals 0
    assert "$output" contains zpwrGetrc
}

@test 'functions zpwrGetrcdev contains name' {
    run functions zpwrGetrcdev
    assert $state equals 0
    assert "$output" contains zpwrGetrcdev
}

@test 'functions zpwrGetrcWidget contains name' {
    run functions zpwrGetrcWidget
    assert $state equals 0
    assert "$output" contains zpwrGetrcWidget
}

@test 'functions zpwrgh contains name' {
    run functions zpwrgh
    assert $state equals 0
    assert "$output" contains zpwrgh
}

@test 'functions zpwrGitCheckoutRebasePush contains name' {
    run functions zpwrGitCheckoutRebasePush
    assert $state equals 0
    assert "$output" contains zpwrGitCheckoutRebasePush
}

@test 'functions zpwrGitConfig contains name' {
    run functions zpwrGitConfig
    assert $state equals 0
    assert "$output" contains zpwrGitConfig
}

@test 'functions zpwrGitIgnores contains name' {
    run functions zpwrGitIgnores
    assert $state equals 0
    assert "$output" contains zpwrGitIgnores
}

@test 'functions zpwrGitReposFile contains name' {
    run functions zpwrGitReposFile
    assert $state equals 0
    assert "$output" contains zpwrGitReposFile
}

@test 'functions zpwrGoclean contains name' {
    run functions zpwrGoclean
    assert $state equals 0
    assert "$output" contains zpwrGoclean
}

@test 'functions zpwrGoogle contains name' {
    run functions zpwrGoogle
    assert $state equals 0
    assert "$output" contains zpwrGoogle
}

@test 'functions zpwrGtagsIntoFzf contains name' {
    run functions zpwrGtagsIntoFzf
    assert $state equals 0
    assert "$output" contains zpwrGtagsIntoFzf
}

@test 'functions zpwrHistfile contains name' {
    run functions zpwrHistfile
    assert $state equals 0
    assert "$output" contains zpwrHistfile
}

@test 'functions zpwrHistoryVerbAccept contains name' {
    run functions zpwrHistoryVerbAccept
    assert $state equals 0
    assert "$output" contains zpwrHistoryVerbAccept
}

@test 'functions zpwrHistoryVerbEdit contains name' {
    run functions zpwrHistoryVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrHistoryVerbEdit
}

@test 'functions zpwrInterceptDelete contains name' {
    run functions zpwrInterceptDelete
    assert $state equals 0
    assert "$output" contains zpwrInterceptDelete
}

@test 'functions zpwrInterceptSurround contains name' {
    run functions zpwrInterceptSurround
    assert $state equals 0
    assert "$output" contains zpwrInterceptSurround
}

@test 'functions zpwrIntoFzf contains name' {
    run functions zpwrIntoFzf
    assert $state equals 0
    assert "$output" contains zpwrIntoFzf
}

@test 'functions zpwrIntoFzfAg contains name' {
    run functions zpwrIntoFzfAg
    assert $state equals 0
    assert "$output" contains zpwrIntoFzfAg
}

@test 'functions zpwrJetbrainsWorkspaceEdit contains name' {
    run functions zpwrJetbrainsWorkspaceEdit
    assert $state equals 0
    assert "$output" contains zpwrJetbrainsWorkspaceEdit
}

@test 'functions zpwrJsonToArray contains name' {
    run functions zpwrJsonToArray
    assert $state equals 0
    assert "$output" contains zpwrJsonToArray
}

@test 'functions zpwrKeyClear contains name' {
    run functions zpwrKeyClear
    assert $state equals 0
    assert "$output" contains zpwrKeyClear
}

@test 'functions zpwrKeySender contains name' {
    run functions zpwrKeySender
    assert $state equals 0
    assert "$output" contains zpwrKeySender
}

@test 'functions zpwrKillLsofVerbAccept contains name' {
    run functions zpwrKillLsofVerbAccept
    assert $state equals 0
    assert "$output" contains zpwrKillLsofVerbAccept
}

@test 'functions zpwrKillLsofVerbEdit contains name' {
    run functions zpwrKillLsofVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrKillLsofVerbEdit
}

@test 'functions zpwrKillPSVerbAccept contains name' {
    run functions zpwrKillPSVerbAccept
    assert $state equals 0
    assert "$output" contains zpwrKillPSVerbAccept
}

@test 'functions zpwrKillPSVerbEdit contains name' {
    run functions zpwrKillPSVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrKillPSVerbEdit
}

@test 'functions zpwrKillRemote contains name' {
    run functions zpwrKillRemote
    assert $state equals 0
    assert "$output" contains zpwrKillRemote
}

@test 'functions zpwrLargestGitFiles contains name' {
    run functions zpwrLargestGitFiles
    assert $state equals 0
    assert "$output" contains zpwrLargestGitFiles
}

@test 'functions zpwrLastWordDouble contains name' {
    run functions zpwrLastWordDouble
    assert $state equals 0
    assert "$output" contains zpwrLastWordDouble
}

@test 'functions zpwrLineCount contains name' {
    run functions zpwrLineCount
    assert $state equals 0
    assert "$output" contains zpwrLineCount
}

@test 'functions zpwrLinkConf contains name' {
    run functions zpwrLinkConf
    assert $state equals 0
    assert "$output" contains zpwrLinkConf
}

@test 'functions zpwrListFiles contains name' {
    run functions zpwrListFiles
    assert $state equals 0
    assert "$output" contains zpwrListFiles
}

@test 'functions zpwrListNoClear contains name' {
    run functions zpwrListNoClear
    assert $state equals 0
    assert "$output" contains zpwrListNoClear
}

@test 'functions zpwrListVerbs contains name' {
    run functions zpwrListVerbs
    assert $state equals 0
    assert "$output" contains zpwrListVerbs
}

@test 'functions zpwrListVerbsColor contains name' {
    run functions zpwrListVerbsColor
    assert $state equals 0
    assert "$output" contains zpwrListVerbsColor
}

@test 'functions zpwrLoadJenv contains name' {
    run functions zpwrLoadJenv
    assert $state equals 0
    assert "$output" contains zpwrLoadJenv
}

@test 'functions zpwrLocateFzf contains name' {
    run functions zpwrLocateFzf
    assert $state equals 0
    assert "$output" contains zpwrLocateFzf
}

@test 'functions zpwrLocateFzfEdit contains name' {
    run functions zpwrLocateFzfEdit
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfEdit
}

@test 'functions zpwrLocateFzfEditNoZLE contains name' {
    run functions zpwrLocateFzfEditNoZLE
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfEditNoZLE
}

@test 'functions zpwrLocateFzfEditNoZLEC contains name' {
    run functions zpwrLocateFzfEditNoZLEC
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfEditNoZLEC
}

@test 'functions zpwrLocateFzfEditNoZLEEmacs contains name' {
    run functions zpwrLocateFzfEditNoZLEEmacs
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfEditNoZLEEmacs
}

@test 'functions zpwrLocateFzfEditNoZLEVim contains name' {
    run functions zpwrLocateFzfEditNoZLEVim
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfEditNoZLEVim
}

@test 'functions zpwrLocateFzfNoZLE contains name' {
    run functions zpwrLocateFzfNoZLE
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfNoZLE
}

@test 'functions zpwrLocateFzfNoZLEC contains name' {
    run functions zpwrLocateFzfNoZLEC
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfNoZLEC
}

@test 'functions zpwrLocateFzfNoZLEEmacs contains name' {
    run functions zpwrLocateFzfNoZLEEmacs
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfNoZLEEmacs
}

@test 'functions zpwrLocateFzfNoZLEVim contains name' {
    run functions zpwrLocateFzfNoZLEVim
    assert $state equals 0
    assert "$output" contains zpwrLocateFzfNoZLEVim
}

@test 'functions zpwrLoginCount contains name' {
    run functions zpwrLoginCount
    assert $state equals 0
    assert "$output" contains zpwrLoginCount
}

@test 'functions zpwrLsoffzf contains name' {
    run functions zpwrLsoffzf
    assert $state equals 0
    assert "$output" contains zpwrLsoffzf
}

@test 'functions zpwrMagicEnter contains name' {
    run functions zpwrMagicEnter
    assert $state equals 0
    assert "$output" contains zpwrMagicEnter
}

@test 'functions zpwrModulesFZF contains name' {
    run functions zpwrModulesFZF
    assert $state equals 0
    assert "$output" contains zpwrModulesFZF
}

@test 'functions zpwrMycurl contains name' {
    run functions zpwrMycurl
    assert $state equals 0
    assert "$output" contains zpwrMycurl
}

@test 'functions zpwrNoPonyBanner contains name' {
    run functions zpwrNoPonyBanner
    assert $state equals 0
    assert "$output" contains zpwrNoPonyBanner
}

@test 'functions zpwrNumVerbs contains name' {
    run functions zpwrNumVerbs
    assert $state equals 0
    assert "$output" contains zpwrNumVerbs
}

@test 'functions zpwrNvimThenRecentf contains name' {
    run functions zpwrNvimThenRecentf
    assert $state equals 0
    assert "$output" contains zpwrNvimThenRecentf
}

@test 'functions zpwrOmzOverrides contains name' {
    run functions zpwrOmzOverrides
    assert $state equals 0
    assert "$output" contains zpwrOmzOverrides
}

@test 'functions zpwrOpen contains name' {
    run functions zpwrOpen
    assert $state equals 0
    assert "$output" contains zpwrOpen
}

@test 'functions zpwrOpenExercism contains name' {
    run functions zpwrOpenExercism
    assert $state equals 0
    assert "$output" contains zpwrOpenExercism
}

@test 'functions zpwrOpenmygh contains name' {
    run functions zpwrOpenmygh
    assert $state equals 0
    assert "$output" contains zpwrOpenmygh
}

@test 'functions zpwrOptionsFZF contains name' {
    run functions zpwrOptionsFZF
    assert $state equals 0
    assert "$output" contains zpwrOptionsFZF
}

@test 'functions zpwrParseRecentf contains name' {
    run functions zpwrParseRecentf
    assert $state equals 0
    assert "$output" contains zpwrParseRecentf
}

@test 'functions zpwrPasteToBuffer contains name' {
    run functions zpwrPasteToBuffer
    assert $state equals 0
    assert "$output" contains zpwrPasteToBuffer
}

@test 'functions zpwrPasteToStdout contains name' {
    run functions zpwrPasteToStdout
    assert $state equals 0
    assert "$output" contains zpwrPasteToStdout
}

@test 'functions zpwrPirun contains name' {
    run functions zpwrPirun
    assert $state equals 0
    assert "$output" contains zpwrPirun
}

@test 'functions zpwrPoll contains name' {
    run functions zpwrPoll
    assert $state equals 0
    assert "$output" contains zpwrPoll
}

@test 'functions zpwrPonyBanner contains name' {
    run functions zpwrPonyBanner
    assert $state equals 0
    assert "$output" contains zpwrPonyBanner
}

@test 'functions zpwrPrecmd contains name' {
    run functions zpwrPrecmd
    assert $state equals 0
    assert "$output" contains zpwrPrecmd
}

@test 'functions zpwrPreexec contains name' {
    run functions zpwrPreexec
    assert $state equals 0
    assert "$output" contains zpwrPreexec
}

@test 'functions zpwrPrintMap contains name' {
    run functions zpwrPrintMap
    assert $state equals 0
    assert "$output" contains zpwrPrintMap
}

@test 'functions zpwrPstreemonitor contains name' {
    run functions zpwrPstreemonitor
    assert $state equals 0
    assert "$output" contains zpwrPstreemonitor
}

@test 'functions zpwrPygmentcolors contains name' {
    run functions zpwrPygmentcolors
    assert $state equals 0
    assert "$output" contains zpwrPygmentcolors
}

@test 'functions zpwrRationalizeDot contains name' {
    run functions zpwrRationalizeDot
    assert $state equals 0
    assert "$output" contains zpwrRationalizeDot
}

@test 'functions zpwrRecentfThenNvim contains name' {
    run functions zpwrRecentfThenNvim
    assert $state equals 0
    assert "$output" contains zpwrRecentfThenNvim
}

@test 'functions zpwrRecompile contains name' {
    run functions zpwrRecompile
    assert $state equals 0
    assert "$output" contains zpwrRecompile
}

@test 'functions zpwrRecompileFiles contains name' {
    run functions zpwrRecompileFiles
    assert $state equals 0
    assert "$output" contains zpwrRecompileFiles
}

@test 'functions zpwrRecompileFpath contains name' {
    run functions zpwrRecompileFpath
    assert $state equals 0
    assert "$output" contains zpwrRecompileFpath
}

@test 'functions zpwrRefreshZwc contains name' {
    run functions zpwrRefreshZwc
    assert $state equals 0
    assert "$output" contains zpwrRefreshZwc
}

@test 'functions zpwrRegenAll contains name' {
    run functions zpwrRegenAll
    assert $state equals 0
    assert "$output" contains zpwrRegenAll
}

@test 'functions zpwrRegenAllKeybindingsCache contains name' {
    run functions zpwrRegenAllKeybindingsCache
    assert $state equals 0
    assert "$output" contains zpwrRegenAllKeybindingsCache
}

@test 'functions zpwrRegenConfigLinks contains name' {
    run functions zpwrRegenConfigLinks
    assert $state equals 0
    assert "$output" contains zpwrRegenConfigLinks
}

@test 'functions zpwrRegenCtags contains name' {
    run functions zpwrRegenCtags
    assert $state equals 0
    assert "$output" contains zpwrRegenCtags
}

@test 'functions zpwrRegenGtagsCtags contains name' {
    run functions zpwrRegenGtagsCtags
    assert $state equals 0
    assert "$output" contains zpwrRegenGtagsCtags
}

@test 'functions zpwrRegenGtagsPygments contains name' {
    run functions zpwrRegenGtagsPygments
    assert $state equals 0
    assert "$output" contains zpwrRegenGtagsPygments
}

@test 'functions zpwrRegenGtagsType contains name' {
    run functions zpwrRegenGtagsType
    assert $state equals 0
    assert "$output" contains zpwrRegenGtagsType
}

@test 'functions zpwrRegenHistory contains name' {
    run functions zpwrRegenHistory
    assert $state equals 0
    assert "$output" contains zpwrRegenHistory
}

@test 'functions zpwrRegenMost contains name' {
    run functions zpwrRegenMost
    assert $state equals 0
    assert "$output" contains zpwrRegenMost
}

@test 'functions zpwrRegenPowerlineLink contains name' {
    run functions zpwrRegenPowerlineLink
    assert $state equals 0
    assert "$output" contains zpwrRegenPowerlineLink
}

@test 'functions zpwrRegenSearchEnv contains name' {
    run functions zpwrRegenSearchEnv
    assert $state equals 0
    assert "$output" contains zpwrRegenSearchEnv
}

@test 'functions zpwrRegenZshCompCache contains name' {
    run functions zpwrRegenZshCompCache
    assert $state equals 0
    assert "$output" contains zpwrRegenZshCompCache
}

@test 'functions zpwrRegexp-replace-single contains name' {
    run functions zpwrRegexp-replace-single
    assert $state equals 0
    assert "$output" contains zpwrRegexp-replace-single
}

@test 'functions zpwrReload contains name' {
    run functions zpwrReload
    assert $state equals 0
    assert "$output" contains zpwrReload
}

@test 'functions zpwrRelPath contains name' {
    run functions zpwrRelPath
    assert $state equals 0
    assert "$output" contains zpwrRelPath
}

@test 'functions zpwrRename contains name' {
    run functions zpwrRename
    assert $state equals 0
    assert "$output" contains zpwrRename
}

@test 'functions zpwrReplacer contains name' {
    run functions zpwrReplacer
    assert $state equals 0
    assert "$output" contains zpwrReplacer
}

@test 'functions zpwrReset contains name' {
    run functions zpwrReset
    assert $state equals 0
    assert "$output" contains zpwrReset
}

@test 'functions zpwrRestoreHistfile contains name' {
    run functions zpwrRestoreHistfile
    assert $state equals 0
    assert "$output" contains zpwrRestoreHistfile
}

@test 'functions zpwrRetryZcompdump contains name' {
    run functions zpwrRetryZcompdump
    assert $state equals 0
    assert "$output" contains zpwrRetryZcompdump
}

@test 'functions zpwrRevealRecurse contains name' {
    run functions zpwrRevealRecurse
    assert $state equals 0
    assert "$output" contains zpwrRevealRecurse
}

@test 'functions zpwrRunner contains name' {
    run functions zpwrRunner
    assert $state equals 0
    assert "$output" contains zpwrRunner
}

@test 'functions zpwrScnew contains name' {
    run functions zpwrScnew
    assert $state equals 0
    assert "$output" contains zpwrScnew
}

@test 'functions zpwrScriptCount contains name' {
    run functions zpwrScriptCount
    assert $state equals 0
    assert "$output" contains zpwrScriptCount
}

@test 'functions zpwrScriptList contains name' {
    run functions zpwrScriptList
    assert $state equals 0
    assert "$output" contains zpwrScriptList
}

@test 'functions zpwrScripts contains name' {
    run functions zpwrScripts
    assert $state equals 0
    assert "$output" contains zpwrScripts
}

@test 'functions zpwrSearch contains name' {
    run functions zpwrSearch
    assert $state equals 0
    assert "$output" contains zpwrSearch
}

@test 'functions zpwrSelfInsert contains name' {
    run functions zpwrSelfInsert
    assert $state equals 0
    assert "$output" contains zpwrSelfInsert
}

@test 'functions zpwrSshRegain contains name' {
    run functions zpwrSshRegain
    assert $state equals 0
    assert "$output" contains zpwrSshRegain
}

@test 'functions zpwrStaleZcompdump contains name' {
    run functions zpwrStaleZcompdump
    assert $state equals 0
    assert "$output" contains zpwrStaleZcompdump
}

@test 'functions zpwrStartAutoComplete contains name' {
    run functions zpwrStartAutoComplete
    assert $state equals 0
    assert "$output" contains zpwrStartAutoComplete
}

@test 'functions zpwrStartSend contains name' {
    run functions zpwrStartSend
    assert $state equals 0
    assert "$output" contains zpwrStartSend
}

@test 'functions zpwrStartSendFull contains name' {
    run functions zpwrStartSendFull
    assert $state equals 0
    assert "$output" contains zpwrStartSendFull
}

@test 'functions zpwrStopAutoComplete contains name' {
    run functions zpwrStopAutoComplete
    assert $state equals 0
    assert "$output" contains zpwrStopAutoComplete
}

@test 'functions zpwrStopSend contains name' {
    run functions zpwrStopSend
    assert $state equals 0
    assert "$output" contains zpwrStopSend
}

@test 'functions zpwrSudoEditorRecent contains name' {
    run functions zpwrSudoEditorRecent
    assert $state equals 0
    assert "$output" contains zpwrSudoEditorRecent
}

@test 'functions zpwrSudoEditorRecentCd contains name' {
    run functions zpwrSudoEditorRecentCd
    assert $state equals 0
    assert "$output" contains zpwrSudoEditorRecentCd
}

@test 'functions zpwrSudoEmacsRecent contains name' {
    run functions zpwrSudoEmacsRecent
    assert $state equals 0
    assert "$output" contains zpwrSudoEmacsRecent
}

@test 'functions zpwrSudoEmacsRecentCd contains name' {
    run functions zpwrSudoEmacsRecentCd
    assert $state equals 0
    assert "$output" contains zpwrSudoEmacsRecentCd
}

@test 'functions zpwrSudoVimRecent contains name' {
    run functions zpwrSudoVimRecent
    assert $state equals 0
    assert "$output" contains zpwrSudoVimRecent
}

@test 'functions zpwrSudoVimRecentCd contains name' {
    run functions zpwrSudoVimRecentCd
    assert $state equals 0
    assert "$output" contains zpwrSudoVimRecentCd
}

@test 'functions zpwrTabNum contains name' {
    run functions zpwrTabNum
    assert $state equals 0
    assert "$output" contains zpwrTabNum
}

@test 'functions zpwrTabNumCmd contains name' {
    run functions zpwrTabNumCmd
    assert $state equals 0
    assert "$output" contains zpwrTabNumCmd
}

@test 'functions zpwrTest contains name' {
    run functions zpwrTest
    assert $state equals 0
    assert "$output" contains zpwrTest
}

@test 'functions zpwrTestAll contains name' {
    run functions zpwrTestAll
    assert $state equals 0
    assert "$output" contains zpwrTestAll
}

@test 'functions zpwrTimer contains name' {
    run functions zpwrTimer
    assert $state equals 0
    assert "$output" contains zpwrTimer
}

@test 'functions zpwrTmux_capture_paner contains name' {
    run functions zpwrTmux_capture_paner
    assert $state equals 0
    assert "$output" contains zpwrTmux_capture_paner
}

@test 'functions zpwrTmux_pane_words contains name' {
    run functions zpwrTmux_pane_words
    assert $state equals 0
    assert "$output" contains zpwrTmux_pane_words
}

@test 'functions zpwrTorip contains name' {
    run functions zpwrTorip
    assert $state equals 0
    assert "$output" contains zpwrTorip
}

@test 'functions zpwrToriprenew contains name' {
    run functions zpwrToriprenew
    assert $state equals 0
    assert "$output" contains zpwrToriprenew
}

@test 'functions zpwrTotalLines contains name' {
    run functions zpwrTotalLines
    assert $state equals 0
    assert "$output" contains zpwrTotalLines
}

@test 'functions zpwrTutsUpdate contains name' {
    run functions zpwrTutsUpdate
    assert $state equals 0
    assert "$output" contains zpwrTutsUpdate
}

@test 'functions zpwrUncompile contains name' {
    run functions zpwrUncompile
    assert $state equals 0
    assert "$output" contains zpwrUncompile
}

@test 'functions zpwrUninstall contains name' {
    run functions zpwrUninstall
    assert $state equals 0
    assert "$output" contains zpwrUninstall
}

@test 'functions zpwrUnlinkConf contains name' {
    run functions zpwrUnlinkConf
    assert $state equals 0
    assert "$output" contains zpwrUnlinkConf
}

@test 'functions zpwrUp8widget contains name' {
    run functions zpwrUp8widget
    assert $state equals 0
    assert "$output" contains zpwrUp8widget
}

@test 'functions zpwrUpdate contains name' {
    run functions zpwrUpdate
    assert $state equals 0
    assert "$output" contains zpwrUpdate
}

@test 'functions zpwrUpdateAllGitDirs contains name' {
    run functions zpwrUpdateAllGitDirs
    assert $state equals 0
    assert "$output" contains zpwrUpdateAllGitDirs
}

@test 'functions zpwrUpdateDeps contains name' {
    run functions zpwrUpdateDeps
    assert $state equals 0
    assert "$output" contains zpwrUpdateDeps
}

@test 'functions zpwrUpdateDepsClean contains name' {
    run functions zpwrUpdateDepsClean
    assert $state equals 0
    assert "$output" contains zpwrUpdateDepsClean
}

@test 'functions zpwrUpdater contains name' {
    run functions zpwrUpdater
    assert $state equals 0
    assert "$output" contains zpwrUpdater
}

@test 'functions zpwrUpload contains name' {
    run functions zpwrUpload
    assert $state equals 0
    assert "$output" contains zpwrUpload
}

@test 'functions zpwrUrlSafe contains name' {
    run functions zpwrUrlSafe
    assert $state equals 0
    assert "$output" contains zpwrUrlSafe
}

@test 'functions zpwrVerbsEditNoZLE contains name' {
    run functions zpwrVerbsEditNoZLE
    assert $state equals 0
    assert "$output" contains zpwrVerbsEditNoZLE
}

@test 'functions zpwrVerbsFZF contains name' {
    run functions zpwrVerbsFZF
    assert $state equals 0
    assert "$output" contains zpwrVerbsFZF
}

@test 'functions zpwrVerbsNoZLE contains name' {
    run functions zpwrVerbsNoZLE
    assert $state equals 0
    assert "$output" contains zpwrVerbsNoZLE
}

@test 'functions zpwrVerbsWidget contains name' {
    run functions zpwrVerbsWidget
    assert $state equals 0
    assert "$output" contains zpwrVerbsWidget
}

@test 'functions zpwrVerbsWidgetAccept contains name' {
    run functions zpwrVerbsWidgetAccept
    assert $state equals 0
    assert "$output" contains zpwrVerbsWidgetAccept
}

@test 'functions zpwrVimAll contains name' {
    run functions zpwrVimAll
    assert $state equals 0
    assert "$output" contains zpwrVimAll
}

@test 'functions zpwrVimAllEdit contains name' {
    run functions zpwrVimAllEdit
    assert $state equals 0
    assert "$output" contains zpwrVimAllEdit
}

@test 'functions zpwrVimAllWidget contains name' {
    run functions zpwrVimAllWidget
    assert $state equals 0
    assert "$output" contains zpwrVimAllWidget
}

@test 'functions zpwrVimAllWidgetAccept contains name' {
    run functions zpwrVimAllWidgetAccept
    assert $state equals 0
    assert "$output" contains zpwrVimAllWidgetAccept
}

@test 'functions zpwrVimAutoload contains name' {
    run functions zpwrVimAutoload
    assert $state equals 0
    assert "$output" contains zpwrVimAutoload
}

@test 'functions zpwrVimEmacsConfig contains name' {
    run functions zpwrVimEmacsConfig
    assert $state equals 0
    assert "$output" contains zpwrVimEmacsConfig
}

@test 'functions zpwrVimFzf contains name' {
    run functions zpwrVimFzf
    assert $state equals 0
    assert "$output" contains zpwrVimFzf
}

@test 'functions zpwrVimFzfFilesearchVerb contains name' {
    run functions zpwrVimFzfFilesearchVerb
    assert $state equals 0
    assert "$output" contains zpwrVimFzfFilesearchVerb
}

@test 'functions zpwrVimFzfFilesearchVerbEdit contains name' {
    run functions zpwrVimFzfFilesearchVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrVimFzfFilesearchVerbEdit
}

@test 'functions zpwrVimFzfFilesearchWidgetAccept contains name' {
    run functions zpwrVimFzfFilesearchWidgetAccept
    assert $state equals 0
    assert "$output" contains zpwrVimFzfFilesearchWidgetAccept
}

@test 'functions zpwrVimFzfSudo contains name' {
    run functions zpwrVimFzfSudo
    assert $state equals 0
    assert "$output" contains zpwrVimFzfSudo
}

@test 'functions zpwrVimFzfWordsearchVerb contains name' {
    run functions zpwrVimFzfWordsearchVerb
    assert $state equals 0
    assert "$output" contains zpwrVimFzfWordsearchVerb
}

@test 'functions zpwrVimFzfWordsearchVerbEdit contains name' {
    run functions zpwrVimFzfWordsearchVerbEdit
    assert $state equals 0
    assert "$output" contains zpwrVimFzfWordsearchVerbEdit
}

@test 'functions zpwrVimPluginCount contains name' {
    run functions zpwrVimPluginCount
    assert $state equals 0
    assert "$output" contains zpwrVimPluginCount
}

@test 'functions zpwrVimPluginList contains name' {
    run functions zpwrVimPluginList
    assert $state equals 0
    assert "$output" contains zpwrVimPluginList
}

@test 'functions zpwrVimRecent contains name' {
    run functions zpwrVimRecent
    assert $state equals 0
    assert "$output" contains zpwrVimRecent
}

@test 'functions zpwrVimRecentCd contains name' {
    run functions zpwrVimRecentCd
    assert $state equals 0
    assert "$output" contains zpwrVimRecentCd
}

@test 'functions zpwrVimScriptEdit contains name' {
    run functions zpwrVimScriptEdit
    assert $state equals 0
    assert "$output" contains zpwrVimScriptEdit
}

@test 'functions zpwrVimScripts contains name' {
    run functions zpwrVimScripts
    assert $state equals 0
    assert "$output" contains zpwrVimScripts
}

@test 'functions zpwrVimZpwrCtags contains name' {
    run functions zpwrVimZpwrCtags
    assert $state equals 0
    assert "$output" contains zpwrVimZpwrCtags
}

@test 'functions zpwrVimZpwrGtags contains name' {
    run functions zpwrVimZpwrGtags
    assert $state equals 0
    assert "$output" contains zpwrVimZpwrGtags
}

@test 'functions zpwrVimZpwrGtagsEdit contains name' {
    run functions zpwrVimZpwrGtagsEdit
    assert $state equals 0
    assert "$output" contains zpwrVimZpwrGtagsEdit
}

@test 'functions zpwrZcompdump contains name' {
    run functions zpwrZcompdump
    assert $state equals 0
    assert "$output" contains zpwrZcompdump
}

@test 'functions zpwrZFZF contains name' {
    run functions zpwrZFZF
    assert $state equals 0
    assert "$output" contains zpwrZFZF
}

@test 'functions zpwrZinitUpdates contains name' {
    run functions zpwrZinitUpdates
    assert $state equals 0
    assert "$output" contains zpwrZinitUpdates
}

@test 'functions zpwrZshPluginCount contains name' {
    run functions zpwrZshPluginCount
    assert $state equals 0
    assert "$output" contains zpwrZshPluginCount
}

@test 'functions zpwrZshPluginList contains name' {
    run functions zpwrZshPluginList
    assert $state equals 0
    assert "$output" contains zpwrZshPluginList
}

@test 'functions zpwrZshrcSearch contains name' {
    run functions zpwrZshrcSearch
    assert $state equals 0
    assert "$output" contains zpwrZshrcSearch
}

@test 'functions zpwrZstyle contains name' {
    run functions zpwrZstyle
    assert $state equals 0
    assert "$output" contains zpwrZstyle
}

@test 'functions zpz contains name' {
    run functions zpz
    assert $state equals 0
    assert "$output" contains zpz
}

@test 'functions zr contains name' {
    run functions zr
    assert $state equals 0
    assert "$output" contains zr
}

@test 'functions zs contains name' {
    run functions zs
    assert $state equals 0
    assert "$output" contains zs
}

@test 'functions zsm contains name' {
    run functions zsm
    assert $state equals 0
    assert "$output" contains zsm
}

@test 'functions zt contains name' {
    run functions zt
    assert $state equals 0
    assert "$output" contains zt
}

@test 'functions ztl contains name' {
    run functions ztl
    assert $state equals 0
    assert "$output" contains ztl
}

@test 'functions ztm contains name' {
    run functions ztm
    assert $state equals 0
    assert "$output" contains ztm
}

@test 'functions zua contains name' {
    run functions zua
    assert $state equals 0
    assert "$output" contains zua
}

@test 'functions zpwrBench contains name' {
    run functions zpwrBench
    assert $state equals 0
    assert "$output" contains zpwrBench
}

@test 'functions zpwrTop contains name' {
    run functions zpwrTop
    assert $state equals 0
    assert "$output" contains zpwrTop
}

@test 'functions zpwrDoctor contains name' {
    run functions zpwrDoctor
    assert $state equals 0
    assert "$output" contains zpwrDoctor
}

@test 'functions zpwrFlame contains name' {
    run functions zpwrFlame
    assert $state equals 0
    assert "$output" contains zpwrFlame
}

@test 'functions zpwrAliasRank contains name' {
    run functions zpwrAliasRank
    assert $state equals 0
    assert "$output" contains zpwrAliasRank
}

@test 'functions zpwrFuncRank contains name' {
    run functions zpwrFuncRank
    assert $state equals 0
    assert "$output" contains zpwrFuncRank
}

@test 'functions zpwrWatch contains name' {
    run functions zpwrWatch
    assert $state equals 0
    assert "$output" contains zpwrWatch
}

@test 'functions zpwrReplay contains name' {
    run functions zpwrReplay
    assert $state equals 0
    assert "$output" contains zpwrReplay
}

@test 'functions zpwrSnapshot contains name' {
    run functions zpwrSnapshot
    assert $state equals 0
    assert "$output" contains zpwrSnapshot
}

@test 'functions zpwrTrace contains name' {
    run functions zpwrTrace
    assert $state equals 0
    assert "$output" contains zpwrTrace
}

@test 'functions zpwrDeps contains name' {
    run functions zpwrDeps
    assert $state equals 0
    assert "$output" contains zpwrDeps
}

@test 'functions zpwrTailLog contains name' {
    run functions zpwrTailLog
    assert $state equals 0
    assert "$output" contains zpwrTailLog
}

@test 'functions zpwrStudy contains name' {
    run functions zpwrStudy
    assert $state equals 0
    assert "$output" contains zpwrStudy
}

@test 'functions zpwrWizard contains name' {
    run functions zpwrWizard
    assert $state equals 0
    assert "$output" contains zpwrWizard
}
