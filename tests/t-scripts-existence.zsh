#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test existence of all script files
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'script about.sh exists' {
    run test -f "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
}

@test 'script allPanes.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/allPanes.zsh"
    assert $state equals 0
}

@test 'script allPanesSwap.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/allPanesSwap.zsh"
    assert $state equals 0
}

@test 'script archetypeShower.sh exists' {
    run test -f "$ZPWR_SCRIPTS/archetypeShower.sh"
    assert $state equals 0
}

@test 'script autoUpdater.sh exists' {
    run test -f "$ZPWR_SCRIPTS/autoUpdater.sh"
    assert $state equals 0
}

@test 'script backgroundMastery.sh exists' {
    run test -f "$ZPWR_SCRIPTS/backgroundMastery.sh"
    assert $state equals 0
}

@test 'script backupConfig.sh exists' {
    run test -f "$ZPWR_SCRIPTS/backupConfig.sh"
    assert $state equals 0
}

@test 'script banner.pr exists' {
    run test -f "$ZPWR_SCRIPTS/banner.pr"
    assert $state equals 0
}

@test 'script batchRename.sh exists' {
    run test -f "$ZPWR_SCRIPTS/batchRename.sh"
    assert $state equals 0
}

@test 'script blueText.sh exists' {
    run test -f "$ZPWR_SCRIPTS/blueText.sh"
    assert $state equals 0
}

@test 'script blueUpperText.sh exists' {
    run test -f "$ZPWR_SCRIPTS/blueUpperText.sh"
    assert $state equals 0
}

@test 'script boiler_gen.py exists' {
    run test -f "$ZPWR_SCRIPTS/boiler_gen.py"
    assert $state equals 0
}

@test 'script boldText.sh exists' {
    run test -f "$ZPWR_SCRIPTS/boldText.sh"
    assert $state equals 0
}

@test 'script boxPrint.pl exists' {
    run test -f "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

@test 'script bridgeDown.sh exists' {
    run test -f "$ZPWR_SCRIPTS/bridgeDown.sh"
    assert $state equals 0
}

@test 'script bridgeUp.sh exists' {
    run test -f "$ZPWR_SCRIPTS/bridgeUp.sh"
    assert $state equals 0
}

@test 'script c.pr exists' {
    run test -f "$ZPWR_SCRIPTS/c.pr"
    assert $state equals 0
}

@test 'script clearTrash.sh exists' {
    run test -f "$ZPWR_SCRIPTS/clearTrash.sh"
    assert $state equals 0
}

@test 'script colorLogger.sh exists' {
    run test -f "$ZPWR_SCRIPTS/colorLogger.sh"
    assert $state equals 0
}

@test 'script connectionShower.sh exists' {
    run test -f "$ZPWR_SCRIPTS/connectionShower.sh"
    assert $state equals 0
}

@test 'script coolFormatter.sh exists' {
    run test -f "$ZPWR_SCRIPTS/coolFormatter.sh"
    assert $state equals 0
}

@test 'script CPU_Stresser.sh exists' {
    run test -f "$ZPWR_SCRIPTS/CPU_Stresser.sh"
    assert $state equals 0
}

@test 'script createScriptButDontOpenSublime.sh exists' {
    run test -f "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh"
    assert $state equals 0
}

@test 'script createTextFile.sh exists' {
    run test -f "$ZPWR_SCRIPTS/createTextFile.sh"
    assert $state equals 0
}

@test 'script crossOSCommands.sh exists' {
    run test -f "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
}

@test 'script crossOSExecute.sh exists' {
    run test -f "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
}

@test 'script delete_dups.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/delete_dups.zsh"
    assert $state equals 0
}

@test 'script directoryContentsSize.sh exists' {
    run test -f "$ZPWR_SCRIPTS/directoryContentsSize.sh"
    assert $state equals 0
}

@test 'script dsDownloader.sh exists' {
    run test -f "$ZPWR_SCRIPTS/dsDownloader.sh"
    assert $state equals 0
}

@test 'script duplicateLineDeleter.sh exists' {
    run test -f "$ZPWR_SCRIPTS/duplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'script em-server.sh exists' {
    run test -f "$ZPWR_SCRIPTS/em-server.sh"
    assert $state equals 0
}

