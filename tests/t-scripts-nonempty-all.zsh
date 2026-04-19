#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all scripts are non-empty
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'script about.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
}

@test 'script allPanes.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/allPanes.zsh"
    assert $state equals 0
}

@test 'script allPanesSwap.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/allPanesSwap.zsh"
    assert $state equals 0
}

@test 'script archetypeShower.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/archetypeShower.sh"
    assert $state equals 0
}

@test 'script autoUpdater.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/autoUpdater.sh"
    assert $state equals 0
}

@test 'script backgroundMastery.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/backgroundMastery.sh"
    assert $state equals 0
}

@test 'script backupConfig.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/backupConfig.sh"
    assert $state equals 0
}

@test 'script banner.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/banner.pr"
    assert $state equals 0
}

@test 'script batchRename.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/batchRename.sh"
    assert $state equals 0
}

@test 'script blueText.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/blueText.sh"
    assert $state equals 0
}

@test 'script blueUpperText.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/blueUpperText.sh"
    assert $state equals 0
}

@test 'script boiler_gen.py is non-empty' {
    run test -s "$ZPWR_SCRIPTS/boiler_gen.py"
    assert $state equals 0
}

@test 'script boldText.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/boldText.sh"
    assert $state equals 0
}

@test 'script boxPrint.pl is non-empty' {
    run test -s "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
}

@test 'script bridgeDown.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/bridgeDown.sh"
    assert $state equals 0
}

@test 'script bridgeUp.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/bridgeUp.sh"
    assert $state equals 0
}

@test 'script c.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/c.pr"
    assert $state equals 0
}

@test 'script clearTrash.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/clearTrash.sh"
    assert $state equals 0
}

@test 'script colorLogger.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/colorLogger.sh"
    assert $state equals 0
}

@test 'script connectionShower.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/connectionShower.sh"
    assert $state equals 0
}

@test 'script coolFormatter.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/coolFormatter.sh"
    assert $state equals 0
}

@test 'script CPU_Stresser.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/CPU_Stresser.sh"
    assert $state equals 0
}

@test 'script createScriptButDontOpenSublime.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh"
    assert $state equals 0
}

@test 'script createTextFile.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/createTextFile.sh"
    assert $state equals 0
}

@test 'script crossOSCommands.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
}

@test 'script crossOSExecute.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
}

@test 'script delete_dups.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/delete_dups.zsh"
    assert $state equals 0
}

@test 'script directoryContentsSize.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/directoryContentsSize.sh"
    assert $state equals 0
}

@test 'script dsDownloader.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/dsDownloader.sh"
    assert $state equals 0
}

@test 'script duplicateLineDeleter.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/duplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'script em-server.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/em-server.sh"
    assert $state equals 0
}

@test 'script encrypt.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/encrypt.sh"
    assert $state equals 0
}

@test 'script escapeRemover.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/escapeRemover.pr"
    assert $state equals 0
}

@test 'script etags is non-empty' {
    run test -s "$ZPWR_SCRIPTS/etags"
    assert $state equals 0
}

@test 'script evilSkull.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/evilSkull.sh"
    assert $state equals 0
}

@test 'script eyes.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/eyes.sh"
    assert $state equals 0
}

@test 'script fdswap.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fdswap.sh"
    assert $state equals 0
}

@test 'script forDir.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/forDir.sh"
    assert $state equals 0
}

@test 'script forDirDev.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/forDirDev.sh"
    assert $state equals 0
}

@test 'script forDirMain.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/forDirMain.sh"
    assert $state equals 0
}

@test 'script forDirZipRar.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/forDirZipRar.zsh"
    assert $state equals 0
}

@test 'script forever.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/forever.sh"
    assert $state equals 0
}

@test 'script fsWatchLongRunning.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fsWatchLongRunning.sh"
    assert $state equals 0
}

@test 'script fzfAgOpts.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfAgOpts.sh"
    assert $state equals 0
}

@test 'script fzfEnv.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfEnv.sh"
    assert $state equals 0
}

@test 'script fzfEnvCurrent.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfEnvCurrent.sh"
    assert $state equals 0
}

@test 'script fzfEnvVerbs.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfEnvVerbs.sh"
    assert $state equals 0
}

@test 'script fzfGitOpts.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfGitOpts.sh"
    assert $state equals 0
}

@test 'script fzfGitSearchOpts.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh"
    assert $state equals 0
}

@test 'script fzfGtagsOpts.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfGtagsOpts.sh"
    assert $state equals 0
}

@test 'script fzfMan.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfMan.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOpts.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfPreviewOpts.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOpts2Pos.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon2Pos.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCtrlT.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh"
    assert $state equals 0
}

@test 'script fzfPreviewOptsPony.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh"
    assert $state equals 0
}

@test 'script genericDisplayer.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/genericDisplayer.sh"
    assert $state equals 0
}

@test 'script genericDisplayerLolcat.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh"
    assert $state equals 0
}

@test 'script gitgo.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/gitgo.sh"
    assert $state equals 0
}

@test 'script gitRemoteRepoInformation.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh"
    assert $state equals 0
}

