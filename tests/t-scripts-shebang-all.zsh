#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all scripts have shebang
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'script about.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/about.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script allPanes.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/allPanes.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script allPanesSwap.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/allPanesSwap.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script archetypeShower.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/archetypeShower.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script autoUpdater.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/autoUpdater.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script backgroundMastery.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/backgroundMastery.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script backupConfig.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/backupConfig.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script banner.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/banner.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script batchRename.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/batchRename.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script blueText.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/blueText.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script blueUpperText.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/blueUpperText.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script boiler_gen.py has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/boiler_gen.py")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script boldText.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/boldText.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script boxPrint.pl has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/boxPrint.pl")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script bridgeDown.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/bridgeDown.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script bridgeUp.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/bridgeUp.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script c.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/c.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script clearTrash.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/clearTrash.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script colorLogger.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/colorLogger.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script connectionShower.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/connectionShower.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script coolFormatter.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/coolFormatter.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script CPU_Stresser.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/CPU_Stresser.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script createScriptButDontOpenSublime.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/createScriptButDontOpenSublime.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script createTextFile.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/createTextFile.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script crossOSCommands.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/crossOSCommands.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script crossOSExecute.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/crossOSExecute.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script delete_dups.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/delete_dups.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script directoryContentsSize.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/directoryContentsSize.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script dsDownloader.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/dsDownloader.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script duplicateLineDeleter.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/duplicateLineDeleter.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script em-server.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/em-server.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script encrypt.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/encrypt.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script escapeRemover.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/escapeRemover.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script evilSkull.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/evilSkull.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script eyes.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/eyes.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fdswap.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fdswap.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script forDir.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/forDir.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script forDirDev.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/forDirDev.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script forDirMain.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/forDirMain.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script forDirZipRar.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/forDirZipRar.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script forever.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/forever.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fsWatchLongRunning.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fsWatchLongRunning.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfAgOpts.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfAgOpts.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfEnv.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfEnv.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfEnvCurrent.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfEnvCurrent.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfEnvVerbs.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfEnvVerbs.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfGitOpts.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfGitOpts.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfGitSearchOpts.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfGitSearchOpts.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfGtagsOpts.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfGtagsOpts.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfMan.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfMan.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfPreviewOpts.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfPreviewOpts.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfPreviewOpts2Pos.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfPreviewOpts2Pos.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfPreviewOptsCommon.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCommon2Pos.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfPreviewOptsCommon2Pos.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfPreviewOptsCtrlT.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfPreviewOptsCtrlT.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script fzfPreviewOptsPony.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/fzfPreviewOptsPony.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script genericDisplayer.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/genericDisplayer.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script genericDisplayerLolcat.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/genericDisplayerLolcat.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script gitgo.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/gitgo.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script gitRemoteRepoInformation.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/gitRemoteRepoInformation.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script gitSdiffColorizer.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/gitSdiffColorizer.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script goForward.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/goForward.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script headerSummarizer.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/headerSummarizer.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script help2comp.py has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/help2comp.py")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script indenterAndDuplicateLineDeleter.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/indenterAndDuplicateLineDeleter.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script info.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/info.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script init.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/init.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script inotifyWatchLogAndEmailIfNAS.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/inotifyWatchLogAndEmailIfNAS.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script iostatShower.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/iostatShower.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script keybindingsToFZF.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/keybindingsToFZF.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script keybindingsToFZFVim.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/keybindingsToFZFVim.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script keybindingsToREADME.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/keybindingsToREADME.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script lib.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/lib.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script listAllCommands.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/listAllCommands.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script logs.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/logs.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script mantozshcomp.py has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/mantozshcomp.py")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script manzshcompgen.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/manzshcompgen.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script memWatch.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/memWatch.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script menkeTech.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/menkeTech.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script menkeTechLolcat.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/menkeTechLolcat.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script minifySpaces.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/minifySpaces.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script motd.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/motd.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script mywatch.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/mywatch.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script myWatchMaintainEscapes.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/myWatchMaintainEscapes.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script myWatchNoBlink.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/myWatchNoBlink.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script myWatchNoBlinkColorized.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/myWatchNoBlinkColorized.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script odroidtemp.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/odroidtemp.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script oldCounter.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/oldCounter.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script openAll.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/openAll.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script picture_finder.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/picture_finder.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script pingordie.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/pingordie.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script pingordieBridge.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/pingordieBridge.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script pingordieBridgeVPN.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/pingordieBridgeVPN.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script powerTo.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/powerTo.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script printHeader.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/printHeader.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script pydfShower.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/pydfShower.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script readFIFO.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/readFIFO.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script redText.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/redText.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script regexReplace.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/regexReplace.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script remoteRepoMonitorDaemon.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/remoteRepoMonitorDaemon.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script removeSpaces.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/removeSpaces.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script rpiDownloader.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/rpiDownloader.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script rpiSoftwareUpdater.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/rpiSoftwareUpdater.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script saygoogle.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/saygoogle.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script sdiffColorizer.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/sdiffColorizer.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script secureDelete.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/secureDelete.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script shebangChanger.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/shebangChanger.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script sixLangDisplayer.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/sixLangDisplayer.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script sortedArrayCounter.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/sortedArrayCounter.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script splitReg.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/splitReg.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script sshTunnelVnc.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/sshTunnelVnc.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script sshTunnelVnc2.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/sshTunnelVnc2.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script startContainers.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/startContainers.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script stdinSdiffColorizer.pr has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/stdinSdiffColorizer.pr")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script stopContainers.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/stopContainers.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script sync.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/sync.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script tailZOU.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/tailZOU.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script templater.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/templater.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script test.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/test.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script textmessage.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/textmessage.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script tgzLocalInstaller.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/tgzLocalInstaller.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script timeConverter.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/timeConverter.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script transfer.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/transfer.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script updatePi.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/updatePi.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script updater.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/updater.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script updaterEmail.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/updaterEmail.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script updaterForLaunchCtl.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/updaterForLaunchCtl.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script updaterPip.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/updaterPip.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script updaterPipSudo.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/updaterPipSudo.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script upLoadDS.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/upLoadDS.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script upLoadPi.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/upLoadPi.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script upLoadPi2.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/upLoadPi2.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script uploadWebDS.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/uploadWebDS.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script uploadWebPi.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/uploadWebPi.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script userRootRemover.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/userRootRemover.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchServiceFSWatchGit.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchServiceFSWatchGit.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchServiceFSWatchLS-ALH.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchServiceFSWatchLS-ALH.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiDesktop.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchServiceFSWatchPiDesktop.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchServiceFSWatchPiWeb.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchServiceFSWatchPiWeb.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchServiceFSWatchRustCompile.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchServiceFSWatchRustCompile.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchtree1.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchtree1.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchtree1Color.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchtree1Color.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script watchtree2.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/watchtree2.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script zpwrBannerSleep.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/zpwrBannerSleep.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script zpwrClearList.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/zpwrClearList.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script zpwrRunner.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/zpwrRunner.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script zshcompgen.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/zshcompgen.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script zshRegenSearchableEnv.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/combo.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/combo.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/commandToColors.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/commandToColors.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/figletLooper.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/figletLooper.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/figletRandomFont.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/figletRandomFont.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/figletRandomFontOnce.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/figletRandomFontOnce.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/figletRotater.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/figletRotater.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/getPath.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/getPath.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/gradleShadowJar.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/gradleShadowJar.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/istatsShower.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/istatsShower.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/keyboardMaestro.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/keyboardMaestro.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/menkeTechRandomFont.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/menkeTechRandomFont.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/mountInstall.zsh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/mountInstall.zsh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/PIORun.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/PIORun.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/postscriptToPDFCreator.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/postscriptToPDFCreator.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/randomCow.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/randomCow.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/resetWIFI.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/resetWIFI.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/rsyncr.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/rsyncr.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/say.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/say.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/splitReg.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/splitReg.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/tmuxer.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/tmuxer.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/tor.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/tor.sh")
    run test -n "$first_line"
    assert $state equals 0
}

@test 'script macOnly/tutorialConfigUpdater.sh has shebang' {
    local first_line
    first_line=$(head -1 "$ZPWR_SCRIPTS/macOnly/tutorialConfigUpdater.sh")
    run test -n "$first_line"
    assert $state equals 0
}
