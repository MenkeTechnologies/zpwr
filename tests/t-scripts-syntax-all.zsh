#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test syntax of all scripts
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'about.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
}

@test 'about.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
}

@test 'archetypeShower.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/archetypeShower.sh"
    assert $state equals 0
}

@test 'archetypeShower.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/archetypeShower.sh"
    assert $state equals 0
}

@test 'autoUpdater.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/autoUpdater.sh"
    assert $state equals 0
}

@test 'autoUpdater.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/autoUpdater.sh"
    assert $state equals 0
}

@test 'backgroundMastery.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/backgroundMastery.sh"
    assert $state equals 0
}

@test 'backgroundMastery.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/backgroundMastery.sh"
    assert $state equals 0
}

@test 'backupConfig.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/backupConfig.sh"
    assert $state equals 0
}

@test 'backupConfig.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/backupConfig.sh"
    assert $state equals 0
}

@test 'batchRename.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/batchRename.sh"
    assert $state equals 0
}

@test 'batchRename.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/batchRename.sh"
    assert $state equals 0
}

@test 'blueText.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/blueText.sh"
    assert $state equals 0
}

@test 'blueText.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/blueText.sh"
    assert $state equals 0
}

@test 'blueUpperText.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/blueUpperText.sh"
    assert $state equals 0
}

@test 'blueUpperText.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/blueUpperText.sh"
    assert $state equals 0
}

@test 'boldText.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/boldText.sh"
    assert $state equals 0
}

@test 'boldText.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/boldText.sh"
    assert $state equals 0
}

@test 'bridgeDown.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/bridgeDown.sh"
    assert $state equals 0
}

@test 'bridgeDown.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/bridgeDown.sh"
    assert $state equals 0
}

@test 'bridgeUp.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/bridgeUp.sh"
    assert $state equals 0
}

@test 'bridgeUp.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/bridgeUp.sh"
    assert $state equals 0
}

@test 'clearTrash.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/clearTrash.sh"
    assert $state equals 0
}

@test 'clearTrash.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/clearTrash.sh"
    assert $state equals 0
}

@test 'colorLogger.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/colorLogger.sh"
    assert $state equals 0
}

@test 'colorLogger.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/colorLogger.sh"
    assert $state equals 0
}

@test 'connectionShower.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/connectionShower.sh"
    assert $state equals 0
}

@test 'connectionShower.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/connectionShower.sh"
    assert $state equals 0
}

@test 'coolFormatter.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/coolFormatter.sh"
    assert $state equals 0
}

@test 'coolFormatter.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/coolFormatter.sh"
    assert $state equals 0
}

@test 'CPU_Stresser.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/CPU_Stresser.sh"
    assert $state equals 0
}

@test 'CPU_Stresser.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/CPU_Stresser.sh"
    assert $state equals 0
}

@test 'createScriptButDontOpenSublime.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh"
    assert $state equals 0
}

@test 'createScriptButDontOpenSublime.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh"
    assert $state equals 0
}

@test 'createTextFile.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/createTextFile.sh"
    assert $state equals 0
}

@test 'createTextFile.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/createTextFile.sh"
    assert $state equals 0
}

@test 'crossOSCommands.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
}

@test 'crossOSCommands.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
}

@test 'crossOSExecute.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
}

@test 'crossOSExecute.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
}

@test 'directoryContentsSize.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/directoryContentsSize.sh"
    assert $state equals 0
}

@test 'directoryContentsSize.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/directoryContentsSize.sh"
    assert $state equals 0
}

@test 'dsDownloader.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/dsDownloader.sh"
    assert $state equals 0
}

@test 'dsDownloader.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/dsDownloader.sh"
    assert $state equals 0
}

@test 'duplicateLineDeleter.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/duplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'duplicateLineDeleter.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/duplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'em-server.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/em-server.sh"
    assert $state equals 0
}

@test 'em-server.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/em-server.sh"
    assert $state equals 0
}

@test 'encrypt.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/encrypt.sh"
    assert $state equals 0
}

@test 'encrypt.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/encrypt.sh"
    assert $state equals 0
}

@test 'evilSkull.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/evilSkull.sh"
    assert $state equals 0
}

@test 'evilSkull.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/evilSkull.sh"
    assert $state equals 0
}

@test 'eyes.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/eyes.sh"
    assert $state equals 0
}

