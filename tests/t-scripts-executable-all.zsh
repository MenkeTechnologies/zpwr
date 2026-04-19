#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all scripts are executable
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'script about.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
}

@test 'script allPanes.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/allPanes.zsh"
    assert $state equals 0
}

@test 'script allPanesSwap.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/allPanesSwap.zsh"
    assert $state equals 0
}

@test 'script archetypeShower.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/archetypeShower.sh"
    assert $state equals 0
}

@test 'script autoUpdater.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/autoUpdater.sh"
    assert $state equals 0
}

@test 'script backgroundMastery.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/backgroundMastery.sh"
    assert $state equals 0
}

@test 'script backupConfig.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/backupConfig.sh"
    assert $state equals 0
}

@test 'script banner.for is executable' {
    run test -x "$ZPWR_SCRIPTS/banner.for"
    assert $state equals 0
}

@test 'script batchRename.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/batchRename.sh"
    assert $state equals 0
}

@test 'script blueText.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/blueText.sh"
    assert $state equals 0
}

@test 'script blueUpperText.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/blueUpperText.sh"
    assert $state equals 0
}

@test 'script boiler_gen.py is executable' {
    run test -x "$ZPWR_SCRIPTS/boiler_gen.py"
    assert $state equals 0
}

@test 'script boldText.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/boldText.sh"
    assert $state equals 0
}

@test 'script boxPrint.pl is executable' {
    run test -x "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

@test 'script bridgeDown.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/bridgeDown.sh"
    assert $state equals 0
}

@test 'script bridgeUp.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/bridgeUp.sh"
    assert $state equals 0
}

@test 'script c.for is executable' {
    run test -x "$ZPWR_SCRIPTS/c.for"
    assert $state equals 0
}

@test 'script clearTrash.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/clearTrash.sh"
    assert $state equals 0
}

@test 'script colorLogger.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/colorLogger.sh"
    assert $state equals 0
}

@test 'script connectionShower.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/connectionShower.sh"
    assert $state equals 0
}

@test 'script coolFormatter.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/coolFormatter.sh"
    assert $state equals 0
}

@test 'script CPU_Stresser.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/CPU_Stresser.sh"
    assert $state equals 0
}

@test 'script createScriptButDontOpenSublime.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh"
    assert $state equals 0
}

@test 'script createTextFile.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/createTextFile.sh"
    assert $state equals 0
}

@test 'script crossOSCommands.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
}

@test 'script crossOSExecute.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
}

@test 'script delete_dups.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/delete_dups.zsh"
    assert $state equals 0
}

@test 'script directoryContentsSize.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/directoryContentsSize.sh"
    assert $state equals 0
}

@test 'script dsDownloader.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/dsDownloader.sh"
    assert $state equals 0
}

@test 'script duplicateLineDeleter.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/duplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'script em-server.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/em-server.sh"
    assert $state equals 0
}

@test 'script encrypt.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/encrypt.sh"
    assert $state equals 0
}

@test 'script escapeRemover.for is executable' {
    run test -x "$ZPWR_SCRIPTS/escapeRemover.for"
    assert $state equals 0
}

@test 'script evilSkull.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/evilSkull.sh"
    assert $state equals 0
}

@test 'script eyes.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/eyes.sh"
    assert $state equals 0
}

@test 'script fdswap.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fdswap.sh"
    assert $state equals 0
}

@test 'script forDir.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/forDir.sh"
    assert $state equals 0
}

@test 'script forDirDev.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/forDirDev.sh"
    assert $state equals 0
}

@test 'script forDirMain.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/forDirMain.sh"
    assert $state equals 0
}

@test 'script forDirZipRar.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/forDirZipRar.zsh"
    assert $state equals 0
}

@test 'script forever.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/forever.sh"
    assert $state equals 0
}

@test 'script fsWatchLongRunning.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fsWatchLongRunning.sh"
    assert $state equals 0
}