@test 'script gitSdiffColorizer.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/gitSdiffColorizer.pr"
    assert $state equals 0
}

@test 'script goForward.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/goForward.sh"
    assert $state equals 0
}

@test 'script headerSummarizer.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/headerSummarizer.sh"
    assert $state equals 0
}

@test 'script help2comp.py is non-empty' {
    run test -s "$ZPWR_SCRIPTS/help2comp.py"
    assert $state equals 0
}

@test 'script indenterAndDuplicateLineDeleter.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh"
    assert $state equals 0
}

@test 'script info.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/info.sh"
    assert $state equals 0
}

@test 'script init.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
}

@test 'script inotifyWatchLogAndEmailIfNAS.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh"
    assert $state equals 0
}

@test 'script iostatShower.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/iostatShower.sh"
    assert $state equals 0
}

@test 'script keybindingsToFZF.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/keybindingsToFZF.zsh"
    assert $state equals 0
}

@test 'script keybindingsToFZFVim.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh"
    assert $state equals 0
}

@test 'script keybindingsToREADME.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/keybindingsToREADME.zsh"
    assert $state equals 0
}

@test 'script lib.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/lib.sh"
    assert $state equals 0
}

@test 'script listAllCommands.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/listAllCommands.sh"
    assert $state equals 0
}

@test 'script logs.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/logs.sh"
    assert $state equals 0
}

@test 'script mantozshcomp.py is non-empty' {
    run test -s "$ZPWR_SCRIPTS/mantozshcomp.py"
    assert $state equals 0
}

@test 'script manzshcompgen.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/manzshcompgen.zsh"
    assert $state equals 0
}

@test 'script memWatch.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/memWatch.sh"
    assert $state equals 0
}

@test 'script menkeTech.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/menkeTech.sh"
    assert $state equals 0
}

@test 'script menkeTechLolcat.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/menkeTechLolcat.sh"
    assert $state equals 0
}

@test 'script minifySpaces.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/minifySpaces.pr"
    assert $state equals 0
}

@test 'script motd.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/motd.sh"
    assert $state equals 0
}

@test 'script mywatch.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/mywatch.sh"
    assert $state equals 0
}

@test 'script myWatchMaintainEscapes.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh"
    assert $state equals 0
}

@test 'script myWatchNoBlink.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/myWatchNoBlink.sh"
    assert $state equals 0
}

@test 'script myWatchNoBlinkColorized.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh"
    assert $state equals 0
}

@test 'script odroidtemp.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/odroidtemp.sh"
    assert $state equals 0
}

@test 'script oldCounter.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/oldCounter.sh"
    assert $state equals 0
}

@test 'script openAll.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/openAll.sh"
    assert $state equals 0
}

@test 'script picture_finder.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/picture_finder.sh"
    assert $state equals 0
}

@test 'script pingordie.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/pingordie.sh"
    assert $state equals 0
}

@test 'script pingordieBridge.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/pingordieBridge.sh"
    assert $state equals 0
}

@test 'script pingordieBridgeVPN.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh"
    assert $state equals 0
}

@test 'script powerTo.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/powerTo.sh"
    assert $state equals 0
}

@test 'script printHeader.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/printHeader.sh"
    assert $state equals 0
}

@test 'script pydfShower.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/pydfShower.sh"
    assert $state equals 0
}

@test 'script readFIFO.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/readFIFO.sh"
    assert $state equals 0
}

@test 'script redText.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/redText.sh"
    assert $state equals 0
}

@test 'script regexReplace.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/regexReplace.pr"
    assert $state equals 0
}

@test 'script remoteRepoMonitorDaemon.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/remoteRepoMonitorDaemon.sh"
    assert $state equals 0
}

@test 'script removeSpaces.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/removeSpaces.sh"
    assert $state equals 0
}

@test 'script rpiDownloader.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/rpiDownloader.sh"
    assert $state equals 0
}

@test 'script rpiSoftwareUpdater.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh"
    assert $state equals 0
}

@test 'script saygoogle.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/saygoogle.sh"
    assert $state equals 0
}

@test 'script sdiffColorizer.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/sdiffColorizer.pr"
    assert $state equals 0
}

@test 'script secureDelete.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/secureDelete.sh"
    assert $state equals 0
}

@test 'script shebangChanger.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/shebangChanger.sh"
    assert $state equals 0
}

@test 'script sixLangDisplayer.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/sixLangDisplayer.sh"
    assert $state equals 0
}

@test 'script sortedArrayCounter.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/sortedArrayCounter.sh"
    assert $state equals 0
}

@test 'script splitReg.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/splitReg.sh"
    assert $state equals 0
}

@test 'script sshTunnelVnc.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/sshTunnelVnc.sh"
    assert $state equals 0
}

@test 'script sshTunnelVnc2.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    assert $state equals 0
}

@test 'script startContainers.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/startContainers.sh"
    assert $state equals 0
}

@test 'script stdinSdiffColorizer.pr is non-empty' {
    run test -s "$ZPWR_SCRIPTS/stdinSdiffColorizer.pr"
    assert $state equals 0
}