@test 'eyes.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/eyes.sh"
    assert $state equals 0
}

@test 'fdswap.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fdswap.sh"
    assert $state equals 0
}

@test 'fdswap.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fdswap.sh"
    assert $state equals 0
}

@test 'forDir.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/forDir.sh"
    assert $state equals 0
}

@test 'forDir.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/forDir.sh"
    assert $state equals 0
}

@test 'forDirDev.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/forDirDev.sh"
    assert $state equals 0
}

@test 'forDirDev.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/forDirDev.sh"
    assert $state equals 0
}

@test 'forDirMain.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/forDirMain.sh"
    assert $state equals 0
}

@test 'forDirMain.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/forDirMain.sh"
    assert $state equals 0
}

@test 'forever.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/forever.sh"
    assert $state equals 0
}

@test 'forever.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/forever.sh"
    assert $state equals 0
}

@test 'fsWatchLongRunning.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fsWatchLongRunning.sh"
    assert $state equals 0
}

@test 'fsWatchLongRunning.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fsWatchLongRunning.sh"
    assert $state equals 0
}

@test 'fzfAgOpts.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfAgOpts.sh"
    assert $state equals 0
}

@test 'fzfAgOpts.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfAgOpts.sh"
    assert $state equals 0
}

@test 'fzfEnv.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfEnv.sh"
    assert $state equals 0
}

@test 'fzfEnv.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfEnv.sh"
    assert $state equals 0
}

@test 'fzfEnvCurrent.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfEnvCurrent.sh"
    assert $state equals 0
}

@test 'fzfEnvCurrent.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfEnvCurrent.sh"
    assert $state equals 0
}

@test 'fzfEnvVerbs.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfEnvVerbs.sh"
    assert $state equals 0
}

@test 'fzfEnvVerbs.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfEnvVerbs.sh"
    assert $state equals 0
}

@test 'fzfGitOpts.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfGitOpts.sh"
    assert $state equals 0
}

@test 'fzfGitOpts.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfGitOpts.sh"
    assert $state equals 0
}

@test 'fzfGitSearchOpts.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh"
    assert $state equals 0
}

@test 'fzfGitSearchOpts.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh"
    assert $state equals 0
}

@test 'fzfGtagsOpts.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfGtagsOpts.sh"
    assert $state equals 0
}

@test 'fzfGtagsOpts.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfGtagsOpts.sh"
    assert $state equals 0
}

@test 'fzfMan.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfMan.sh"
    assert $state equals 0
}

@test 'fzfMan.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfMan.sh"
    assert $state equals 0
}

@test 'fzfPreviewOpts.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfPreviewOpts.sh"
    assert $state equals 0
}

@test 'fzfPreviewOpts.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfPreviewOpts.sh"
    assert $state equals 0
}

@test 'fzfPreviewOpts2Pos.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh"
    assert $state equals 0
}

@test 'fzfPreviewOpts2Pos.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsCommon.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsCommon.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsCommon2Pos.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsCommon2Pos.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsCtrlT.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsCtrlT.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsPony.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh"
    assert $state equals 0
}

@test 'fzfPreviewOptsPony.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh"
    assert $state equals 0
}

@test 'genericDisplayer.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/genericDisplayer.sh"
    assert $state equals 0
}

@test 'genericDisplayer.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/genericDisplayer.sh"
    assert $state equals 0
}

@test 'genericDisplayerLolcat.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh"
    assert $state equals 0
}

@test 'genericDisplayerLolcat.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh"
    assert $state equals 0
}

@test 'gitgo.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/gitgo.sh"
    assert $state equals 0
}

@test 'gitgo.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/gitgo.sh"
    assert $state equals 0
}

@test 'gitRemoteRepoInformation.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh"
    assert $state equals 0
}

@test 'gitRemoteRepoInformation.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh"
    assert $state equals 0
}

@test 'goForward.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/goForward.sh"
    assert $state equals 0
}

@test 'goForward.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/goForward.sh"
    assert $state equals 0
}

@test 'headerSummarizer.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/headerSummarizer.sh"
    assert $state equals 0
}

@test 'headerSummarizer.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/headerSummarizer.sh"
    assert $state equals 0
}

@test 'indenterAndDuplicateLineDeleter.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'indenterAndDuplicateLineDeleter.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'info.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/info.sh"
    assert $state equals 0
}

@test 'info.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/info.sh"
    assert $state equals 0
}

