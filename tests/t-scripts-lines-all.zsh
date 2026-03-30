#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all scripts have lines
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'script about.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/about.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script allPanes.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/allPanes.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script allPanesSwap.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/allPanesSwap.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script archetypeShower.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/archetypeShower.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script autoUpdater.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/autoUpdater.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script backgroundMastery.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/backgroundMastery.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script backupConfig.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/backupConfig.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script banner.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/banner.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script batchRename.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/batchRename.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script blueText.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/blueText.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script blueUpperText.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/blueUpperText.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script boiler_gen.py has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/boiler_gen.py")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script boldText.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/boldText.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script boxPrint.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/boxPrint.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script bridgeDown.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/bridgeDown.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script bridgeUp.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/bridgeUp.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script c.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/c.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script clearTrash.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/clearTrash.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script colorLogger.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/colorLogger.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script connectionShower.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/connectionShower.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script coolFormatter.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/coolFormatter.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script CPU_Stresser.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/CPU_Stresser.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script createScriptButDontOpenSublime.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script createTextFile.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/createTextFile.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script crossOSCommands.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/crossOSCommands.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script crossOSExecute.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/crossOSExecute.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script delete_dups.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/delete_dups.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script directoryContentsSize.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/directoryContentsSize.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script dsDownloader.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/dsDownloader.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script duplicateLineDeleter.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/duplicateLineDeleter.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script em-server.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/em-server.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script encrypt.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/encrypt.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script escapeRemover.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/escapeRemover.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script etags has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/etags")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script evilSkull.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/evilSkull.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script eyes.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/eyes.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fdswap.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fdswap.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script forDir.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/forDir.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script forDirDev.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/forDirDev.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script forDirMain.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/forDirMain.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script forDirZipRar.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/forDirZipRar.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script forever.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/forever.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fsWatchLongRunning.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fsWatchLongRunning.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfAgOpts.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfAgOpts.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfEnv.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfEnv.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfEnvCurrent.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfEnvCurrent.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfEnvVerbs.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfEnvVerbs.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfGitOpts.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfGitOpts.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfGitSearchOpts.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfGtagsOpts.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfGtagsOpts.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfMan.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfMan.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfPreviewOpts.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfPreviewOpts.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfPreviewOpts2Pos.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon2Pos.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfPreviewOptsCtrlT.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script fzfPreviewOptsPony.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script genericDisplayer.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/genericDisplayer.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script genericDisplayerLolcat.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script gitgo.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/gitgo.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script gitRemoteRepoInformation.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script gitSdiffColorizer.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/gitSdiffColorizer.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script goForward.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/goForward.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script headerSummarizer.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/headerSummarizer.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script help2comp.py has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/help2comp.py")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script indenterAndDuplicateLineDeleter.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script info.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/info.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script init.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/init.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script inotifyWatchLogAndEmailIfNAS.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script iostatShower.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/iostatShower.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script keybindingsToFZF.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/keybindingsToFZF.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script keybindingsToFZFVim.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script keybindingsToREADME.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/keybindingsToREADME.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script lib.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/lib.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script listAllCommands.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/listAllCommands.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script logs.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/logs.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script mantozshcomp.py has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/mantozshcomp.py")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script manzshcompgen.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/manzshcompgen.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script memWatch.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/memWatch.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script menkeTech.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/menkeTech.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script menkeTechLolcat.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/menkeTechLolcat.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script minifySpaces.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/minifySpaces.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script motd.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/motd.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script mywatch.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/mywatch.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script myWatchMaintainEscapes.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script myWatchNoBlink.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/myWatchNoBlink.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script myWatchNoBlinkColorized.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script odroidtemp.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/odroidtemp.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script oldCounter.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/oldCounter.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script openAll.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/openAll.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script picture_finder.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/picture_finder.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script pingordie.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/pingordie.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script pingordieBridge.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/pingordieBridge.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script pingordieBridgeVPN.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script powerTo.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/powerTo.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script printHeader.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/printHeader.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script pydfShower.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/pydfShower.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script readFIFO.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/readFIFO.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script redText.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/redText.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script regexReplace.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/regexReplace.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script remoteRepoMonitorDaemon.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/remoteRepoMonitorDaemon.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script removeSpaces.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/removeSpaces.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script rpiDownloader.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/rpiDownloader.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script rpiSoftwareUpdater.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script saygoogle.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/saygoogle.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script sdiffColorizer.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/sdiffColorizer.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script secureDelete.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/secureDelete.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script shebangChanger.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/shebangChanger.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script sixLangDisplayer.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/sixLangDisplayer.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script sortedArrayCounter.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/sortedArrayCounter.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script splitReg.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/splitReg.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script sshTunnelVnc.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/sshTunnelVnc.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script sshTunnelVnc2.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/sshTunnelVnc2.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script startContainers.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/startContainers.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script stdinSdiffColorizer.pl has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/stdinSdiffColorizer.pl")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script stopContainers.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/stopContainers.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script sync.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/sync.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script tailZOU.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/tailZOU.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script templater.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/templater.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script test.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/test.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script textmessage.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/textmessage.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script tgzLocalInstaller.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/tgzLocalInstaller.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script timeConverter.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/timeConverter.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script transfer.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/transfer.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script updatePi.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/updatePi.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script updater.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/updater.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script updaterEmail.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/updaterEmail.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script updaterForLaunchCtl.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script updaterPip.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/updaterPip.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script updaterPipSudo.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/updaterPipSudo.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script upLoadDS.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/upLoadDS.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script upLoadPi.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/upLoadPi.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script upLoadPi2.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/upLoadPi2.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script uploadWebDS.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/uploadWebDS.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script uploadWebPi.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/uploadWebPi.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script userRootRemover.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/userRootRemover.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchServiceFSWatchGit.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchServiceFSWatchLS-ALH.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiDesktop.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiWeb.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchServiceFSWatchRustCompile.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchtree1.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchtree1.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchtree1Color.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchtree1Color.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script watchtree2.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/watchtree2.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script zpwrBannerSleep.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/zpwrBannerSleep.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script zpwrClearList.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/zpwrClearList.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script zpwrRunner.sh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/zpwrRunner.sh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script zshcompgen.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/zshcompgen.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}

@test 'script zshRegenSearchableEnv.zsh has lines' {
    local lc
    lc=$(wc -l < "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh")
    run test "$lc" -gt 0
    assert $state equals 0
}