@test 'script fzfAgOpts.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfAgOpts.sh"
    assert $state equals 0
}

@test 'script fzfEnv.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfEnv.sh"
    assert $state equals 0
}

@test 'script fzfEnvCurrent.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfEnvCurrent.sh"
    assert $state equals 0
}

@test 'script fzfEnvVerbs.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfEnvVerbs.sh"
    assert $state equals 0
}

@test 'script fzfGitOpts.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfGitOpts.sh"
    assert $state equals 0
}

@test 'script fzfGitSearchOpts.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh"
    assert $state equals 0
}

@test 'script fzfGtagsOpts.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfGtagsOpts.sh"
    assert $state equals 0
}

@test 'script fzfMan.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfMan.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOpts.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfPreviewOpts.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOpts2Pos.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon2Pos.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCtrlT.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsPony.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh"
    assert $state equals 0
}

@test 'script genericDisplayer.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/genericDisplayer.sh"
    assert $state equals 0
}

@test 'script genericDisplayerLolcat.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh"
    assert $state equals 0
}

@test 'script gitgo.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/gitgo.sh"
    assert $state equals 0
}

@test 'script gitRemoteRepoInformation.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh"
    assert $state equals 0
}

@test 'script gitSdiffColorizer.for is executable' {
    run test -x "$ZPWR_SCRIPTS/gitSdiffColorizer.for"
    assert $state equals 0
}

@test 'script goForward.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/goForward.sh"
    assert $state equals 0
}

@test 'script headerSummarizer.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/headerSummarizer.sh"
    assert $state equals 0
}

@test 'script help2comp.py is executable' {
    run test -x "$ZPWR_SCRIPTS/help2comp.py"
    assert $state equals 0
}

@test 'script indenterAndDuplicateLineDeleter.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'script info.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/info.sh"
    assert $state equals 0
}

@test 'script init.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

@test 'script inotifyWatchLogAndEmailIfNAS.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh"
    assert $state equals 0
}

@test 'script iostatShower.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/iostatShower.sh"
    assert $state equals 0
}

@test 'script keybindingsToFZF.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/keybindingsToFZF.zsh"
    assert $state equals 0
}

@test 'script keybindingsToFZFVim.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh"
    assert $state equals 0
}

@test 'script keybindingsToREADME.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/keybindingsToREADME.zsh"
    assert $state equals 0
}

@test 'script lib.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/lib.sh"
    assert $state equals 0
}

@test 'script listAllCommands.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/listAllCommands.sh"
    assert $state equals 0
}

@test 'script logs.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/logs.sh"
    assert $state equals 0
}

@test 'script mantozshcomp.py is executable' {
    run test -x "$ZPWR_SCRIPTS/mantozshcomp.py"
    assert $state equals 0
}

@test 'script manzshcompgen.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/manzshcompgen.zsh"
    assert $state equals 0
}

@test 'script memWatch.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/memWatch.sh"
    assert $state equals 0
}

@test 'script menkeTech.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/menkeTech.sh"
    assert $state equals 0
}

@test 'script menkeTechLolcat.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/menkeTechLolcat.sh"
    assert $state equals 0
}

@test 'script minifySpaces.for is executable' {
    run test -x "$ZPWR_SCRIPTS/minifySpaces.for"
    assert $state equals 0
}

@test 'script motd.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/motd.sh"
    assert $state equals 0
}

@test 'script mywatch.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/mywatch.sh"
    assert $state equals 0
}

@test 'script myWatchMaintainEscapes.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh"
    assert $state equals 0
}

@test 'script myWatchNoBlink.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/myWatchNoBlink.sh"
    assert $state equals 0
}

@test 'script myWatchNoBlinkColorized.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh"
    assert $state equals 0
}

@test 'script odroidtemp.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/odroidtemp.sh"
    assert $state equals 0
}

