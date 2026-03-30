#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all ZPWR_VERBS values are callable
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_VERBS[a] is callable' {
    local val="${ZPWR_VERBS[a]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[about] is callable' {
    local val="${ZPWR_VERBS[about]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[alacritty] is callable' {
    local val="${ZPWR_VERBS[alacritty]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[all] is callable' {
    local val="${ZPWR_VERBS[all]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[allsearch] is callable' {
    local val="${ZPWR_VERBS[allsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[altprettyprint] is callable' {
    local val="${ZPWR_VERBS[altprettyprint]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[animate] is callable' {
    local val="${ZPWR_VERBS[animate]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[attach] is callable' {
    local val="${ZPWR_VERBS[attach]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoload] is callable' {
    local val="${ZPWR_VERBS[autoload]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadcount] is callable' {
    local val="${ZPWR_VERBS[autoloadcount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadlist] is callable' {
    local val="${ZPWR_VERBS[autoloadlist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[background] is callable' {
    local val="${ZPWR_VERBS[background]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backup] is callable' {
    local val="${ZPWR_VERBS[backup]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backuphistory] is callable' {
    local val="${ZPWR_VERBS[backuphistory]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[banner] is callable' {
    local val="${ZPWR_VERBS[banner]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannercounts] is callable' {
    local val="${ZPWR_VERBS[bannercounts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerlolcat] is callable' {
    local val="${ZPWR_VERBS[bannerlolcat]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannernopony] is callable' {
    local val="${ZPWR_VERBS[bannernopony]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerpony] is callable' {
    local val="${ZPWR_VERBS[bannerpony]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[brc] is callable' {
    local val="${ZPWR_VERBS[brc]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[c] is callable' {
    local val="${ZPWR_VERBS[c]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cat] is callable' {
    local val="${ZPWR_VERBS[cat]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catcd] is callable' {
    local val="${ZPWR_VERBS[catcd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catnviminforecentf] is callable' {
    local val="${ZPWR_VERBS[catnviminforecentf]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catrecentfviminfo] is callable' {
    local val="${ZPWR_VERBS[catrecentfviminfo]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catviminfo] is callable' {
    local val="${ZPWR_VERBS[catviminfo]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cd] is callable' {
    local val="${ZPWR_VERBS[cd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cdup] is callable' {
    local val="${ZPWR_VERBS[cdup]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cfasd] is callable' {
    local val="${ZPWR_VERBS[cfasd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changename] is callable' {
    local val="${ZPWR_VERBS[changename]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changenamezpwr] is callable' {
    local val="${ZPWR_VERBS[changenamezpwr]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanall] is callable' {
    local val="${ZPWR_VERBS[cleanall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancache] is callable' {
    local val="${ZPWR_VERBS[cleancache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancompcache] is callable' {
    local val="${ZPWR_VERBS[cleancompcache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirs] is callable' {
    local val="${ZPWR_VERBS[cleandirs]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirsandtemp] is callable' {
    local val="${ZPWR_VERBS[cleandirsandtemp]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcache] is callable' {
    local val="${ZPWR_VERBS[cleangitcache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcleancache] is callable' {
    local val="${ZPWR_VERBS[cleangitcleancache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitdirtycache] is callable' {
    local val="${ZPWR_VERBS[cleangitdirtycache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanlog] is callable' {
    local val="${ZPWR_VERBS[cleanlog]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanrefreshupdate] is callable' {
    local val="${ZPWR_VERBS[cleanrefreshupdate]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleantemp] is callable' {
    local val="${ZPWR_VERBS[cleantemp]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanupdatedeps] is callable' {
    local val="${ZPWR_VERBS[cleanupdatedeps]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearlist] is callable' {
    local val="${ZPWR_VERBS[clearlist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearls] is callable' {
    local val="${ZPWR_VERBS[clearls]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clone] is callable' {
    local val="${ZPWR_VERBS[clone]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[color2] is callable' {
    local val="${ZPWR_VERBS[color2]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colorsdiff] is callable' {
    local val="${ZPWR_VERBS[colorsdiff]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest] is callable' {
    local val="${ZPWR_VERBS[colortest]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest256] is callable' {
    local val="${ZPWR_VERBS[colortest256]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compile] is callable' {
    local val="${ZPWR_VERBS[compile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefiles] is callable' {
    local val="${ZPWR_VERBS[compilefiles]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefpath] is callable' {
    local val="${ZPWR_VERBS[compilefpath]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[completions] is callable' {
    local val="${ZPWR_VERBS[completions]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[comps] is callable' {
    local val="${ZPWR_VERBS[comps]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[copycommand] is callable' {
    local val="${ZPWR_VERBS[copycommand]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[creategif] is callable' {
    local val="${ZPWR_VERBS[creategif]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[curl] is callable' {
    local val="${ZPWR_VERBS[curl]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[decompile] is callable' {
    local val="${ZPWR_VERBS[decompile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[deduppaths] is callable' {
    local val="${ZPWR_VERBS[deduppaths]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[detach] is callable' {
    local val="${ZPWR_VERBS[detach]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dfimage] is callable' {
    local val="${ZPWR_VERBS[dfimage]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[digs] is callable' {
    local val="${ZPWR_VERBS[digs]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dirsearch] is callable' {
    local val="${ZPWR_VERBS[dirsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dockerwipe] is callable' {
    local val="${ZPWR_VERBS[dockerwipe]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[e] is callable' {
    local val="${ZPWR_VERBS[e]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[edit] is callable' {
    local val="${ZPWR_VERBS[edit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[editor] is callable' {
    local val="${ZPWR_VERBS[editor]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsall] is callable' {
    local val="${ZPWR_VERBS[emacsall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsalledit] is callable' {
    local val="${ZPWR_VERBS[emacsalledit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsallserver] is callable' {
    local val="${ZPWR_VERBS[emacsallserver]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsautoload] is callable' {
    local val="${ZPWR_VERBS[emacsautoload]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacscd] is callable' {
    local val="${ZPWR_VERBS[emacscd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsconfig] is callable' {
    local val="${ZPWR_VERBS[emacsconfig]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsctags] is callable' {
    local val="${ZPWR_VERBS[emacsctags]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsemacsconfig] is callable' {
    local val="${ZPWR_VERBS[emacsemacsconfig]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearch] is callable' {
    local val="${ZPWR_VERBS[emacsfilesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearchedit] is callable' {
    local val="${ZPWR_VERBS[emacsfilesearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearch] is callable' {
    local val="${ZPWR_VERBS[emacsfindsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearchedit] is callable' {
    local val="${ZPWR_VERBS[emacsfindsearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtags] is callable' {
    local val="${ZPWR_VERBS[emacsgtags]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtagsedit] is callable' {
    local val="${ZPWR_VERBS[emacsgtagsedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearch] is callable' {
    local val="${ZPWR_VERBS[emacslocatesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearchedit] is callable' {
    local val="${ZPWR_VERBS[emacslocatesearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsplugincount] is callable' {
    local val="${ZPWR_VERBS[emacsplugincount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacspluginlist] is callable' {
    local val="${ZPWR_VERBS[emacspluginlist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecent] is callable' {
    local val="${ZPWR_VERBS[emacsrecent]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentcd] is callable' {
    local val="${ZPWR_VERBS[emacsrecentcd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudo] is callable' {
    local val="${ZPWR_VERBS[emacsrecentsudo]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudocd] is callable' {
    local val="${ZPWR_VERBS[emacsrecentsudocd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscriptedit] is callable' {
    local val="${ZPWR_VERBS[emacsscriptedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscripts] is callable' {
    local val="${ZPWR_VERBS[emacsscripts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstests] is callable' {
    local val="${ZPWR_VERBS[emacstests]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstokens] is callable' {
    local val="${ZPWR_VERBS[emacstokens]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearch] is callable' {
    local val="${ZPWR_VERBS[emacswordsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearchedit] is callable' {
    local val="${ZPWR_VERBS[emacswordsearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacszpwr] is callable' {
    local val="${ZPWR_VERBS[emacszpwr]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envaccept] is callable' {
    local val="${ZPWR_VERBS[envaccept]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcachesearch] is callable' {
    local val="${ZPWR_VERBS[envcachesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcounts] is callable' {
    local val="${ZPWR_VERBS[envcounts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envedit] is callable' {
    local val="${ZPWR_VERBS[envedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcachesearch] is callable' {
    local val="${ZPWR_VERBS[environmentcachesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcounts] is callable' {
    local val="${ZPWR_VERBS[environmentcounts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariables] is callable' {
    local val="${ZPWR_VERBS[environmentvariables]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariablesall] is callable' {
    local val="${ZPWR_VERBS[environmentvariablesall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvars] is callable' {
    local val="${ZPWR_VERBS[environmentvars]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvarsall] is callable' {
    local val="${ZPWR_VERBS[environmentvarsall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvars] is callable' {
    local val="${ZPWR_VERBS[envvars]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvarsall] is callable' {
    local val="${ZPWR_VERBS[envvarsall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ev] is callable' {
    local val="${ZPWR_VERBS[ev]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[eva] is callable' {
    local val="${ZPWR_VERBS[eva]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglob] is callable' {
    local val="${ZPWR_VERBS[execglob]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglobparallel] is callable' {
    local val="${ZPWR_VERBS[execglobparallel]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execpy] is callable' {
    local val="${ZPWR_VERBS[execpy]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercism] is callable' {
    local val="${ZPWR_VERBS[exercism]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismdownload] is callable' {
    local val="${ZPWR_VERBS[exercismdownload]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismedit] is callable' {
    local val="${ZPWR_VERBS[exercismedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exists] is callable' {
    local val="${ZPWR_VERBS[exists]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[existscommand] is callable' {
    local val="${ZPWR_VERBS[existscommand]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[f] is callable' {
    local val="${ZPWR_VERBS[f]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[figletfonts] is callable' {
    local val="${ZPWR_VERBS[figletfonts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearch] is callable' {
    local val="${ZPWR_VERBS[filesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearchedit] is callable' {
    local val="${ZPWR_VERBS[filesearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearch] is callable' {
    local val="${ZPWR_VERBS[findsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearchedit] is callable' {
    local val="${ZPWR_VERBS[findsearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for] is callable' {
    local val="${ZPWR_VERBS[for]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for10] is callable' {
    local val="${ZPWR_VERBS[for10]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordir] is callable' {
    local val="${ZPWR_VERBS[fordir]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordirupdate] is callable' {
    local val="${ZPWR_VERBS[fordirupdate]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitadd] is callable' {
    local val="${ZPWR_VERBS[forgitadd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitclean] is callable' {
    local val="${ZPWR_VERBS[forgitclean]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitdiff] is callable' {
    local val="${ZPWR_VERBS[forgitdiff]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignore] is callable' {
    local val="${ZPWR_VERBS[forgitignore]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreclean] is callable' {
    local val="${ZPWR_VERBS[forgitignoreclean]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreget] is callable' {
    local val="${ZPWR_VERBS[forgitignoreget]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignorelist] is callable' {
    local val="${ZPWR_VERBS[forgitignorelist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreupdate] is callable' {
    local val="${ZPWR_VERBS[forgitignoreupdate]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitinfo] is callable' {
    local val="${ZPWR_VERBS[forgitinfo]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitlog] is callable' {
    local val="${ZPWR_VERBS[forgitlog]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitreset] is callable' {
    local val="${ZPWR_VERBS[forgitreset]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitrestore] is callable' {
    local val="${ZPWR_VERBS[forgitrestore]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitstash] is callable' {
    local val="${ZPWR_VERBS[forgitstash]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitwarn] is callable' {
    local val="${ZPWR_VERBS[forgitwarn]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forked] is callable' {
    local val="${ZPWR_VERBS[forked]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forward] is callable' {
    local val="${ZPWR_VERBS[forward]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fp] is callable' {
    local val="${ZPWR_VERBS[fp]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fwd] is callable' {
    local val="${ZPWR_VERBS[fwd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gh] is callable' {
    local val="${ZPWR_VERBS[gh]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghcontribcount] is callable' {
    local val="${ZPWR_VERBS[ghcontribcount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghz] is callable' {
    local val="${ZPWR_VERBS[ghz]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitaemail] is callable' {
    local val="${ZPWR_VERBS[gitaemail]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcemail] is callable' {
    local val="${ZPWR_VERBS[gitcemail]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcache] is callable' {
    local val="${ZPWR_VERBS[gitclearcache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcommit] is callable' {
    local val="${ZPWR_VERBS[gitclearcommit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearfile] is callable' {
    local val="${ZPWR_VERBS[gitclearfile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommit] is callable' {
    local val="${ZPWR_VERBS[gitcommit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommitcount] is callable' {
    local val="${ZPWR_VERBS[gitcommitcount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommits] is callable' {
    local val="${ZPWR_VERBS[gitcommits]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitconfig] is callable' {
    local val="${ZPWR_VERBS[gitconfig]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcount] is callable' {
    local val="${ZPWR_VERBS[gitcontribcount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountdirs] is callable' {
    local val="${ZPWR_VERBS[gitcontribcountdirs]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountlines] is callable' {
    local val="${ZPWR_VERBS[gitcontribcountlines]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitdir] is callable' {
    local val="${ZPWR_VERBS[gitdir]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitedittag] is callable' {
    local val="${ZPWR_VERBS[gitedittag]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitemail] is callable' {
    local val="${ZPWR_VERBS[gitemail]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitforalldir] is callable' {
    local val="${ZPWR_VERBS[gitforalldir]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirdevelop] is callable' {
    local val="${ZPWR_VERBS[gitfordirdevelop]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirmain] is callable' {
    local val="${ZPWR_VERBS[gitfordirmain]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalconfig] is callable' {
    local val="${ZPWR_VERBS[gitglobalconfig]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalignores] is callable' {
    local val="${ZPWR_VERBS[gitglobalignores]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[github] is callable' {
    local val="${ZPWR_VERBS[github]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcontribcount] is callable' {
    local val="${ZPWR_VERBS[githubcontribcount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcreate] is callable' {
    local val="${ZPWR_VERBS[githubcreate]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubdelete] is callable' {
    local val="${ZPWR_VERBS[githubdelete]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubzpwr] is callable' {
    local val="${ZPWR_VERBS[githubzpwr]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignore] is callable' {
    local val="${ZPWR_VERBS[gitignore]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignores] is callable' {
    local val="${ZPWR_VERBS[gitignores]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitlargest] is callable' {
    local val="${ZPWR_VERBS[gitlargest]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitremotes] is callable' {
    local val="${ZPWR_VERBS[gitremotes]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleancacheexec] is callable' {
    local val="${ZPWR_VERBS[gitreposcleancacheexec]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleanexec] is callable' {
    local val="${ZPWR_VERBS[gitreposcleanexec]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtycacheexec] is callable' {
    local val="${ZPWR_VERBS[gitreposdirtycacheexec]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtyexec] is callable' {
    local val="${ZPWR_VERBS[gitreposdirtyexec]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposexec] is callable' {
    local val="${ZPWR_VERBS[gitreposexec]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposfile] is callable' {
    local val="${ZPWR_VERBS[gitreposfile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitsearch] is callable' {
    local val="${ZPWR_VERBS[gitsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gittotallines] is callable' {
    local val="${ZPWR_VERBS[gittotallines]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatefordir] is callable' {
    local val="${ZPWR_VERBS[gitupdatefordir]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatetag] is callable' {
    local val="${ZPWR_VERBS[gitupdatetag]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordir] is callable' {
    local val="${ZPWR_VERBS[gitzfordir]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirdevelop] is callable' {
    local val="${ZPWR_VERBS[gitzfordirdevelop]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirmain] is callable' {
    local val="${ZPWR_VERBS[gitzfordirmain]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[goclean] is callable' {
    local val="${ZPWR_VERBS[goclean]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[google] is callable' {
    local val="${ZPWR_VERBS[google]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[grep] is callable' {
    local val="${ZPWR_VERBS[grep]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hc] is callable' {
    local val="${ZPWR_VERBS[hc]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hd] is callable' {
    local val="${ZPWR_VERBS[hd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[help] is callable' {
    local val="${ZPWR_VERBS[help]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hidden] is callable' {
    local val="${ZPWR_VERBS[hidden]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hist] is callable' {
    local val="${ZPWR_VERBS[hist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histedit] is callable' {
    local val="${ZPWR_VERBS[histedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histfile] is callable' {
    local val="${ZPWR_VERBS[histfile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[home] is callable' {
    local val="${ZPWR_VERBS[home]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoload] is callable' {
    local val="${ZPWR_VERBS[homeautoload]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoloadcommon] is callable' {
    local val="${ZPWR_VERBS[homeautoloadcommon]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homecomps] is callable' {
    local val="${ZPWR_VERBS[homecomps]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeenv] is callable' {
    local val="${ZPWR_VERBS[homeenv]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeexercism] is callable' {
    local val="${ZPWR_VERBS[homeexercism]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeinstall] is callable' {
    local val="${ZPWR_VERBS[homeinstall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homelocal] is callable' {
    local val="${ZPWR_VERBS[homelocal]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homescripts] is callable' {
    local val="${ZPWR_VERBS[homescripts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometest] is callable' {
    local val="${ZPWR_VERBS[hometest]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometests] is callable' {
    local val="${ZPWR_VERBS[hometests]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometmux] is callable' {
    local val="${ZPWR_VERBS[hometmux]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[info] is callable' {
    local val="${ZPWR_VERBS[info]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[install] is callable' {
    local val="${ZPWR_VERBS[install]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[kill] is callable' {
    local val="${ZPWR_VERBS[kill]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killedit] is callable' {
    local val="${ZPWR_VERBS[killedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killmux] is callable' {
    local val="${ZPWR_VERBS[killmux]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killremote] is callable' {
    local val="${ZPWR_VERBS[killremote]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[linecount] is callable' {
    local val="${ZPWR_VERBS[linecount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[list] is callable' {
    local val="${ZPWR_VERBS[list]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loadjenv] is callable' {
    local val="${ZPWR_VERBS[loadjenv]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearch] is callable' {
    local val="${ZPWR_VERBS[locatesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearchedit] is callable' {
    local val="${ZPWR_VERBS[locatesearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebug] is callable' {
    local val="${ZPWR_VERBS[logdebug]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebugconsole] is callable' {
    local val="${ZPWR_VERBS[logdebugconsole]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerror] is callable' {
    local val="${ZPWR_VERBS[logerror]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerrorconsole] is callable' {
    local val="${ZPWR_VERBS[logerrorconsole]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logincount] is callable' {
    local val="${ZPWR_VERBS[logincount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfo] is callable' {
    local val="${ZPWR_VERBS[loginfo]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfoconsole] is callable' {
    local val="${ZPWR_VERBS[loginfoconsole]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtrace] is callable' {
    local val="${ZPWR_VERBS[logtrace]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtraceconsole] is callable' {
    local val="${ZPWR_VERBS[logtraceconsole]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ls] is callable' {
    local val="${ZPWR_VERBS[ls]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsof] is callable' {
    local val="${ZPWR_VERBS[lsof]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsofedit] is callable' {
    local val="${ZPWR_VERBS[lsofedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makedir] is callable' {
    local val="${ZPWR_VERBS[makedir]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makefile] is callable' {
    local val="${ZPWR_VERBS[makefile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[man] is callable' {
    local val="${ZPWR_VERBS[man]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[modules] is callable' {
    local val="${ZPWR_VERBS[modules]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[mygithub] is callable' {
    local val="${ZPWR_VERBS[mygithub]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[open] is callable' {
    local val="${ZPWR_VERBS[open]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[opencommand] is callable' {
    local val="${ZPWR_VERBS[opencommand]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[openurl] is callable' {
    local val="${ZPWR_VERBS[openurl]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[options] is callable' {
    local val="${ZPWR_VERBS[options]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastebuffer] is callable' {
    local val="${ZPWR_VERBS[pastebuffer]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastecommand] is callable' {
    local val="${ZPWR_VERBS[pastecommand]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastestring] is callable' {
    local val="${ZPWR_VERBS[pastestring]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pi] is callable' {
    local val="${ZPWR_VERBS[pi]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ping] is callable' {
    local val="${ZPWR_VERBS[ping]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pir] is callable' {
    local val="${ZPWR_VERBS[pir]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[plugins] is callable' {
    local val="${ZPWR_VERBS[plugins]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[poll] is callable' {
    local val="${ZPWR_VERBS[poll]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[post] is callable' {
    local val="${ZPWR_VERBS[post]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pre] is callable' {
    local val="${ZPWR_VERBS[pre]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[prettyprint] is callable' {
    local val="${ZPWR_VERBS[prettyprint]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[printmap] is callable' {
    local val="${ZPWR_VERBS[printmap]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ps] is callable' {
    local val="${ZPWR_VERBS[ps]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pstreemonitor] is callable' {
    local val="${ZPWR_VERBS[pstreemonitor]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pygmentcolors] is callable' {
    local val="${ZPWR_VERBS[pygmentcolors]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[r] is callable' {
    local val="${ZPWR_VERBS[r]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompile] is callable' {
    local val="${ZPWR_VERBS[recompile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefiles] is callable' {
    local val="${ZPWR_VERBS[recompilefiles]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefpath] is callable' {
    local val="${ZPWR_VERBS[recompilefpath]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[refreshzwc] is callable' {
    local val="${ZPWR_VERBS[refreshzwc]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regen] is callable' {
    local val="${ZPWR_VERBS[regen]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenall] is callable' {
    local val="${ZPWR_VERBS[regenall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenconfiglinks] is callable' {
    local val="${ZPWR_VERBS[regenconfiglinks]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenctags] is callable' {
    local val="${ZPWR_VERBS[regenctags]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenenvcache] is callable' {
    local val="${ZPWR_VERBS[regenenvcache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitdirtyrepocache] is callable' {
    local val="${ZPWR_VERBS[regengitdirtyrepocache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitrepocache] is callable' {
    local val="${ZPWR_VERBS[regengitrepocache]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtags] is callable' {
    local val="${ZPWR_VERBS[regengtags]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagspygments] is callable' {
    local val="${ZPWR_VERBS[regengtagspygments]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagstype] is callable' {
    local val="${ZPWR_VERBS[regengtagstype]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenhistory] is callable' {
    local val="${ZPWR_VERBS[regenhistory]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenkeybindings] is callable' {
    local val="${ZPWR_VERBS[regenkeybindings]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenpowerline] is callable' {
    local val="${ZPWR_VERBS[regenpowerline]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenzsh] is callable' {
    local val="${ZPWR_VERBS[regenzsh]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reload] is callable' {
    local val="${ZPWR_VERBS[reload]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[relpath] is callable' {
    local val="${ZPWR_VERBS[relpath]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rename] is callable' {
    local val="${ZPWR_VERBS[rename]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[replacer] is callable' {
    local val="${ZPWR_VERBS[replacer]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[repo] is callable' {
    local val="${ZPWR_VERBS[repo]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reset] is callable' {
    local val="${ZPWR_VERBS[reset]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restart] is callable' {
    local val="${ZPWR_VERBS[restart]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restorehistory] is callable' {
    local val="${ZPWR_VERBS[restorehistory]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[return2] is callable' {
    local val="${ZPWR_VERBS[return2]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reveal] is callable' {
    local val="${ZPWR_VERBS[reveal]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[revealrecurse] is callable' {
    local val="${ZPWR_VERBS[revealrecurse]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reverse] is callable' {
    local val="${ZPWR_VERBS[reverse]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rmconfiglinks] is callable' {
    local val="${ZPWR_VERBS[rmconfiglinks]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rvs] is callable' {
    local val="${ZPWR_VERBS[rvs]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptcount] is callable' {
    local val="${ZPWR_VERBS[scriptcount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptlist] is callable' {
    local val="${ZPWR_VERBS[scriptlist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptnew] is callable' {
    local val="${ZPWR_VERBS[scriptnew]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripts] is callable' {
    local val="${ZPWR_VERBS[scripts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripttopdf] is callable' {
    local val="${ZPWR_VERBS[scripttopdf]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[search] is callable' {
    local val="${ZPWR_VERBS[search]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[servicedown] is callable' {
    local val="${ZPWR_VERBS[servicedown]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[serviceup] is callable' {
    local val="${ZPWR_VERBS[serviceup]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[start] is callable' {
    local val="${ZPWR_VERBS[start]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startauto] is callable' {
    local val="${ZPWR_VERBS[startauto]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsend] is callable' {
    local val="${ZPWR_VERBS[startsend]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsendfull] is callable' {
    local val="${ZPWR_VERBS[startsendfull]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[starttabs] is callable' {
    local val="${ZPWR_VERBS[starttabs]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopauto] is callable' {
    local val="${ZPWR_VERBS[stopauto]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopsend] is callable' {
    local val="${ZPWR_VERBS[stopsend]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommands] is callable' {
    local val="${ZPWR_VERBS[subcommands]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandscount] is callable' {
    local val="${ZPWR_VERBS[subcommandscount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsedit] is callable' {
    local val="${ZPWR_VERBS[subcommandsedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsfzf] is callable' {
    local val="${ZPWR_VERBS[subcommandsfzf]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandslist] is callable' {
    local val="${ZPWR_VERBS[subcommandslist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[taillog] is callable' {
    local val="${ZPWR_VERBS[taillog]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[test] is callable' {
    local val="${ZPWR_VERBS[test]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testall] is callable' {
    local val="${ZPWR_VERBS[testall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tests] is callable' {
    local val="${ZPWR_VERBS[tests]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testsall] is callable' {
    local val="${ZPWR_VERBS[testsall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[timer] is callable' {
    local val="${ZPWR_VERBS[timer]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[to] is callable' {
    local val="${ZPWR_VERBS[to]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toggle] is callable' {
    local val="${ZPWR_VERBS[toggle]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tokens] is callable' {
    local val="${ZPWR_VERBS[tokens]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[torip] is callable' {
    local val="${ZPWR_VERBS[torip]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toriprenew] is callable' {
    local val="${ZPWR_VERBS[toriprenew]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travis] is callable' {
    local val="${ZPWR_VERBS[travis]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbranch] is callable' {
    local val="${ZPWR_VERBS[travisbranch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbuild] is callable' {
    local val="${ZPWR_VERBS[travisbuild]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travispr] is callable' {
    local val="${ZPWR_VERBS[travispr]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[trc] is callable' {
    local val="${ZPWR_VERBS[trc]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tty] is callable' {
    local val="${ZPWR_VERBS[tty]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uncompile] is callable' {
    local val="${ZPWR_VERBS[uncompile]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uninstall] is callable' {
    local val="${ZPWR_VERBS[uninstall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[update] is callable' {
    local val="${ZPWR_VERBS[update]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updateall] is callable' {
    local val="${ZPWR_VERBS[updateall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedeps] is callable' {
    local val="${ZPWR_VERBS[updatedeps]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedepsclean] is callable' {
    local val="${ZPWR_VERBS[updatedepsclean]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatepull] is callable' {
    local val="${ZPWR_VERBS[updatepull]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatezinit] is callable' {
    local val="${ZPWR_VERBS[updatezinit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[upload] is callable' {
    local val="${ZPWR_VERBS[upload]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[urlsafe] is callable' {
    local val="${ZPWR_VERBS[urlsafe]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbs] is callable' {
    local val="${ZPWR_VERBS[verbs]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbscount] is callable' {
    local val="${ZPWR_VERBS[verbscount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsedit] is callable' {
    local val="${ZPWR_VERBS[verbsedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsfzf] is callable' {
    local val="${ZPWR_VERBS[verbsfzf]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbslist] is callable' {
    local val="${ZPWR_VERBS[verbslist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimall] is callable' {
    local val="${ZPWR_VERBS[vimall]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimalledit] is callable' {
    local val="${ZPWR_VERBS[vimalledit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimautoload] is callable' {
    local val="${ZPWR_VERBS[vimautoload]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimcd] is callable' {
    local val="${ZPWR_VERBS[vimcd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimconfig] is callable' {
    local val="${ZPWR_VERBS[vimconfig]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimctags] is callable' {
    local val="${ZPWR_VERBS[vimctags]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimemacsconfig] is callable' {
    local val="${ZPWR_VERBS[vimemacsconfig]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearch] is callable' {
    local val="${ZPWR_VERBS[vimfilesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearchedit] is callable' {
    local val="${ZPWR_VERBS[vimfilesearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearch] is callable' {
    local val="${ZPWR_VERBS[vimfindsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearchedit] is callable' {
    local val="${ZPWR_VERBS[vimfindsearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtags] is callable' {
    local val="${ZPWR_VERBS[vimgtags]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtagsedit] is callable' {
    local val="${ZPWR_VERBS[vimgtagsedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearch] is callable' {
    local val="${ZPWR_VERBS[vimlocatesearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearchedit] is callable' {
    local val="${ZPWR_VERBS[vimlocatesearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimplugincount] is callable' {
    local val="${ZPWR_VERBS[vimplugincount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimpluginlist] is callable' {
    local val="${ZPWR_VERBS[vimpluginlist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecent] is callable' {
    local val="${ZPWR_VERBS[vimrecent]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentcd] is callable' {
    local val="${ZPWR_VERBS[vimrecentcd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudo] is callable' {
    local val="${ZPWR_VERBS[vimrecentsudo]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudocd] is callable' {
    local val="${ZPWR_VERBS[vimrecentsudocd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscriptedit] is callable' {
    local val="${ZPWR_VERBS[vimscriptedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscripts] is callable' {
    local val="${ZPWR_VERBS[vimscripts]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimsearch] is callable' {
    local val="${ZPWR_VERBS[vimsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtests] is callable' {
    local val="${ZPWR_VERBS[vimtests]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtokens] is callable' {
    local val="${ZPWR_VERBS[vimtokens]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearch] is callable' {
    local val="${ZPWR_VERBS[vimwordsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearchedit] is callable' {
    local val="${ZPWR_VERBS[vimwordsearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vrc] is callable' {
    local val="${ZPWR_VERBS[vrc]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[web] is callable' {
    local val="${ZPWR_VERBS[web]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whilesleep] is callable' {
    local val="${ZPWR_VERBS[whilesleep]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whiletrue] is callable' {
    local val="${ZPWR_VERBS[whiletrue]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearch] is callable' {
    local val="${ZPWR_VERBS[wordsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearchedit] is callable' {
    local val="${ZPWR_VERBS[wordsearchedit]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[z] is callable' {
    local val="${ZPWR_VERBS[z]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcd] is callable' {
    local val="${ZPWR_VERBS[zcd]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcompdump] is callable' {
    local val="${ZPWR_VERBS[zcompdump]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zp] is callable' {
    local val="${ZPWR_VERBS[zp]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwr] is callable' {
    local val="${ZPWR_VERBS[zpwr]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwrCloneToForked] is callable' {
    local val="${ZPWR_VERBS[zpwrCloneToForked]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwrgithub] is callable' {
    local val="${ZPWR_VERBS[zpwrgithub]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpz] is callable' {
    local val="${ZPWR_VERBS[zpz]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zrc] is callable' {
    local val="${ZPWR_VERBS[zrc]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshplugincount] is callable' {
    local val="${ZPWR_VERBS[zshplugincount]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshpluginlist] is callable' {
    local val="${ZPWR_VERBS[zshpluginlist]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshsearch] is callable' {
    local val="${ZPWR_VERBS[zshsearch]}"
    run whence "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zstyle] is callable' {
    local val="${ZPWR_VERBS[zstyle]}"
    run whence "$val"
    assert $state equals 0
}
