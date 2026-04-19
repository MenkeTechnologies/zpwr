#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all scripts are text files
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'script about.sh is text file' {
    run file "$ZPWR_SCRIPTS/about.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script allPanes.zsh is text file' {
    run file "$ZPWR_SCRIPTS/allPanes.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script allPanesSwap.zsh is text file' {
    run file "$ZPWR_SCRIPTS/allPanesSwap.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script archetypeShower.sh is text file' {
    run file "$ZPWR_SCRIPTS/archetypeShower.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script autoUpdater.sh is text file' {
    run file "$ZPWR_SCRIPTS/autoUpdater.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script backgroundMastery.sh is text file' {
    run file "$ZPWR_SCRIPTS/backgroundMastery.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script backupConfig.sh is text file' {
    run file "$ZPWR_SCRIPTS/backupConfig.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script banner.stk is text file' {
    run file "$ZPWR_SCRIPTS/banner.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script batchRename.sh is text file' {
    run file "$ZPWR_SCRIPTS/batchRename.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script blueText.sh is text file' {
    run file "$ZPWR_SCRIPTS/blueText.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script blueUpperText.sh is text file' {
    run file "$ZPWR_SCRIPTS/blueUpperText.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script boiler_gen.py is text file' {
    run file "$ZPWR_SCRIPTS/boiler_gen.py"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script boldText.sh is text file' {
    run file "$ZPWR_SCRIPTS/boldText.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script boxPrint.pl is text file' {
    run file "$ZPWR_SCRIPTS/boxPrint.pl"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script bridgeDown.sh is text file' {
    run file "$ZPWR_SCRIPTS/bridgeDown.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script bridgeUp.sh is text file' {
    run file "$ZPWR_SCRIPTS/bridgeUp.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script c.stk is text file' {
    run file "$ZPWR_SCRIPTS/c.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script clearTrash.sh is text file' {
    run file "$ZPWR_SCRIPTS/clearTrash.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script colorLogger.sh is text file' {
    run file "$ZPWR_SCRIPTS/colorLogger.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script connectionShower.sh is text file' {
    run file "$ZPWR_SCRIPTS/connectionShower.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script coolFormatter.sh is text file' {
    run file "$ZPWR_SCRIPTS/coolFormatter.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script CPU_Stresser.sh is text file' {
    run file "$ZPWR_SCRIPTS/CPU_Stresser.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script createScriptButDontOpenSublime.sh is text file' {
    run file "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script createTextFile.sh is text file' {
    run file "$ZPWR_SCRIPTS/createTextFile.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script crossOSCommands.sh is text file' {
    run file "$ZPWR_SCRIPTS/crossOSCommands.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script crossOSExecute.sh is text file' {
    run file "$ZPWR_SCRIPTS/crossOSExecute.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script delete_dups.zsh is text file' {
    run file "$ZPWR_SCRIPTS/delete_dups.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script directoryContentsSize.sh is text file' {
    run file "$ZPWR_SCRIPTS/directoryContentsSize.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script dsDownloader.sh is text file' {
    run file "$ZPWR_SCRIPTS/dsDownloader.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script duplicateLineDeleter.sh is text file' {
    run file "$ZPWR_SCRIPTS/duplicateLineDeleter.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script em-server.sh is text file' {
    run file "$ZPWR_SCRIPTS/em-server.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script encrypt.sh is text file' {
    run file "$ZPWR_SCRIPTS/encrypt.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script escapeRemover.stk is text file' {
    run file "$ZPWR_SCRIPTS/escapeRemover.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script evilSkull.sh is text file' {
    run file "$ZPWR_SCRIPTS/evilSkull.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script eyes.sh is text file' {
    run file "$ZPWR_SCRIPTS/eyes.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fdswap.sh is text file' {
    run file "$ZPWR_SCRIPTS/fdswap.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script forDir.sh is text file' {
    run file "$ZPWR_SCRIPTS/forDir.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script forDirDev.sh is text file' {
    run file "$ZPWR_SCRIPTS/forDirDev.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script forDirMain.sh is text file' {
    run file "$ZPWR_SCRIPTS/forDirMain.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script forDirZipRar.zsh is text file' {
    run file "$ZPWR_SCRIPTS/forDirZipRar.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script forever.sh is text file' {
    run file "$ZPWR_SCRIPTS/forever.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fsWatchLongRunning.sh is text file' {
    run file "$ZPWR_SCRIPTS/fsWatchLongRunning.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfAgOpts.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfAgOpts.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfEnv.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfEnv.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfEnvCurrent.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfEnvCurrent.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfEnvVerbs.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfEnvVerbs.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfGitOpts.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfGitOpts.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfGitSearchOpts.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfGtagsOpts.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfGtagsOpts.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfMan.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfMan.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfPreviewOpts.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfPreviewOpts.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfPreviewOpts2Pos.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfPreviewOptsCommon.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfPreviewOptsCommon2Pos.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfPreviewOptsCtrlT.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script fzfPreviewOptsPony.sh is text file' {
    run file "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script genericDisplayer.sh is text file' {
    run file "$ZPWR_SCRIPTS/genericDisplayer.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script genericDisplayerLolcat.sh is text file' {
    run file "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script gitgo.sh is text file' {
    run file "$ZPWR_SCRIPTS/gitgo.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script gitRemoteRepoInformation.sh is text file' {
    run file "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script gitSdiffColorizer.stk is text file' {
    run file "$ZPWR_SCRIPTS/gitSdiffColorizer.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script goForward.sh is text file' {
    run file "$ZPWR_SCRIPTS/goForward.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script headerSummarizer.sh is text file' {
    run file "$ZPWR_SCRIPTS/headerSummarizer.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script help2comp.py is text file' {
    run file "$ZPWR_SCRIPTS/help2comp.py"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script indenterAndDuplicateLineDeleter.sh is text file' {
    run file "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script info.sh is text file' {
    run file "$ZPWR_SCRIPTS/info.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script init.sh is text file' {
    run file "$ZPWR_SCRIPTS/init.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script inotifyWatchLogAndEmailIfNAS.sh is text file' {
    run file "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script iostatShower.sh is text file' {
    run file "$ZPWR_SCRIPTS/iostatShower.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script keybindingsToFZF.zsh is text file' {
    run file "$ZPWR_SCRIPTS/keybindingsToFZF.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script keybindingsToFZFVim.zsh is text file' {
    run file "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script keybindingsToREADME.zsh is text file' {
    run file "$ZPWR_SCRIPTS/keybindingsToREADME.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script lib.sh is text file' {
    run file "$ZPWR_SCRIPTS/lib.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script listAllCommands.sh is text file' {
    run file "$ZPWR_SCRIPTS/listAllCommands.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script logs.sh is text file' {
    run file "$ZPWR_SCRIPTS/logs.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script mantozshcomp.py is text file' {
    run file "$ZPWR_SCRIPTS/mantozshcomp.py"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script manzshcompgen.zsh is text file' {
    run file "$ZPWR_SCRIPTS/manzshcompgen.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script memWatch.sh is text file' {
    run file "$ZPWR_SCRIPTS/memWatch.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script menkeTech.sh is text file' {
    run file "$ZPWR_SCRIPTS/menkeTech.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script menkeTechLolcat.sh is text file' {
    run file "$ZPWR_SCRIPTS/menkeTechLolcat.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script minifySpaces.stk is text file' {
    run file "$ZPWR_SCRIPTS/minifySpaces.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script motd.sh is text file' {
    run file "$ZPWR_SCRIPTS/motd.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script mywatch.sh is text file' {
    run file "$ZPWR_SCRIPTS/mywatch.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script myWatchMaintainEscapes.sh is text file' {
    run file "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script myWatchNoBlink.sh is text file' {
    run file "$ZPWR_SCRIPTS/myWatchNoBlink.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script myWatchNoBlinkColorized.sh is text file' {
    run file "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script odroidtemp.sh is text file' {
    run file "$ZPWR_SCRIPTS/odroidtemp.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script oldCounter.sh is text file' {
    run file "$ZPWR_SCRIPTS/oldCounter.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script openAll.sh is text file' {
    run file "$ZPWR_SCRIPTS/openAll.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script picture_finder.sh is text file' {
    run file "$ZPWR_SCRIPTS/picture_finder.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script pingordie.sh is text file' {
    run file "$ZPWR_SCRIPTS/pingordie.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script pingordieBridge.sh is text file' {
    run file "$ZPWR_SCRIPTS/pingordieBridge.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script pingordieBridgeVPN.sh is text file' {
    run file "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script powerTo.sh is text file' {
    run file "$ZPWR_SCRIPTS/powerTo.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script printHeader.sh is text file' {
    run file "$ZPWR_SCRIPTS/printHeader.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script pydfShower.sh is text file' {
    run file "$ZPWR_SCRIPTS/pydfShower.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script readFIFO.sh is text file' {
    run file "$ZPWR_SCRIPTS/readFIFO.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script redText.sh is text file' {
    run file "$ZPWR_SCRIPTS/redText.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script regexReplace.stk is text file' {
    run file "$ZPWR_SCRIPTS/regexReplace.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script remoteRepoMonitorDaemon.sh is text file' {
    run file "$ZPWR_SCRIPTS/remoteRepoMonitorDaemon.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script removeSpaces.sh is text file' {
    run file "$ZPWR_SCRIPTS/removeSpaces.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script rpiDownloader.sh is text file' {
    run file "$ZPWR_SCRIPTS/rpiDownloader.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script rpiSoftwareUpdater.sh is text file' {
    run file "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script saygoogle.sh is text file' {
    run file "$ZPWR_SCRIPTS/saygoogle.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script sdiffColorizer.stk is text file' {
    run file "$ZPWR_SCRIPTS/sdiffColorizer.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script secureDelete.sh is text file' {
    run file "$ZPWR_SCRIPTS/secureDelete.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script shebangChanger.sh is text file' {
    run file "$ZPWR_SCRIPTS/shebangChanger.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script sixLangDisplayer.sh is text file' {
    run file "$ZPWR_SCRIPTS/sixLangDisplayer.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script sortedArrayCounter.sh is text file' {
    run file "$ZPWR_SCRIPTS/sortedArrayCounter.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script splitReg.sh is text file' {
    run file "$ZPWR_SCRIPTS/splitReg.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script sshTunnelVnc.sh is text file' {
    run file "$ZPWR_SCRIPTS/sshTunnelVnc.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script sshTunnelVnc2.sh is text file' {
    run file "$ZPWR_SCRIPTS/sshTunnelVnc2.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script startContainers.sh is text file' {
    run file "$ZPWR_SCRIPTS/startContainers.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script stdinSdiffColorizer.stk is text file' {
    run file "$ZPWR_SCRIPTS/stdinSdiffColorizer.stk"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script stopContainers.sh is text file' {
    run file "$ZPWR_SCRIPTS/stopContainers.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script sync.sh is text file' {
    run file "$ZPWR_SCRIPTS/sync.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script tailZOU.sh is text file' {
    run file "$ZPWR_SCRIPTS/tailZOU.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script templater.sh is text file' {
    run file "$ZPWR_SCRIPTS/templater.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script test.sh is text file' {
    run file "$ZPWR_SCRIPTS/test.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script textmessage.sh is text file' {
    run file "$ZPWR_SCRIPTS/textmessage.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script tgzLocalInstaller.sh is text file' {
    run file "$ZPWR_SCRIPTS/tgzLocalInstaller.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script timeConverter.sh is text file' {
    run file "$ZPWR_SCRIPTS/timeConverter.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script transfer.sh is text file' {
    run file "$ZPWR_SCRIPTS/transfer.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script updatePi.sh is text file' {
    run file "$ZPWR_SCRIPTS/updatePi.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script updater.sh is text file' {
    run file "$ZPWR_SCRIPTS/updater.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script updaterEmail.sh is text file' {
    run file "$ZPWR_SCRIPTS/updaterEmail.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script updaterForLaunchCtl.sh is text file' {
    run file "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script updaterPip.zsh is text file' {
    run file "$ZPWR_SCRIPTS/updaterPip.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script updaterPipSudo.sh is text file' {
    run file "$ZPWR_SCRIPTS/updaterPipSudo.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script upLoadDS.sh is text file' {
    run file "$ZPWR_SCRIPTS/upLoadDS.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script upLoadPi.sh is text file' {
    run file "$ZPWR_SCRIPTS/upLoadPi.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script upLoadPi2.sh is text file' {
    run file "$ZPWR_SCRIPTS/upLoadPi2.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script uploadWebDS.sh is text file' {
    run file "$ZPWR_SCRIPTS/uploadWebDS.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script uploadWebPi.sh is text file' {
    run file "$ZPWR_SCRIPTS/uploadWebPi.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script userRootRemover.sh is text file' {
    run file "$ZPWR_SCRIPTS/userRootRemover.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchServiceFSWatchGit.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchServiceFSWatchLS-ALH.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchServiceFSWatchPiDesktop.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchServiceFSWatchPiWeb.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchServiceFSWatchRustCompile.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchtree1.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchtree1.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchtree1Color.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchtree1Color.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script watchtree2.sh is text file' {
    run file "$ZPWR_SCRIPTS/watchtree2.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script zpwrBannerSleep.sh is text file' {
    run file "$ZPWR_SCRIPTS/zpwrBannerSleep.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script zpwrClearList.zsh is text file' {
    run file "$ZPWR_SCRIPTS/zpwrClearList.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script zpwrRunner.sh is text file' {
    run file "$ZPWR_SCRIPTS/zpwrRunner.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script zshcompgen.zsh is text file' {
    run file "$ZPWR_SCRIPTS/zshcompgen.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script zshRegenSearchableEnv.zsh is text file' {
    run file "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/combo.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/combo.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/commandToColors.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/commandToColors.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/figletLooper.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/figletLooper.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/figletRandomFont.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/figletRandomFont.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/figletRandomFontOnce.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/figletRandomFontOnce.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/figletRotater.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/figletRotater.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/getPath.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/getPath.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/gradleShadowJar.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/gradleShadowJar.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/istatsShower.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/istatsShower.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/keyboardMaestro.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/keyboardMaestro.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/menkeTechRandomFont.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/menkeTechRandomFont.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/mountInstall.zsh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/mountInstall.zsh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/PIORun.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/PIORun.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/postscriptToPDFCreator.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/postscriptToPDFCreator.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/randomCow.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/randomCow.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/resetWIFI.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/resetWIFI.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/rsyncr.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/rsyncr.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/say.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/say.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/splitReg.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/splitReg.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/tmuxer.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/tmuxer.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/tor.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/tor.sh"
    assert $state equals 0
    assert "$output" contains text
}

@test 'script macOnly/tutorialConfigUpdater.sh is text file' {
    run file "$ZPWR_SCRIPTS/macOnly/tutorialConfigUpdater.sh"
    assert $state equals 0
    assert "$output" contains text
}