@test 'script oldCounter.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/oldCounter.sh"
    assert $state equals 0
}

@test 'script openAll.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/openAll.sh"
    assert $state equals 0
}

@test 'script picture_finder.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/picture_finder.sh"
    assert $state equals 0
}

@test 'script pingordie.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/pingordie.sh"
    assert $state equals 0
}

@test 'script pingordieBridge.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/pingordieBridge.sh"
    assert $state equals 0
}

@test 'script pingordieBridgeVPN.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh"
    assert $state equals 0
}

@test 'script powerTo.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/powerTo.sh"
    assert $state equals 0
}

@test 'script printHeader.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/printHeader.sh"
    assert $state equals 0
}

@test 'script pydfShower.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/pydfShower.sh"
    assert $state equals 0
}

@test 'script readFIFO.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/readFIFO.sh"
    assert $state equals 0
}

@test 'script redText.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/redText.sh"
    assert $state equals 0
}

@test 'script regexReplace.for is executable' {
    run test -x "$ZPWR_SCRIPTS/regexReplace.for"
    assert $state equals 0
}

@test 'script remoteRepoMonitorDaemon.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/remoteRepoMonitorDaemon.sh"
    assert $state equals 0
}

@test 'script removeSpaces.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/removeSpaces.sh"
    assert $state equals 0
}

@test 'script rpiDownloader.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/rpiDownloader.sh"
    assert $state equals 0
}

@test 'script rpiSoftwareUpdater.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh"
    assert $state equals 0
}

@test 'script saygoogle.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/saygoogle.sh"
    assert $state equals 0
}

@test 'script sdiffColorizer.for is executable' {
    run test -x "$ZPWR_SCRIPTS/sdiffColorizer.for"
    assert $state equals 0
}

@test 'script secureDelete.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/secureDelete.sh"
    assert $state equals 0
}

@test 'script shebangChanger.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/shebangChanger.sh"
    assert $state equals 0
}

@test 'script sixLangDisplayer.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/sixLangDisplayer.sh"
    assert $state equals 0
}

@test 'script sortedArrayCounter.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/sortedArrayCounter.sh"
    assert $state equals 0
}

@test 'script splitReg.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/splitReg.sh"
    assert $state equals 0
}

@test 'script sshTunnelVnc.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/sshTunnelVnc.sh"
    assert $state equals 0
}

@test 'script sshTunnelVnc2.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    assert $state equals 0
}

@test 'script startContainers.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/startContainers.sh"
    assert $state equals 0
}

@test 'script stdinSdiffColorizer.for is executable' {
    run test -x "$ZPWR_SCRIPTS/stdinSdiffColorizer.for"
    assert $state equals 0
}

@test 'script stopContainers.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/stopContainers.sh"
    assert $state equals 0
}

@test 'script sync.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/sync.sh"
    assert $state equals 0
}

@test 'script tailZOU.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/tailZOU.sh"
    assert $state equals 0
}

@test 'script templater.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/templater.sh"
    assert $state equals 0
}

@test 'script test.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/test.sh"
    assert $state equals 0
}

@test 'script textmessage.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/textmessage.sh"
    assert $state equals 0
}

@test 'script tgzLocalInstaller.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/tgzLocalInstaller.sh"
    assert $state equals 0
}

@test 'script timeConverter.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/timeConverter.sh"
    assert $state equals 0
}

@test 'script transfer.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/transfer.sh"
    assert $state equals 0
}

@test 'script updatePi.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/updatePi.sh"
    assert $state equals 0
}

@test 'script updater.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/updater.sh"
    assert $state equals 0
}

@test 'script updaterEmail.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/updaterEmail.sh"
    assert $state equals 0
}

@test 'script updaterForLaunchCtl.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh"
    assert $state equals 0
}

@test 'script updaterPip.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/updaterPip.zsh"
    assert $state equals 0
}

