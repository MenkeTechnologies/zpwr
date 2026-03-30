#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test type of all ZPWR_VERBS values
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_VERBS[a] type resolves' {
    local val="${ZPWR_VERBS[a]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[about] type resolves' {
    local val="${ZPWR_VERBS[about]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[alacritty] type resolves' {
    local val="${ZPWR_VERBS[alacritty]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[all] type resolves' {
    local val="${ZPWR_VERBS[all]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[allsearch] type resolves' {
    local val="${ZPWR_VERBS[allsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[altprettyprint] type resolves' {
    local val="${ZPWR_VERBS[altprettyprint]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[animate] type resolves' {
    local val="${ZPWR_VERBS[animate]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[attach] type resolves' {
    local val="${ZPWR_VERBS[attach]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoload] type resolves' {
    local val="${ZPWR_VERBS[autoload]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadcount] type resolves' {
    local val="${ZPWR_VERBS[autoloadcount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadlist] type resolves' {
    local val="${ZPWR_VERBS[autoloadlist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[background] type resolves' {
    local val="${ZPWR_VERBS[background]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backup] type resolves' {
    local val="${ZPWR_VERBS[backup]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backuphistory] type resolves' {
    local val="${ZPWR_VERBS[backuphistory]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[banner] type resolves' {
    local val="${ZPWR_VERBS[banner]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannercounts] type resolves' {
    local val="${ZPWR_VERBS[bannercounts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerlolcat] type resolves' {
    local val="${ZPWR_VERBS[bannerlolcat]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannernopony] type resolves' {
    local val="${ZPWR_VERBS[bannernopony]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerpony] type resolves' {
    local val="${ZPWR_VERBS[bannerpony]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[brc] type resolves' {
    local val="${ZPWR_VERBS[brc]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[c] type resolves' {
    local val="${ZPWR_VERBS[c]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cat] type resolves' {
    local val="${ZPWR_VERBS[cat]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catcd] type resolves' {
    local val="${ZPWR_VERBS[catcd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catnviminforecentf] type resolves' {
    local val="${ZPWR_VERBS[catnviminforecentf]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catrecentfviminfo] type resolves' {
    local val="${ZPWR_VERBS[catrecentfviminfo]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catviminfo] type resolves' {
    local val="${ZPWR_VERBS[catviminfo]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cd] type resolves' {
    local val="${ZPWR_VERBS[cd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cdup] type resolves' {
    local val="${ZPWR_VERBS[cdup]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cfasd] type resolves' {
    local val="${ZPWR_VERBS[cfasd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changename] type resolves' {
    local val="${ZPWR_VERBS[changename]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changenamezpwr] type resolves' {
    local val="${ZPWR_VERBS[changenamezpwr]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanall] type resolves' {
    local val="${ZPWR_VERBS[cleanall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancache] type resolves' {
    local val="${ZPWR_VERBS[cleancache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancompcache] type resolves' {
    local val="${ZPWR_VERBS[cleancompcache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirs] type resolves' {
    local val="${ZPWR_VERBS[cleandirs]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirsandtemp] type resolves' {
    local val="${ZPWR_VERBS[cleandirsandtemp]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcache] type resolves' {
    local val="${ZPWR_VERBS[cleangitcache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcleancache] type resolves' {
    local val="${ZPWR_VERBS[cleangitcleancache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitdirtycache] type resolves' {
    local val="${ZPWR_VERBS[cleangitdirtycache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanlog] type resolves' {
    local val="${ZPWR_VERBS[cleanlog]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanrefreshupdate] type resolves' {
    local val="${ZPWR_VERBS[cleanrefreshupdate]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleantemp] type resolves' {
    local val="${ZPWR_VERBS[cleantemp]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanupdatedeps] type resolves' {
    local val="${ZPWR_VERBS[cleanupdatedeps]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearlist] type resolves' {
    local val="${ZPWR_VERBS[clearlist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearls] type resolves' {
    local val="${ZPWR_VERBS[clearls]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clone] type resolves' {
    local val="${ZPWR_VERBS[clone]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[color2] type resolves' {
    local val="${ZPWR_VERBS[color2]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colorsdiff] type resolves' {
    local val="${ZPWR_VERBS[colorsdiff]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest] type resolves' {
    local val="${ZPWR_VERBS[colortest]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest256] type resolves' {
    local val="${ZPWR_VERBS[colortest256]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compile] type resolves' {
    local val="${ZPWR_VERBS[compile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefiles] type resolves' {
    local val="${ZPWR_VERBS[compilefiles]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefpath] type resolves' {
    local val="${ZPWR_VERBS[compilefpath]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[completions] type resolves' {
    local val="${ZPWR_VERBS[completions]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[comps] type resolves' {
    local val="${ZPWR_VERBS[comps]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[copycommand] type resolves' {
    local val="${ZPWR_VERBS[copycommand]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[creategif] type resolves' {
    local val="${ZPWR_VERBS[creategif]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[curl] type resolves' {
    local val="${ZPWR_VERBS[curl]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[decompile] type resolves' {
    local val="${ZPWR_VERBS[decompile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[deduppaths] type resolves' {
    local val="${ZPWR_VERBS[deduppaths]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[detach] type resolves' {
    local val="${ZPWR_VERBS[detach]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dfimage] type resolves' {
    local val="${ZPWR_VERBS[dfimage]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[digs] type resolves' {
    local val="${ZPWR_VERBS[digs]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dirsearch] type resolves' {
    local val="${ZPWR_VERBS[dirsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dockerwipe] type resolves' {
    local val="${ZPWR_VERBS[dockerwipe]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[e] type resolves' {
    local val="${ZPWR_VERBS[e]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[edit] type resolves' {
    local val="${ZPWR_VERBS[edit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[editor] type resolves' {
    local val="${ZPWR_VERBS[editor]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsall] type resolves' {
    local val="${ZPWR_VERBS[emacsall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsalledit] type resolves' {
    local val="${ZPWR_VERBS[emacsalledit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsallserver] type resolves' {
    local val="${ZPWR_VERBS[emacsallserver]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsautoload] type resolves' {
    local val="${ZPWR_VERBS[emacsautoload]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacscd] type resolves' {
    local val="${ZPWR_VERBS[emacscd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsconfig] type resolves' {
    local val="${ZPWR_VERBS[emacsconfig]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsctags] type resolves' {
    local val="${ZPWR_VERBS[emacsctags]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsemacsconfig] type resolves' {
    local val="${ZPWR_VERBS[emacsemacsconfig]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearch] type resolves' {
    local val="${ZPWR_VERBS[emacsfilesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearchedit] type resolves' {
    local val="${ZPWR_VERBS[emacsfilesearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearch] type resolves' {
    local val="${ZPWR_VERBS[emacsfindsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearchedit] type resolves' {
    local val="${ZPWR_VERBS[emacsfindsearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtags] type resolves' {
    local val="${ZPWR_VERBS[emacsgtags]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtagsedit] type resolves' {
    local val="${ZPWR_VERBS[emacsgtagsedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearch] type resolves' {
    local val="${ZPWR_VERBS[emacslocatesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearchedit] type resolves' {
    local val="${ZPWR_VERBS[emacslocatesearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsplugincount] type resolves' {
    local val="${ZPWR_VERBS[emacsplugincount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacspluginlist] type resolves' {
    local val="${ZPWR_VERBS[emacspluginlist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecent] type resolves' {
    local val="${ZPWR_VERBS[emacsrecent]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentcd] type resolves' {
    local val="${ZPWR_VERBS[emacsrecentcd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudo] type resolves' {
    local val="${ZPWR_VERBS[emacsrecentsudo]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudocd] type resolves' {
    local val="${ZPWR_VERBS[emacsrecentsudocd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscriptedit] type resolves' {
    local val="${ZPWR_VERBS[emacsscriptedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscripts] type resolves' {
    local val="${ZPWR_VERBS[emacsscripts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstests] type resolves' {
    local val="${ZPWR_VERBS[emacstests]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstokens] type resolves' {
    local val="${ZPWR_VERBS[emacstokens]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearch] type resolves' {
    local val="${ZPWR_VERBS[emacswordsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearchedit] type resolves' {
    local val="${ZPWR_VERBS[emacswordsearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacszpwr] type resolves' {
    local val="${ZPWR_VERBS[emacszpwr]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envaccept] type resolves' {
    local val="${ZPWR_VERBS[envaccept]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcachesearch] type resolves' {
    local val="${ZPWR_VERBS[envcachesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcounts] type resolves' {
    local val="${ZPWR_VERBS[envcounts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envedit] type resolves' {
    local val="${ZPWR_VERBS[envedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcachesearch] type resolves' {
    local val="${ZPWR_VERBS[environmentcachesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcounts] type resolves' {
    local val="${ZPWR_VERBS[environmentcounts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariables] type resolves' {
    local val="${ZPWR_VERBS[environmentvariables]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariablesall] type resolves' {
    local val="${ZPWR_VERBS[environmentvariablesall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvars] type resolves' {
    local val="${ZPWR_VERBS[environmentvars]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvarsall] type resolves' {
    local val="${ZPWR_VERBS[environmentvarsall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvars] type resolves' {
    local val="${ZPWR_VERBS[envvars]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvarsall] type resolves' {
    local val="${ZPWR_VERBS[envvarsall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ev] type resolves' {
    local val="${ZPWR_VERBS[ev]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[eva] type resolves' {
    local val="${ZPWR_VERBS[eva]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglob] type resolves' {
    local val="${ZPWR_VERBS[execglob]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglobparallel] type resolves' {
    local val="${ZPWR_VERBS[execglobparallel]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execpy] type resolves' {
    local val="${ZPWR_VERBS[execpy]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercism] type resolves' {
    local val="${ZPWR_VERBS[exercism]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismdownload] type resolves' {
    local val="${ZPWR_VERBS[exercismdownload]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismedit] type resolves' {
    local val="${ZPWR_VERBS[exercismedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exists] type resolves' {
    local val="${ZPWR_VERBS[exists]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[existscommand] type resolves' {
    local val="${ZPWR_VERBS[existscommand]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[f] type resolves' {
    local val="${ZPWR_VERBS[f]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[figletfonts] type resolves' {
    local val="${ZPWR_VERBS[figletfonts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearch] type resolves' {
    local val="${ZPWR_VERBS[filesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearchedit] type resolves' {
    local val="${ZPWR_VERBS[filesearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearch] type resolves' {
    local val="${ZPWR_VERBS[findsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearchedit] type resolves' {
    local val="${ZPWR_VERBS[findsearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for] type resolves' {
    local val="${ZPWR_VERBS[for]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for10] type resolves' {
    local val="${ZPWR_VERBS[for10]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordir] type resolves' {
    local val="${ZPWR_VERBS[fordir]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordirupdate] type resolves' {
    local val="${ZPWR_VERBS[fordirupdate]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitadd] type resolves' {
    local val="${ZPWR_VERBS[forgitadd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitclean] type resolves' {
    local val="${ZPWR_VERBS[forgitclean]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitdiff] type resolves' {
    local val="${ZPWR_VERBS[forgitdiff]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignore] type resolves' {
    local val="${ZPWR_VERBS[forgitignore]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreclean] type resolves' {
    local val="${ZPWR_VERBS[forgitignoreclean]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreget] type resolves' {
    local val="${ZPWR_VERBS[forgitignoreget]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignorelist] type resolves' {
    local val="${ZPWR_VERBS[forgitignorelist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreupdate] type resolves' {
    local val="${ZPWR_VERBS[forgitignoreupdate]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitinfo] type resolves' {
    local val="${ZPWR_VERBS[forgitinfo]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitlog] type resolves' {
    local val="${ZPWR_VERBS[forgitlog]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitreset] type resolves' {
    local val="${ZPWR_VERBS[forgitreset]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitrestore] type resolves' {
    local val="${ZPWR_VERBS[forgitrestore]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitstash] type resolves' {
    local val="${ZPWR_VERBS[forgitstash]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitwarn] type resolves' {
    local val="${ZPWR_VERBS[forgitwarn]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forked] type resolves' {
    local val="${ZPWR_VERBS[forked]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forward] type resolves' {
    local val="${ZPWR_VERBS[forward]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fp] type resolves' {
    local val="${ZPWR_VERBS[fp]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fwd] type resolves' {
    local val="${ZPWR_VERBS[fwd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gh] type resolves' {
    local val="${ZPWR_VERBS[gh]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghcontribcount] type resolves' {
    local val="${ZPWR_VERBS[ghcontribcount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghz] type resolves' {
    local val="${ZPWR_VERBS[ghz]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitaemail] type resolves' {
    local val="${ZPWR_VERBS[gitaemail]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcemail] type resolves' {
    local val="${ZPWR_VERBS[gitcemail]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcache] type resolves' {
    local val="${ZPWR_VERBS[gitclearcache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcommit] type resolves' {
    local val="${ZPWR_VERBS[gitclearcommit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearfile] type resolves' {
    local val="${ZPWR_VERBS[gitclearfile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommit] type resolves' {
    local val="${ZPWR_VERBS[gitcommit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommitcount] type resolves' {
    local val="${ZPWR_VERBS[gitcommitcount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommits] type resolves' {
    local val="${ZPWR_VERBS[gitcommits]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitconfig] type resolves' {
    local val="${ZPWR_VERBS[gitconfig]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcount] type resolves' {
    local val="${ZPWR_VERBS[gitcontribcount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountdirs] type resolves' {
    local val="${ZPWR_VERBS[gitcontribcountdirs]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountlines] type resolves' {
    local val="${ZPWR_VERBS[gitcontribcountlines]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitdir] type resolves' {
    local val="${ZPWR_VERBS[gitdir]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitedittag] type resolves' {
    local val="${ZPWR_VERBS[gitedittag]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitemail] type resolves' {
    local val="${ZPWR_VERBS[gitemail]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitforalldir] type resolves' {
    local val="${ZPWR_VERBS[gitforalldir]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirdevelop] type resolves' {
    local val="${ZPWR_VERBS[gitfordirdevelop]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirmain] type resolves' {
    local val="${ZPWR_VERBS[gitfordirmain]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalconfig] type resolves' {
    local val="${ZPWR_VERBS[gitglobalconfig]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalignores] type resolves' {
    local val="${ZPWR_VERBS[gitglobalignores]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[github] type resolves' {
    local val="${ZPWR_VERBS[github]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcontribcount] type resolves' {
    local val="${ZPWR_VERBS[githubcontribcount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcreate] type resolves' {
    local val="${ZPWR_VERBS[githubcreate]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubdelete] type resolves' {
    local val="${ZPWR_VERBS[githubdelete]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubzpwr] type resolves' {
    local val="${ZPWR_VERBS[githubzpwr]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignore] type resolves' {
    local val="${ZPWR_VERBS[gitignore]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignores] type resolves' {
    local val="${ZPWR_VERBS[gitignores]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitlargest] type resolves' {
    local val="${ZPWR_VERBS[gitlargest]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitremotes] type resolves' {
    local val="${ZPWR_VERBS[gitremotes]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleancacheexec] type resolves' {
    local val="${ZPWR_VERBS[gitreposcleancacheexec]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleanexec] type resolves' {
    local val="${ZPWR_VERBS[gitreposcleanexec]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtycacheexec] type resolves' {
    local val="${ZPWR_VERBS[gitreposdirtycacheexec]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtyexec] type resolves' {
    local val="${ZPWR_VERBS[gitreposdirtyexec]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposexec] type resolves' {
    local val="${ZPWR_VERBS[gitreposexec]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposfile] type resolves' {
    local val="${ZPWR_VERBS[gitreposfile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitsearch] type resolves' {
    local val="${ZPWR_VERBS[gitsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gittotallines] type resolves' {
    local val="${ZPWR_VERBS[gittotallines]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatefordir] type resolves' {
    local val="${ZPWR_VERBS[gitupdatefordir]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatetag] type resolves' {
    local val="${ZPWR_VERBS[gitupdatetag]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordir] type resolves' {
    local val="${ZPWR_VERBS[gitzfordir]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirdevelop] type resolves' {
    local val="${ZPWR_VERBS[gitzfordirdevelop]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirmain] type resolves' {
    local val="${ZPWR_VERBS[gitzfordirmain]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[goclean] type resolves' {
    local val="${ZPWR_VERBS[goclean]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[google] type resolves' {
    local val="${ZPWR_VERBS[google]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[grep] type resolves' {
    local val="${ZPWR_VERBS[grep]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hc] type resolves' {
    local val="${ZPWR_VERBS[hc]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hd] type resolves' {
    local val="${ZPWR_VERBS[hd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[help] type resolves' {
    local val="${ZPWR_VERBS[help]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hidden] type resolves' {
    local val="${ZPWR_VERBS[hidden]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hist] type resolves' {
    local val="${ZPWR_VERBS[hist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histedit] type resolves' {
    local val="${ZPWR_VERBS[histedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histfile] type resolves' {
    local val="${ZPWR_VERBS[histfile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[home] type resolves' {
    local val="${ZPWR_VERBS[home]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoload] type resolves' {
    local val="${ZPWR_VERBS[homeautoload]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoloadcommon] type resolves' {
    local val="${ZPWR_VERBS[homeautoloadcommon]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homecomps] type resolves' {
    local val="${ZPWR_VERBS[homecomps]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeenv] type resolves' {
    local val="${ZPWR_VERBS[homeenv]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeexercism] type resolves' {
    local val="${ZPWR_VERBS[homeexercism]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeinstall] type resolves' {
    local val="${ZPWR_VERBS[homeinstall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homelocal] type resolves' {
    local val="${ZPWR_VERBS[homelocal]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homescripts] type resolves' {
    local val="${ZPWR_VERBS[homescripts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometest] type resolves' {
    local val="${ZPWR_VERBS[hometest]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometests] type resolves' {
    local val="${ZPWR_VERBS[hometests]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometmux] type resolves' {
    local val="${ZPWR_VERBS[hometmux]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[info] type resolves' {
    local val="${ZPWR_VERBS[info]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[install] type resolves' {
    local val="${ZPWR_VERBS[install]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[kill] type resolves' {
    local val="${ZPWR_VERBS[kill]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killedit] type resolves' {
    local val="${ZPWR_VERBS[killedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killmux] type resolves' {
    local val="${ZPWR_VERBS[killmux]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killremote] type resolves' {
    local val="${ZPWR_VERBS[killremote]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[linecount] type resolves' {
    local val="${ZPWR_VERBS[linecount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[list] type resolves' {
    local val="${ZPWR_VERBS[list]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loadjenv] type resolves' {
    local val="${ZPWR_VERBS[loadjenv]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearch] type resolves' {
    local val="${ZPWR_VERBS[locatesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearchedit] type resolves' {
    local val="${ZPWR_VERBS[locatesearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebug] type resolves' {
    local val="${ZPWR_VERBS[logdebug]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebugconsole] type resolves' {
    local val="${ZPWR_VERBS[logdebugconsole]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerror] type resolves' {
    local val="${ZPWR_VERBS[logerror]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerrorconsole] type resolves' {
    local val="${ZPWR_VERBS[logerrorconsole]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logincount] type resolves' {
    local val="${ZPWR_VERBS[logincount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfo] type resolves' {
    local val="${ZPWR_VERBS[loginfo]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfoconsole] type resolves' {
    local val="${ZPWR_VERBS[loginfoconsole]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtrace] type resolves' {
    local val="${ZPWR_VERBS[logtrace]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtraceconsole] type resolves' {
    local val="${ZPWR_VERBS[logtraceconsole]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ls] type resolves' {
    local val="${ZPWR_VERBS[ls]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsof] type resolves' {
    local val="${ZPWR_VERBS[lsof]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsofedit] type resolves' {
    local val="${ZPWR_VERBS[lsofedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makedir] type resolves' {
    local val="${ZPWR_VERBS[makedir]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makefile] type resolves' {
    local val="${ZPWR_VERBS[makefile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[man] type resolves' {
    local val="${ZPWR_VERBS[man]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[modules] type resolves' {
    local val="${ZPWR_VERBS[modules]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[mygithub] type resolves' {
    local val="${ZPWR_VERBS[mygithub]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[open] type resolves' {
    local val="${ZPWR_VERBS[open]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[opencommand] type resolves' {
    local val="${ZPWR_VERBS[opencommand]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[openurl] type resolves' {
    local val="${ZPWR_VERBS[openurl]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[options] type resolves' {
    local val="${ZPWR_VERBS[options]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastebuffer] type resolves' {
    local val="${ZPWR_VERBS[pastebuffer]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastecommand] type resolves' {
    local val="${ZPWR_VERBS[pastecommand]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastestring] type resolves' {
    local val="${ZPWR_VERBS[pastestring]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pi] type resolves' {
    local val="${ZPWR_VERBS[pi]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ping] type resolves' {
    local val="${ZPWR_VERBS[ping]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pir] type resolves' {
    local val="${ZPWR_VERBS[pir]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[plugins] type resolves' {
    local val="${ZPWR_VERBS[plugins]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[poll] type resolves' {
    local val="${ZPWR_VERBS[poll]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[post] type resolves' {
    local val="${ZPWR_VERBS[post]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pre] type resolves' {
    local val="${ZPWR_VERBS[pre]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[prettyprint] type resolves' {
    local val="${ZPWR_VERBS[prettyprint]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[printmap] type resolves' {
    local val="${ZPWR_VERBS[printmap]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ps] type resolves' {
    local val="${ZPWR_VERBS[ps]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pstreemonitor] type resolves' {
    local val="${ZPWR_VERBS[pstreemonitor]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pygmentcolors] type resolves' {
    local val="${ZPWR_VERBS[pygmentcolors]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[r] type resolves' {
    local val="${ZPWR_VERBS[r]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompile] type resolves' {
    local val="${ZPWR_VERBS[recompile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefiles] type resolves' {
    local val="${ZPWR_VERBS[recompilefiles]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefpath] type resolves' {
    local val="${ZPWR_VERBS[recompilefpath]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[refreshzwc] type resolves' {
    local val="${ZPWR_VERBS[refreshzwc]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regen] type resolves' {
    local val="${ZPWR_VERBS[regen]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenall] type resolves' {
    local val="${ZPWR_VERBS[regenall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenconfiglinks] type resolves' {
    local val="${ZPWR_VERBS[regenconfiglinks]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenctags] type resolves' {
    local val="${ZPWR_VERBS[regenctags]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenenvcache] type resolves' {
    local val="${ZPWR_VERBS[regenenvcache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitdirtyrepocache] type resolves' {
    local val="${ZPWR_VERBS[regengitdirtyrepocache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitrepocache] type resolves' {
    local val="${ZPWR_VERBS[regengitrepocache]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtags] type resolves' {
    local val="${ZPWR_VERBS[regengtags]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagspygments] type resolves' {
    local val="${ZPWR_VERBS[regengtagspygments]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagstype] type resolves' {
    local val="${ZPWR_VERBS[regengtagstype]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenhistory] type resolves' {
    local val="${ZPWR_VERBS[regenhistory]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenkeybindings] type resolves' {
    local val="${ZPWR_VERBS[regenkeybindings]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenpowerline] type resolves' {
    local val="${ZPWR_VERBS[regenpowerline]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenzsh] type resolves' {
    local val="${ZPWR_VERBS[regenzsh]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reload] type resolves' {
    local val="${ZPWR_VERBS[reload]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[relpath] type resolves' {
    local val="${ZPWR_VERBS[relpath]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rename] type resolves' {
    local val="${ZPWR_VERBS[rename]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[replacer] type resolves' {
    local val="${ZPWR_VERBS[replacer]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[repo] type resolves' {
    local val="${ZPWR_VERBS[repo]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reset] type resolves' {
    local val="${ZPWR_VERBS[reset]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restart] type resolves' {
    local val="${ZPWR_VERBS[restart]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restorehistory] type resolves' {
    local val="${ZPWR_VERBS[restorehistory]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[return2] type resolves' {
    local val="${ZPWR_VERBS[return2]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reveal] type resolves' {
    local val="${ZPWR_VERBS[reveal]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[revealrecurse] type resolves' {
    local val="${ZPWR_VERBS[revealrecurse]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reverse] type resolves' {
    local val="${ZPWR_VERBS[reverse]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rmconfiglinks] type resolves' {
    local val="${ZPWR_VERBS[rmconfiglinks]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rvs] type resolves' {
    local val="${ZPWR_VERBS[rvs]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptcount] type resolves' {
    local val="${ZPWR_VERBS[scriptcount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptlist] type resolves' {
    local val="${ZPWR_VERBS[scriptlist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptnew] type resolves' {
    local val="${ZPWR_VERBS[scriptnew]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripts] type resolves' {
    local val="${ZPWR_VERBS[scripts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripttopdf] type resolves' {
    local val="${ZPWR_VERBS[scripttopdf]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[search] type resolves' {
    local val="${ZPWR_VERBS[search]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[servicedown] type resolves' {
    local val="${ZPWR_VERBS[servicedown]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[serviceup] type resolves' {
    local val="${ZPWR_VERBS[serviceup]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[start] type resolves' {
    local val="${ZPWR_VERBS[start]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startauto] type resolves' {
    local val="${ZPWR_VERBS[startauto]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsend] type resolves' {
    local val="${ZPWR_VERBS[startsend]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsendfull] type resolves' {
    local val="${ZPWR_VERBS[startsendfull]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[starttabs] type resolves' {
    local val="${ZPWR_VERBS[starttabs]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopauto] type resolves' {
    local val="${ZPWR_VERBS[stopauto]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopsend] type resolves' {
    local val="${ZPWR_VERBS[stopsend]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommands] type resolves' {
    local val="${ZPWR_VERBS[subcommands]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandscount] type resolves' {
    local val="${ZPWR_VERBS[subcommandscount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsedit] type resolves' {
    local val="${ZPWR_VERBS[subcommandsedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsfzf] type resolves' {
    local val="${ZPWR_VERBS[subcommandsfzf]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandslist] type resolves' {
    local val="${ZPWR_VERBS[subcommandslist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[taillog] type resolves' {
    local val="${ZPWR_VERBS[taillog]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[test] type resolves' {
    local val="${ZPWR_VERBS[test]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testall] type resolves' {
    local val="${ZPWR_VERBS[testall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tests] type resolves' {
    local val="${ZPWR_VERBS[tests]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testsall] type resolves' {
    local val="${ZPWR_VERBS[testsall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[timer] type resolves' {
    local val="${ZPWR_VERBS[timer]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[to] type resolves' {
    local val="${ZPWR_VERBS[to]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toggle] type resolves' {
    local val="${ZPWR_VERBS[toggle]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tokens] type resolves' {
    local val="${ZPWR_VERBS[tokens]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[torip] type resolves' {
    local val="${ZPWR_VERBS[torip]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toriprenew] type resolves' {
    local val="${ZPWR_VERBS[toriprenew]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travis] type resolves' {
    local val="${ZPWR_VERBS[travis]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbranch] type resolves' {
    local val="${ZPWR_VERBS[travisbranch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbuild] type resolves' {
    local val="${ZPWR_VERBS[travisbuild]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travispr] type resolves' {
    local val="${ZPWR_VERBS[travispr]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[trc] type resolves' {
    local val="${ZPWR_VERBS[trc]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tty] type resolves' {
    local val="${ZPWR_VERBS[tty]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uncompile] type resolves' {
    local val="${ZPWR_VERBS[uncompile]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uninstall] type resolves' {
    local val="${ZPWR_VERBS[uninstall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[update] type resolves' {
    local val="${ZPWR_VERBS[update]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updateall] type resolves' {
    local val="${ZPWR_VERBS[updateall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedeps] type resolves' {
    local val="${ZPWR_VERBS[updatedeps]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedepsclean] type resolves' {
    local val="${ZPWR_VERBS[updatedepsclean]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatepull] type resolves' {
    local val="${ZPWR_VERBS[updatepull]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatezinit] type resolves' {
    local val="${ZPWR_VERBS[updatezinit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[upload] type resolves' {
    local val="${ZPWR_VERBS[upload]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[urlsafe] type resolves' {
    local val="${ZPWR_VERBS[urlsafe]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbs] type resolves' {
    local val="${ZPWR_VERBS[verbs]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbscount] type resolves' {
    local val="${ZPWR_VERBS[verbscount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsedit] type resolves' {
    local val="${ZPWR_VERBS[verbsedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsfzf] type resolves' {
    local val="${ZPWR_VERBS[verbsfzf]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbslist] type resolves' {
    local val="${ZPWR_VERBS[verbslist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimall] type resolves' {
    local val="${ZPWR_VERBS[vimall]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimalledit] type resolves' {
    local val="${ZPWR_VERBS[vimalledit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimautoload] type resolves' {
    local val="${ZPWR_VERBS[vimautoload]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimcd] type resolves' {
    local val="${ZPWR_VERBS[vimcd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimconfig] type resolves' {
    local val="${ZPWR_VERBS[vimconfig]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimctags] type resolves' {
    local val="${ZPWR_VERBS[vimctags]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimemacsconfig] type resolves' {
    local val="${ZPWR_VERBS[vimemacsconfig]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearch] type resolves' {
    local val="${ZPWR_VERBS[vimfilesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearchedit] type resolves' {
    local val="${ZPWR_VERBS[vimfilesearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearch] type resolves' {
    local val="${ZPWR_VERBS[vimfindsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearchedit] type resolves' {
    local val="${ZPWR_VERBS[vimfindsearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtags] type resolves' {
    local val="${ZPWR_VERBS[vimgtags]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtagsedit] type resolves' {
    local val="${ZPWR_VERBS[vimgtagsedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearch] type resolves' {
    local val="${ZPWR_VERBS[vimlocatesearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearchedit] type resolves' {
    local val="${ZPWR_VERBS[vimlocatesearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimplugincount] type resolves' {
    local val="${ZPWR_VERBS[vimplugincount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimpluginlist] type resolves' {
    local val="${ZPWR_VERBS[vimpluginlist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecent] type resolves' {
    local val="${ZPWR_VERBS[vimrecent]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentcd] type resolves' {
    local val="${ZPWR_VERBS[vimrecentcd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudo] type resolves' {
    local val="${ZPWR_VERBS[vimrecentsudo]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudocd] type resolves' {
    local val="${ZPWR_VERBS[vimrecentsudocd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscriptedit] type resolves' {
    local val="${ZPWR_VERBS[vimscriptedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscripts] type resolves' {
    local val="${ZPWR_VERBS[vimscripts]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimsearch] type resolves' {
    local val="${ZPWR_VERBS[vimsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtests] type resolves' {
    local val="${ZPWR_VERBS[vimtests]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtokens] type resolves' {
    local val="${ZPWR_VERBS[vimtokens]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearch] type resolves' {
    local val="${ZPWR_VERBS[vimwordsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearchedit] type resolves' {
    local val="${ZPWR_VERBS[vimwordsearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vrc] type resolves' {
    local val="${ZPWR_VERBS[vrc]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[web] type resolves' {
    local val="${ZPWR_VERBS[web]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whilesleep] type resolves' {
    local val="${ZPWR_VERBS[whilesleep]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whiletrue] type resolves' {
    local val="${ZPWR_VERBS[whiletrue]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearch] type resolves' {
    local val="${ZPWR_VERBS[wordsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearchedit] type resolves' {
    local val="${ZPWR_VERBS[wordsearchedit]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[z] type resolves' {
    local val="${ZPWR_VERBS[z]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcd] type resolves' {
    local val="${ZPWR_VERBS[zcd]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcompdump] type resolves' {
    local val="${ZPWR_VERBS[zcompdump]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zp] type resolves' {
    local val="${ZPWR_VERBS[zp]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwr] type resolves' {
    local val="${ZPWR_VERBS[zpwr]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwrCloneToForked] type resolves' {
    local val="${ZPWR_VERBS[zpwrCloneToForked]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwrgithub] type resolves' {
    local val="${ZPWR_VERBS[zpwrgithub]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpz] type resolves' {
    local val="${ZPWR_VERBS[zpz]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zrc] type resolves' {
    local val="${ZPWR_VERBS[zrc]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshplugincount] type resolves' {
    local val="${ZPWR_VERBS[zshplugincount]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshpluginlist] type resolves' {
    local val="${ZPWR_VERBS[zshpluginlist]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshsearch] type resolves' {
    local val="${ZPWR_VERBS[zshsearch]}"
    run whence -w "$val"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zstyle] type resolves' {
    local val="${ZPWR_VERBS[zstyle]}"
    run whence -w "$val"
    assert $state equals 0
}