@test 'init.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

@test 'init.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

@test 'inotifyWatchLogAndEmailIfNAS.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh"
    assert $state equals 0
}

@test 'inotifyWatchLogAndEmailIfNAS.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh"
    assert $state equals 0
}

@test 'iostatShower.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/iostatShower.sh"
    assert $state equals 0
}

@test 'iostatShower.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/iostatShower.sh"
    assert $state equals 0
}

@test 'lib.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/lib.sh"
    assert $state equals 0
}

@test 'lib.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/lib.sh"
    assert $state equals 0
}

@test 'listAllCommands.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/listAllCommands.sh"
    assert $state equals 0
}

@test 'listAllCommands.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/listAllCommands.sh"
    assert $state equals 0
}

@test 'logs.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/logs.sh"
    assert $state equals 0
}

@test 'logs.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/logs.sh"
    assert $state equals 0
}

@test 'memWatch.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/memWatch.sh"
    assert $state equals 0
}

@test 'memWatch.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/memWatch.sh"
    assert $state equals 0
}

@test 'menkeTech.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/menkeTech.sh"
    assert $state equals 0
}

@test 'menkeTech.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/menkeTech.sh"
    assert $state equals 0
}

@test 'menkeTechLolcat.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/menkeTechLolcat.sh"
    assert $state equals 0
}

@test 'menkeTechLolcat.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/menkeTechLolcat.sh"
    assert $state equals 0
}

@test 'motd.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/motd.sh"
    assert $state equals 0
}

@test 'motd.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/motd.sh"
    assert $state equals 0
}

@test 'mywatch.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/mywatch.sh"
    assert $state equals 0
}

@test 'mywatch.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/mywatch.sh"
    assert $state equals 0
}

@test 'myWatchMaintainEscapes.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh"
    assert $state equals 0
}

@test 'myWatchMaintainEscapes.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh"
    assert $state equals 0
}

@test 'myWatchNoBlink.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/myWatchNoBlink.sh"
    assert $state equals 0
}

@test 'myWatchNoBlink.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/myWatchNoBlink.sh"
    assert $state equals 0
}

@test 'myWatchNoBlinkColorized.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh"
    assert $state equals 0
}

@test 'myWatchNoBlinkColorized.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh"
    assert $state equals 0
}

@test 'odroidtemp.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/odroidtemp.sh"
    assert $state equals 0
}

@test 'odroidtemp.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/odroidtemp.sh"
    assert $state equals 0
}

@test 'oldCounter.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/oldCounter.sh"
    assert $state equals 0
}

@test 'oldCounter.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/oldCounter.sh"
    assert $state equals 0
}

@test 'openAll.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/openAll.sh"
    assert $state equals 0
}

@test 'openAll.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/openAll.sh"
    assert $state equals 0
}

@test 'picture_finder.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/picture_finder.sh"
    assert $state equals 0
}

@test 'picture_finder.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/picture_finder.sh"
    assert $state equals 0
}

@test 'pingordie.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/pingordie.sh"
    assert $state equals 0
}

@test 'pingordie.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/pingordie.sh"
    assert $state equals 0
}

@test 'pingordieBridge.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/pingordieBridge.sh"
    assert $state equals 0
}

@test 'pingordieBridge.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/pingordieBridge.sh"
    assert $state equals 0
}

@test 'pingordieBridgeVPN.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh"
    assert $state equals 0
}

@test 'pingordieBridgeVPN.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh"
    assert $state equals 0
}

@test 'powerTo.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/powerTo.sh"
    assert $state equals 0
}

@test 'powerTo.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/powerTo.sh"
    assert $state equals 0
}

@test 'printHeader.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/printHeader.sh"
    assert $state equals 0
}

@test 'printHeader.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/printHeader.sh"
    assert $state equals 0
}

@test 'pydfShower.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/pydfShower.sh"
    assert $state equals 0
}

@test 'pydfShower.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/pydfShower.sh"
    assert $state equals 0
}

@test 'readFIFO.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/readFIFO.sh"
    assert $state equals 0
}

@test 'readFIFO.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/readFIFO.sh"
    assert $state equals 0
}

@test 'redText.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/redText.sh"
    assert $state equals 0
}

@test 'redText.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/redText.sh"
    assert $state equals 0
}

@test 'removeSpaces.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/removeSpaces.sh"
    assert $state equals 0
}