@test 'script encrypt.sh exists' {
    run test -f "$ZPWR_SCRIPTS/encrypt.sh"
    assert $state equals 0
}

@test 'script escapeRemover.pr exists' {
    run test -f "$ZPWR_SCRIPTS/escapeRemover.pr"
    assert $state equals 0
}

@test 'script evilSkull.sh exists' {
    run test -f "$ZPWR_SCRIPTS/evilSkull.sh"
    assert $state equals 0
}

@test 'script eyes.sh exists' {
    run test -f "$ZPWR_SCRIPTS/eyes.sh"
    assert $state equals 0
}

@test 'script fdswap.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fdswap.sh"
    assert $state equals 0
}

@test 'script forDir.sh exists' {
    run test -f "$ZPWR_SCRIPTS/forDir.sh"
    assert $state equals 0
}

@test 'script forDirDev.sh exists' {
    run test -f "$ZPWR_SCRIPTS/forDirDev.sh"
    assert $state equals 0
}

@test 'script forDirMain.sh exists' {
    run test -f "$ZPWR_SCRIPTS/forDirMain.sh"
    assert $state equals 0
}

@test 'script forDirZipRar.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/forDirZipRar.zsh"
    assert $state equals 0
}

@test 'script forever.sh exists' {
    run test -f "$ZPWR_SCRIPTS/forever.sh"
    assert $state equals 0
}

@test 'script fsWatchLongRunning.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fsWatchLongRunning.sh"
    assert $state equals 0
}

@test 'script fzfAgOpts.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfAgOpts.sh"
    assert $state equals 0
}

@test 'script fzfEnv.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfEnv.sh"
    assert $state equals 0
}

@test 'script fzfEnvCurrent.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfEnvCurrent.sh"
    assert $state equals 0
}

@test 'script fzfEnvVerbs.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfEnvVerbs.sh"
    assert $state equals 0
}

@test 'script fzfGitOpts.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfGitOpts.sh"
    assert $state equals 0
}

@test 'script fzfGitSearchOpts.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh"
    assert $state equals 0
}

@test 'script fzfGtagsOpts.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfGtagsOpts.sh"
    assert $state equals 0
}

@test 'script fzfMan.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfMan.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOpts.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfPreviewOpts.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOpts2Pos.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon2Pos.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCtrlT.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsPony.sh exists' {
    run test -f "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh"
    assert $state equals 0
}

@test 'script genericDisplayer.sh exists' {
    run test -f "$ZPWR_SCRIPTS/genericDisplayer.sh"
    assert $state equals 0
}

@test 'script genericDisplayerLolcat.sh exists' {
    run test -f "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh"
    assert $state equals 0
}

@test 'script gitgo.sh exists' {
    run test -f "$ZPWR_SCRIPTS/gitgo.sh"
    assert $state equals 0
}

@test 'script gitRemoteRepoInformation.sh exists' {
    run test -f "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh"
    assert $state equals 0
}

@test 'script gitSdiffColorizer.pr exists' {
    run test -f "$ZPWR_SCRIPTS/gitSdiffColorizer.pr"
    assert $state equals 0
}

@test 'script goForward.sh exists' {
    run test -f "$ZPWR_SCRIPTS/goForward.sh"
    assert $state equals 0
}

@test 'script headerSummarizer.sh exists' {
    run test -f "$ZPWR_SCRIPTS/headerSummarizer.sh"
    assert $state equals 0
}

@test 'script help2comp.py exists' {
    run test -f "$ZPWR_SCRIPTS/help2comp.py"
    assert $state equals 0
}

@test 'script indenterAndDuplicateLineDeleter.sh exists' {
    run test -f "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'script info.sh exists' {
    run test -f "$ZPWR_SCRIPTS/info.sh"
    assert $state equals 0
}

@test 'script init.sh exists' {
    run test -f "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

@test 'script inotifyWatchLogAndEmailIfNAS.sh exists' {
    run test -f "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh"
    assert $state equals 0
}

@test 'script iostatShower.sh exists' {
    run test -f "$ZPWR_SCRIPTS/iostatShower.sh"
    assert $state equals 0
}

@test 'script keybindingsToFZF.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/keybindingsToFZF.zsh"
    assert $state equals 0
}

@test 'script keybindingsToFZFVim.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh"
    assert $state equals 0
}

@test 'script keybindingsToREADME.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/keybindingsToREADME.zsh"
    assert $state equals 0
}