@test 'script stopContainers.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/stopContainers.sh"
    assert $state equals 0
}

@test 'script sync.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/sync.sh"
    assert $state equals 0
}

@test 'script tailZOU.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/tailZOU.sh"
    assert $state equals 0
}

@test 'script templater.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/templater.sh"
    assert $state equals 0
}

@test 'script test.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/test.sh"
    assert $state equals 0
}

@test 'script textmessage.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/textmessage.sh"
    assert $state equals 0
}

@test 'script tgzLocalInstaller.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/tgzLocalInstaller.sh"
    assert $state equals 0
}

@test 'script timeConverter.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/timeConverter.sh"
    assert $state equals 0
}

@test 'script transfer.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/transfer.sh"
    assert $state equals 0
}

@test 'script updatePi.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/updatePi.sh"
    assert $state equals 0
}

@test 'script updater.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/updater.sh"
    assert $state equals 0
}

@test 'script updaterEmail.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/updaterEmail.sh"
    assert $state equals 0
}

@test 'script updaterForLaunchCtl.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh"
    assert $state equals 0
}

@test 'script updaterPip.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/updaterPip.zsh"
    assert $state equals 0
}

@test 'script updaterPipSudo.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/updaterPipSudo.sh"
    assert $state equals 0
}

@test 'script upLoadDS.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/upLoadDS.sh"
    assert $state equals 0
}

@test 'script upLoadPi.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/upLoadPi.sh"
    assert $state equals 0
}

@test 'script upLoadPi2.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/upLoadPi2.sh"
    assert $state equals 0
}

@test 'script uploadWebDS.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/uploadWebDS.sh"
    assert $state equals 0
}

@test 'script uploadWebPi.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/uploadWebPi.sh"
    assert $state equals 0
}

@test 'script userRootRemover.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/userRootRemover.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchGit.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchLS-ALH.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiDesktop.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiWeb.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh"
    assert $state equals 0
}

@test 'script watchServiceFSWatchRustCompile.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh"
    assert $state equals 0
}

@test 'script watchtree1.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchtree1.sh"
    assert $state equals 0
}

@test 'script watchtree1Color.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchtree1Color.sh"
    assert $state equals 0
}

@test 'script watchtree2.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/watchtree2.sh"
    assert $state equals 0
}

@test 'script zpwrBannerSleep.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/zpwrBannerSleep.sh"
    assert $state equals 0
}

@test 'script zpwrClearList.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/zpwrClearList.zsh"
    assert $state equals 0
}

@test 'script zpwrRunner.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/zpwrRunner.sh"
    assert $state equals 0
}

@test 'script zshcompgen.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/zshcompgen.zsh"
    assert $state equals 0
}

@test 'script zshRegenSearchableEnv.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh"
    assert $state equals 0
}

@test 'script macOnly/combo.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/combo.sh"
    assert $state equals 0
}

@test 'script macOnly/commandToColors.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/commandToColors.sh"
    assert $state equals 0
}

@test 'script macOnly/figletLooper.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/figletLooper.sh"
    assert $state equals 0
}

@test 'script macOnly/figletRandomFont.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/figletRandomFont.sh"
    assert $state equals 0
}

@test 'script macOnly/figletRandomFontOnce.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/figletRandomFontOnce.sh"
    assert $state equals 0
}

@test 'script macOnly/figletRotater.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/figletRotater.sh"
    assert $state equals 0
}

@test 'script macOnly/getPath.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/getPath.sh"
    assert $state equals 0
}

@test 'script macOnly/gradleShadowJar.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/gradleShadowJar.sh"
    assert $state equals 0
}

@test 'script macOnly/istatsShower.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/istatsShower.sh"
    assert $state equals 0
}

@test 'script macOnly/keyboardMaestro.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/keyboardMaestro.sh"
    assert $state equals 0
}

@test 'script macOnly/menkeTechRandomFont.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/menkeTechRandomFont.sh"
    assert $state equals 0
}

@test 'script macOnly/mountInstall.zsh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/mountInstall.zsh"
    assert $state equals 0
}

@test 'script macOnly/PIORun.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/PIORun.sh"
    assert $state equals 0
}

@test 'script macOnly/postscriptToPDFCreator.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/postscriptToPDFCreator.sh"
    assert $state equals 0
}

@test 'script macOnly/randomCow.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/randomCow.sh"
    assert $state equals 0
}

@test 'script macOnly/resetWIFI.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/resetWIFI.sh"
    assert $state equals 0
}

@test 'script macOnly/rsyncr.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/rsyncr.sh"
    assert $state equals 0
}

@test 'script macOnly/say.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/say.sh"
    assert $state equals 0
}

@test 'script macOnly/splitReg.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/splitReg.sh"
    assert $state equals 0
}

@test 'script macOnly/tmuxer.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/tmuxer.sh"
    assert $state equals 0
}

@test 'script macOnly/tor.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/tor.sh"
    assert $state equals 0
}

@test 'script macOnly/tutorialConfigUpdater.sh is non-empty' {
    run test -s "$ZPWR_SCRIPTS/macOnly/tutorialConfigUpdater.sh"
    assert $state equals 0
}