@test 'removeSpaces.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/removeSpaces.sh"
    assert $state equals 0
}

@test 'rpiDownloader.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/rpiDownloader.sh"
    assert $state equals 0
}

@test 'rpiDownloader.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/rpiDownloader.sh"
    assert $state equals 0
}

@test 'rpiSoftwareUpdater.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh"
    assert $state equals 0
}

@test 'rpiSoftwareUpdater.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh"
    assert $state equals 0
}

@test 'secureDelete.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/secureDelete.sh"
    assert $state equals 0
}

@test 'secureDelete.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/secureDelete.sh"
    assert $state equals 0
}

@test 'shebangChanger.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/shebangChanger.sh"
    assert $state equals 0
}

@test 'shebangChanger.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/shebangChanger.sh"
    assert $state equals 0
}

@test 'sixLangDisplayer.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/sixLangDisplayer.sh"
    assert $state equals 0
}

@test 'sixLangDisplayer.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/sixLangDisplayer.sh"
    assert $state equals 0
}

@test 'sortedArrayCounter.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/sortedArrayCounter.sh"
    assert $state equals 0
}

@test 'sortedArrayCounter.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/sortedArrayCounter.sh"
    assert $state equals 0
}

@test 'splitReg.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/splitReg.sh"
    assert $state equals 0
}

@test 'splitReg.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/splitReg.sh"
    assert $state equals 0
}

@test 'sshTunnelVnc.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/sshTunnelVnc.sh"
    assert $state equals 0
}

@test 'sshTunnelVnc.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/sshTunnelVnc.sh"
    assert $state equals 0
}

@test 'sshTunnelVnc2.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    assert $state equals 0
}

@test 'sshTunnelVnc2.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    assert $state equals 0
}

@test 'startContainers.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/startContainers.sh"
    assert $state equals 0
}

@test 'startContainers.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/startContainers.sh"
    assert $state equals 0
}

@test 'stopContainers.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/stopContainers.sh"
    assert $state equals 0
}

@test 'stopContainers.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/stopContainers.sh"
    assert $state equals 0
}

@test 'sync.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/sync.sh"
    assert $state equals 0
}

@test 'sync.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/sync.sh"
    assert $state equals 0
}

@test 'tailZOU.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/tailZOU.sh"
    assert $state equals 0
}

@test 'tailZOU.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/tailZOU.sh"
    assert $state equals 0
}

@test 'templater.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/templater.sh"
    assert $state equals 0
}

@test 'templater.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/templater.sh"
    assert $state equals 0
}

@test 'test.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/test.sh"
    assert $state equals 0
}

@test 'test.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/test.sh"
    assert $state equals 0
}

@test 'textmessage.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/textmessage.sh"
    assert $state equals 0
}

@test 'textmessage.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/textmessage.sh"
    assert $state equals 0
}

@test 'tgzLocalInstaller.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/tgzLocalInstaller.sh"
    assert $state equals 0
}

@test 'tgzLocalInstaller.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/tgzLocalInstaller.sh"
    assert $state equals 0
}

@test 'timeConverter.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/timeConverter.sh"
    assert $state equals 0
}

@test 'timeConverter.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/timeConverter.sh"
    assert $state equals 0
}

@test 'transfer.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/transfer.sh"
    assert $state equals 0
}

@test 'transfer.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/transfer.sh"
    assert $state equals 0
}

@test 'updatePi.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/updatePi.sh"
    assert $state equals 0
}

@test 'updatePi.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/updatePi.sh"
    assert $state equals 0
}

@test 'updater.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/updater.sh"
    assert $state equals 0
}

@test 'updater.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/updater.sh"
    assert $state equals 0
}

@test 'updaterEmail.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/updaterEmail.sh"
    assert $state equals 0
}

@test 'updaterEmail.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/updaterEmail.sh"
    assert $state equals 0
}

@test 'updaterForLaunchCtl.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh"
    assert $state equals 0
}

@test 'updaterForLaunchCtl.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh"
    assert $state equals 0
}

@test 'upLoadDS.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/upLoadDS.sh"
    assert $state equals 0
}

@test 'upLoadDS.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/upLoadDS.sh"
    assert $state equals 0
}

@test 'upLoadPi.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/upLoadPi.sh"
    assert $state equals 0
}

@test 'upLoadPi.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/upLoadPi.sh"
    assert $state equals 0
}