@test 'script lib.sh exists' {
    run test -f "$ZPWR_SCRIPTS/lib.sh"
    assert $state equals 0
}

@test 'script listAllCommands.sh exists' {
    run test -f "$ZPWR_SCRIPTS/listAllCommands.sh"
    assert $state equals 0
}

@test 'script logs.sh exists' {
    run test -f "$ZPWR_SCRIPTS/logs.sh"
    assert $state equals 0
}

@test 'script mantozshcomp.py exists' {
    run test -f "$ZPWR_SCRIPTS/mantozshcomp.py"
    assert $state equals 0
}

@test 'script manzshcompgen.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/manzshcompgen.zsh"
    assert $state equals 0
}

@test 'script memWatch.sh exists' {
    run test -f "$ZPWR_SCRIPTS/memWatch.sh"
    assert $state equals 0
}

@test 'script menkeTech.sh exists' {
    run test -f "$ZPWR_SCRIPTS/menkeTech.sh"
    assert $state equals 0
}

@test 'script menkeTechLolcat.sh exists' {
    run test -f "$ZPWR_SCRIPTS/menkeTechLolcat.sh"
    assert $state equals 0
}

@test 'script minifySpaces.pr exists' {
    run test -f "$ZPWR_SCRIPTS/minifySpaces.pr"
    assert $state equals 0
}

@test 'script motd.sh exists' {
    run test -f "$ZPWR_SCRIPTS/motd.sh"
    assert $state equals 0
}

@test 'script mywatch.sh exists' {
    run test -f "$ZPWR_SCRIPTS/mywatch.sh"
    assert $state equals 0
}

@test 'script myWatchMaintainEscapes.sh exists' {
    run test -f "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh"
    assert $state equals 0
}

@test 'script myWatchNoBlink.sh exists' {
    run test -f "$ZPWR_SCRIPTS/myWatchNoBlink.sh"
    assert $state equals 0
}

@test 'script myWatchNoBlinkColorized.sh exists' {
    run test -f "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh"
    assert $state equals 0
}

@test 'script odroidtemp.sh exists' {
    run test -f "$ZPWR_SCRIPTS/odroidtemp.sh"
    assert $state equals 0
}

@test 'script oldCounter.sh exists' {
    run test -f "$ZPWR_SCRIPTS/oldCounter.sh"
    assert $state equals 0
}

@test 'script openAll.sh exists' {
    run test -f "$ZPWR_SCRIPTS/openAll.sh"
    assert $state equals 0
}

@test 'script picture_finder.sh exists' {
    run test -f "$ZPWR_SCRIPTS/picture_finder.sh"
    assert $state equals 0
}

@test 'script pingordie.sh exists' {
    run test -f "$ZPWR_SCRIPTS/pingordie.sh"
    assert $state equals 0
}

@test 'script pingordieBridge.sh exists' {
    run test -f "$ZPWR_SCRIPTS/pingordieBridge.sh"
    assert $state equals 0
}

@test 'script pingordieBridgeVPN.sh exists' {
    run test -f "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh"
    assert $state equals 0
}

@test 'script powerTo.sh exists' {
    run test -f "$ZPWR_SCRIPTS/powerTo.sh"
    assert $state equals 0
}

@test 'script printHeader.sh exists' {
    run test -f "$ZPWR_SCRIPTS/printHeader.sh"
    assert $state equals 0
}

@test 'script pydfShower.sh exists' {
    run test -f "$ZPWR_SCRIPTS/pydfShower.sh"
    assert $state equals 0
}

@test 'script readFIFO.sh exists' {
    run test -f "$ZPWR_SCRIPTS/readFIFO.sh"
    assert $state equals 0
}

@test 'script redText.sh exists' {
    run test -f "$ZPWR_SCRIPTS/redText.sh"
    assert $state equals 0
}

@test 'script regexReplace.pr exists' {
    run test -f "$ZPWR_SCRIPTS/regexReplace.pr"
    assert $state equals 0
}

@test 'script removeSpaces.sh exists' {
    run test -f "$ZPWR_SCRIPTS/removeSpaces.sh"
    assert $state equals 0
}

@test 'script rpiDownloader.sh exists' {
    run test -f "$ZPWR_SCRIPTS/rpiDownloader.sh"
    assert $state equals 0
}