@test 'script updaterPipSudo.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/updaterPipSudo.sh"
    assert $state equals 0
}

@test 'script upLoadDS.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/upLoadDS.sh"
    assert $state equals 0
}

@test 'script upLoadPi.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/upLoadPi.sh"
    assert $state equals 0
}

@test 'script upLoadPi2.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/upLoadPi2.sh"
    assert $state equals 0
}

@test 'script uploadWebDS.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/uploadWebDS.sh"
    assert $state equals 0
}

@test 'script uploadWebPi.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/uploadWebPi.sh"
    assert $state equals 0
}

@test 'script userRootRemover.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/userRootRemover.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchGit.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchLS-ALH.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiDesktop.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiWeb.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchRustCompile.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh"
    assert $state equals 0
}

@test 'script watchtree1.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchtree1.sh"
    assert $state equals 0
}

@test 'script watchtree1Color.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchtree1Color.sh"
    assert $state equals 0
}

@test 'script watchtree2.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/watchtree2.sh"
    assert $state equals 0
}

@test 'script zpwrBannerSleep.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/zpwrBannerSleep.sh"
    assert $state equals 0
}

@test 'script zpwrClearList.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/zpwrClearList.zsh"
    assert $state equals 0
}

@test 'script zpwrRunner.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/zpwrRunner.sh"
    assert $state equals 0
}

@test 'script zshcompgen.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/zshcompgen.zsh"
    assert $state equals 0
}

@test 'script zshRegenSearchableEnv.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh"
    assert $state equals 0
}

@test 'script macOnly/combo.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/combo.sh"
    assert $state equals 0
}

@test 'script macOnly/commandToColors.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/commandToColors.sh"
    assert $state equals 0
}

@test 'script macOnly/figletLooper.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/figletLooper.sh"
    assert $state equals 0
}

@test 'script macOnly/figletRandomFont.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/figletRandomFont.sh"
    assert $state equals 0
}

@test 'script macOnly/figletRandomFontOnce.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/figletRandomFontOnce.sh"
    assert $state equals 0
}

@test 'script macOnly/figletRotater.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/figletRotater.sh"
    assert $state equals 0
}

@test 'script macOnly/getPath.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/getPath.sh"
    assert $state equals 0
}

@test 'script macOnly/gradleShadowJar.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/gradleShadowJar.sh"
    assert $state equals 0
}

@test 'script macOnly/istatsShower.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/istatsShower.sh"
    assert $state equals 0
}

@test 'script macOnly/keyboardMaestro.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/keyboardMaestro.sh"
    assert $state equals 0
}

@test 'script macOnly/menkeTechRandomFont.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/menkeTechRandomFont.sh"
    assert $state equals 0
}

@test 'script macOnly/mountInstall.zsh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/mountInstall.zsh"
    assert $state equals 0
}

@test 'script macOnly/PIORun.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/PIORun.sh"
    assert $state equals 0
}

@test 'script macOnly/postscriptToPDFCreator.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/postscriptToPDFCreator.sh"
    assert $state equals 0
}

@test 'script macOnly/randomCow.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/randomCow.sh"
    assert $state equals 0
}

@test 'script macOnly/resetWIFI.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/resetWIFI.sh"
    assert $state equals 0
}

@test 'script macOnly/rsyncr.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/rsyncr.sh"
    assert $state equals 0
}

@test 'script macOnly/say.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/say.sh"
    assert $state equals 0
}

@test 'script macOnly/splitReg.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/splitReg.sh"
    assert $state equals 0
}

@test 'script macOnly/tmuxer.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/tmuxer.sh"
    assert $state equals 0
}

@test 'script macOnly/tor.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/tor.sh"
    assert $state equals 0
}

@test 'script macOnly/tutorialConfigUpdater.sh is executable' {
    run test -x "$ZPWR_SCRIPTS/macOnly/tutorialConfigUpdater.sh"
    assert $state equals 0
}