@test 'upLoadPi2.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/upLoadPi2.sh"
    assert $state equals 0
}

@test 'upLoadPi2.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/upLoadPi2.sh"
    assert $state equals 0
}

@test 'uploadWebDS.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/uploadWebDS.sh"
    assert $state equals 0
}

@test 'uploadWebDS.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/uploadWebDS.sh"
    assert $state equals 0
}

@test 'uploadWebPi.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/uploadWebPi.sh"
    assert $state equals 0
}

@test 'uploadWebPi.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/uploadWebPi.sh"
    assert $state equals 0
}

@test 'userRootRemover.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/userRootRemover.sh"
    assert $state equals 0
}

@test 'userRootRemover.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/userRootRemover.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchGit.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchGit.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchLS-ALH.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchLS-ALH.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchPiDesktop.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchPiDesktop.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchPiWeb.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchPiWeb.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchRustCompile.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh"
    assert $state equals 0
}

@test 'watchServiceFSWatchRustCompile.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh"
    assert $state equals 0
}

@test 'watchtree1.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchtree1.sh"
    assert $state equals 0
}

@test 'watchtree1.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchtree1.sh"
    assert $state equals 0
}

@test 'watchtree1Color.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchtree1Color.sh"
    assert $state equals 0
}

@test 'watchtree1Color.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchtree1Color.sh"
    assert $state equals 0
}

@test 'watchtree2.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/watchtree2.sh"
    assert $state equals 0
}

@test 'watchtree2.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/watchtree2.sh"
    assert $state equals 0
}

@test 'zpwrBannerSleep.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/zpwrBannerSleep.sh"
    assert $state equals 0
}

@test 'zpwrBannerSleep.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/zpwrBannerSleep.sh"
    assert $state equals 0
}

@test 'zpwrRunner.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS/zpwrRunner.sh"
    assert $state equals 0
}

@test 'zpwrRunner.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/zpwrRunner.sh"
    assert $state equals 0
}

@test 'allPanes.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/allPanes.zsh"
    assert $state equals 0
}

@test 'allPanesSwap.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/allPanesSwap.zsh"
    assert $state equals 0
}

@test 'delete_dups.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/delete_dups.zsh"
    assert $state equals 0
}

@test 'forDirZipRar.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/forDirZipRar.zsh"
    assert $state equals 0
}

@test 'keybindingsToFZF.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/keybindingsToFZF.zsh"
    assert $state equals 0
}

@test 'keybindingsToFZFVim.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh"
    assert $state equals 0
}

@test 'keybindingsToREADME.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/keybindingsToREADME.zsh"
    assert $state equals 0
}

@test 'manzshcompgen.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/manzshcompgen.zsh"
    assert $state equals 0
}

@test 'updaterPip.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/updaterPip.zsh"
    assert $state equals 0
}

@test 'zpwrClearList.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/zpwrClearList.zsh"
    assert $state equals 0
}

@test 'zshcompgen.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/zshcompgen.zsh"
    assert $state equals 0
}

@test 'zshRegenSearchableEnv.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh"
    assert $state equals 0
}

@test 'banner.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/banner.for" --help
    assert $state equals 0
}

@test 'boxPrint.pl perl syntax' {
    run perl -c "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

@test 'c.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/c.for" --help
    assert $state equals 0
}

@test 'escapeRemover.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/escapeRemover.for" --help
    assert $state equals 0
}

@test 'gitSdiffColorizer.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/gitSdiffColorizer.for" --help
    assert $state equals 0
}

@test 'minifySpaces.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/minifySpaces.for" --help
    assert $state equals 0
}

@test 'regexReplace.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/regexReplace.for" --help
    assert $state equals 0
}

@test 'sdiffColorizer.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/sdiffColorizer.for" --help
    assert $state equals 0
}

@test 'stdinSdiffColorizer.for forge syntax' {
    run forge "$ZPWR_SCRIPTS/stdinSdiffColorizer.for" --help
    assert $state equals 0
}

@test 'boiler_gen.py python syntax' {
    run python3 -m py_compile "$ZPWR_SCRIPTS/boiler_gen.py"
    assert $state equals 0
}

@test 'help2comp.py python syntax' {
    run python3 -m py_compile "$ZPWR_SCRIPTS/help2comp.py"
    assert $state equals 0
}