@test 'script rpiSoftwareUpdater.sh exists' {
    run test -f "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh"
    assert $state equals 0
}

@test 'script sdiffColorizer.pr exists' {
    run test -f "$ZPWR_SCRIPTS/sdiffColorizer.pr"
    assert $state equals 0
}

@test 'script secureDelete.sh exists' {
    run test -f "$ZPWR_SCRIPTS/secureDelete.sh"
    assert $state equals 0
}

@test 'script shebangChanger.sh exists' {
    run test -f "$ZPWR_SCRIPTS/shebangChanger.sh"
    assert $state equals 0
}

@test 'script sixLangDisplayer.sh exists' {
    run test -f "$ZPWR_SCRIPTS/sixLangDisplayer.sh"
    assert $state equals 0
}

@test 'script sortedArrayCounter.sh exists' {
    run test -f "$ZPWR_SCRIPTS/sortedArrayCounter.sh"
    assert $state equals 0
}

@test 'script splitReg.sh exists' {
    run test -f "$ZPWR_SCRIPTS/splitReg.sh"
    assert $state equals 0
}

@test 'script sshTunnelVnc.sh exists' {
    run test -f "$ZPWR_SCRIPTS/sshTunnelVnc.sh"
    assert $state equals 0
}

@test 'script sshTunnelVnc2.sh exists' {
    run test -f "$ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    assert $state equals 0
}

@test 'script startContainers.sh exists' {
    run test -f "$ZPWR_SCRIPTS/startContainers.sh"
    assert $state equals 0
}

@test 'script stdinSdiffColorizer.pr exists' {
    run test -f "$ZPWR_SCRIPTS/stdinSdiffColorizer.pr"
    assert $state equals 0
}

@test 'script stopContainers.sh exists' {
    run test -f "$ZPWR_SCRIPTS/stopContainers.sh"
    assert $state equals 0
}

@test 'script sync.sh exists' {
    run test -f "$ZPWR_SCRIPTS/sync.sh"
    assert $state equals 0
}

@test 'script tailZOU.sh exists' {
    run test -f "$ZPWR_SCRIPTS/tailZOU.sh"
    assert $state equals 0
}

@test 'script templater.sh exists' {
    run test -f "$ZPWR_SCRIPTS/templater.sh"
    assert $state equals 0
}

@test 'script test.sh exists' {
    run test -f "$ZPWR_SCRIPTS/test.sh"
    assert $state equals 0
}

@test 'script textmessage.sh exists' {
    run test -f "$ZPWR_SCRIPTS/textmessage.sh"
    assert $state equals 0
}

@test 'script tgzLocalInstaller.sh exists' {
    run test -f "$ZPWR_SCRIPTS/tgzLocalInstaller.sh"
    assert $state equals 0
}

@test 'script timeConverter.sh exists' {
    run test -f "$ZPWR_SCRIPTS/timeConverter.sh"
    assert $state equals 0
}

@test 'script transfer.sh exists' {
    run test -f "$ZPWR_SCRIPTS/transfer.sh"
    assert $state equals 0
}

@test 'script updatePi.sh exists' {
    run test -f "$ZPWR_SCRIPTS/updatePi.sh"
    assert $state equals 0
}

@test 'script updater.sh exists' {
    run test -f "$ZPWR_SCRIPTS/updater.sh"
    assert $state equals 0
}

@test 'script updaterEmail.sh exists' {
    run test -f "$ZPWR_SCRIPTS/updaterEmail.sh"
    assert $state equals 0
}

@test 'script updaterForLaunchCtl.sh exists' {
    run test -f "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh"
    assert $state equals 0
}

@test 'script updaterPip.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/updaterPip.zsh"
    assert $state equals 0
}

@test 'script upLoadDS.sh exists' {
    run test -f "$ZPWR_SCRIPTS/upLoadDS.sh"
    assert $state equals 0
}

@test 'script upLoadPi.sh exists' {
    run test -f "$ZPWR_SCRIPTS/upLoadPi.sh"
    assert $state equals 0
}

@test 'script upLoadPi2.sh exists' {
    run test -f "$ZPWR_SCRIPTS/upLoadPi2.sh"
    assert $state equals 0
}

@test 'script uploadWebDS.sh exists' {
    run test -f "$ZPWR_SCRIPTS/uploadWebDS.sh"
    assert $state equals 0
}

@test 'script uploadWebPi.sh exists' {
    run test -f "$ZPWR_SCRIPTS/uploadWebPi.sh"
    assert $state equals 0
}

@test 'script userRootRemover.sh exists' {
    run test -f "$ZPWR_SCRIPTS/userRootRemover.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchGit.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchLS-ALH.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiDesktop.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiWeb.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchRustCompile.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh"
    assert $state equals 0
}

@test 'script watchtree1.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchtree1.sh"
    assert $state equals 0
}

@test 'script watchtree1Color.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchtree1Color.sh"
    assert $state equals 0
}

@test 'script watchtree2.sh exists' {
    run test -f "$ZPWR_SCRIPTS/watchtree2.sh"
    assert $state equals 0
}

@test 'script zpwrBannerSleep.sh exists' {
    run test -f "$ZPWR_SCRIPTS/zpwrBannerSleep.sh"
    assert $state equals 0
}

@test 'script zpwrClearList.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/zpwrClearList.zsh"
    assert $state equals 0
}

@test 'script zpwrRunner.sh exists' {
    run test -f "$ZPWR_SCRIPTS/zpwrRunner.sh"
    assert $state equals 0
}

@test 'script zshcompgen.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/zshcompgen.zsh"
    assert $state equals 0
}

@test 'script zshRegenSearchableEnv.zsh exists' {
    run test -f "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh"
    assert $state equals 0
}

@test 'macOnly script combo.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/combo.sh"
    assert $state equals 0
}

@test 'macOnly script commandToColors.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/commandToColors.sh"
    assert $state equals 0
}

@test 'macOnly script figletLooper.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/figletLooper.sh"
    assert $state equals 0
}

@test 'macOnly script figletRandomFont.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/figletRandomFont.sh"
    assert $state equals 0
}

@test 'macOnly script figletRandomFontOnce.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/figletRandomFontOnce.sh"
    assert $state equals 0
}

@test 'macOnly script figletRotater.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/figletRotater.sh"
    assert $state equals 0
}

@test 'macOnly script getPath.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/getPath.sh"
    assert $state equals 0
}

@test 'macOnly script gradleShadowJar.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/gradleShadowJar.sh"
    assert $state equals 0
}

@test 'macOnly script istatsShower.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/istatsShower.sh"
    assert $state equals 0
}

@test 'macOnly script keyboardMaestro.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/keyboardMaestro.sh"
    assert $state equals 0
}

@test 'macOnly script menkeTechRandomFont.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/menkeTechRandomFont.sh"
    assert $state equals 0
}

@test 'macOnly script mountInstall.zsh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/mountInstall.zsh"
    assert $state equals 0
}

@test 'macOnly script PIORun.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/PIORun.sh"
    assert $state equals 0
}

@test 'macOnly script randomCow.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/randomCow.sh"
    assert $state equals 0
}

@test 'macOnly script resetWIFI.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/resetWIFI.sh"
    assert $state equals 0
}

@test 'macOnly script rsyncr.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/rsyncr.sh"
    assert $state equals 0
}

@test 'macOnly script say.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/say.sh"
    assert $state equals 0
}

@test 'macOnly script splitReg.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/splitReg.sh"
    assert $state equals 0
}

@test 'macOnly script tmuxer.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/tmuxer.sh"
    assert $state equals 0
}

@test 'macOnly script tor.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/tor.sh"
    assert $state equals 0
}

@test 'macOnly script postscriptToPDFCreator.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/postscriptToPDFCreator.sh"
    assert $state equals 0
}

@test 'macOnly script tutorialConfigUpdater.sh exists' {
    run test -f "$ZPWR_SCRIPTS_MAC/tutorialConfigUpdater.sh"
    assert $state equals 0
}

@test 'script remoteRepoMonitorDaemon.sh exists' {
    run test -f "$ZPWR_SCRIPTS/remoteRepoMonitorDaemon.sh"
    assert $state equals 0
}

@test 'script saygoogle.sh exists' {
    run test -f "$ZPWR_SCRIPTS/saygoogle.sh"
    assert $state equals 0
}

@test 'script updaterPipSudo.sh exists' {
    run test -f "$ZPWR_SCRIPTS/updaterPipSudo.sh"
    assert $state equals 0
}