@test 'mantozshcomp.py python syntax' {
    run python3 -m py_compile "$ZPWR_SCRIPTS/mantozshcomp.py"
    assert $state equals 0
}

@test 'macOnly combo.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/combo.sh"
    assert $state equals 0
}

@test 'macOnly combo.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/combo.sh"
    assert $state equals 0
}

@test 'macOnly commandToColors.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/commandToColors.sh"
    assert $state equals 0
}

@test 'macOnly commandToColors.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/commandToColors.sh"
    assert $state equals 0
}

@test 'macOnly figletLooper.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/figletLooper.sh"
    assert $state equals 0
}

@test 'macOnly figletLooper.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/figletLooper.sh"
    assert $state equals 0
}

@test 'macOnly figletRandomFont.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/figletRandomFont.sh"
    assert $state equals 0
}

@test 'macOnly figletRandomFont.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/figletRandomFont.sh"
    assert $state equals 0
}

@test 'macOnly figletRandomFontOnce.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/figletRandomFontOnce.sh"
    assert $state equals 0
}

@test 'macOnly figletRandomFontOnce.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/figletRandomFontOnce.sh"
    assert $state equals 0
}

@test 'macOnly figletRotater.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/figletRotater.sh"
    assert $state equals 0
}

@test 'macOnly figletRotater.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/figletRotater.sh"
    assert $state equals 0
}

@test 'macOnly getPath.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/getPath.sh"
    assert $state equals 0
}

@test 'macOnly getPath.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/getPath.sh"
    assert $state equals 0
}

@test 'macOnly gradleShadowJar.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/gradleShadowJar.sh"
    assert $state equals 0
}

@test 'macOnly gradleShadowJar.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/gradleShadowJar.sh"
    assert $state equals 0
}

@test 'macOnly istatsShower.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/istatsShower.sh"
    assert $state equals 0
}

@test 'macOnly istatsShower.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/istatsShower.sh"
    assert $state equals 0
}

@test 'macOnly keyboardMaestro.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/keyboardMaestro.sh"
    assert $state equals 0
}

@test 'macOnly keyboardMaestro.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/keyboardMaestro.sh"
    assert $state equals 0
}

@test 'macOnly menkeTechRandomFont.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/menkeTechRandomFont.sh"
    assert $state equals 0
}

@test 'macOnly menkeTechRandomFont.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/menkeTechRandomFont.sh"
    assert $state equals 0
}

@test 'macOnly PIORun.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/PIORun.sh"
    assert $state equals 0
}

@test 'macOnly PIORun.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/PIORun.sh"
    assert $state equals 0
}

@test 'macOnly randomCow.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/randomCow.sh"
    assert $state equals 0
}

@test 'macOnly randomCow.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/randomCow.sh"
    assert $state equals 0
}

@test 'macOnly resetWIFI.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/resetWIFI.sh"
    assert $state equals 0
}

@test 'macOnly resetWIFI.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/resetWIFI.sh"
    assert $state equals 0
}

@test 'macOnly rsyncr.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/rsyncr.sh"
    assert $state equals 0
}

@test 'macOnly rsyncr.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/rsyncr.sh"
    assert $state equals 0
}

@test 'macOnly say.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/say.sh"
    assert $state equals 0
}

@test 'macOnly say.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/say.sh"
    assert $state equals 0
}

@test 'macOnly splitReg.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/splitReg.sh"
    assert $state equals 0
}

@test 'macOnly splitReg.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/splitReg.sh"
    assert $state equals 0
}

@test 'macOnly tmuxer.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/tmuxer.sh"
    assert $state equals 0
}

@test 'macOnly tmuxer.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/tmuxer.sh"
    assert $state equals 0
}

@test 'macOnly tor.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/tor.sh"
    assert $state equals 0
}

@test 'macOnly tor.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/tor.sh"
    assert $state equals 0
}

@test 'macOnly tutorialConfigUpdater.sh bash syntax' {
    run bash -n "$ZPWR_SCRIPTS_MAC/tutorialConfigUpdater.sh"
    assert $state equals 0
}

@test 'macOnly tutorialConfigUpdater.sh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/tutorialConfigUpdater.sh"
    assert $state equals 0
}

@test 'macOnly mountInstall.zsh zsh syntax' {
    run zsh -n "$ZPWR_SCRIPTS_MAC/mountInstall.zsh"
    assert $state equals 0
}
