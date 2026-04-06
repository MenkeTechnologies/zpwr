#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test all ZPWR_VERBS map keys
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_VERBS[a] exists' {
    run test -n "${(qqq)ZPWR_VERBS[a]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[about] exists' {
    run test -n "${(qqq)ZPWR_VERBS[about]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[alacritty] exists' {
    run test -n "${(qqq)ZPWR_VERBS[alacritty]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[all] exists' {
    run test -n "${(qqq)ZPWR_VERBS[all]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[allsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[allsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[altprettyprint] exists' {
    run test -n "${(qqq)ZPWR_VERBS[altprettyprint]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[attach] exists' {
    run test -n "${(qqq)ZPWR_VERBS[attach]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoload] exists' {
    run test -n "${(qqq)ZPWR_VERBS[autoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadcount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[autoloadcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadlist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[autoloadlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[background] exists' {
    run test -n "${(qqq)ZPWR_VERBS[background]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backup] exists' {
    run test -n "${(qqq)ZPWR_VERBS[backup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backuphistory] exists' {
    run test -n "${(qqq)ZPWR_VERBS[backuphistory]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[banner] exists' {
    run test -n "${(qqq)ZPWR_VERBS[banner]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannercounts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[bannercounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[brc] exists' {
    run test -n "${(qqq)ZPWR_VERBS[brc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[c] exists' {
    run test -n "${(qqq)ZPWR_VERBS[c]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cat] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cat]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catcd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[catcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catnviminforecentf] exists' {
    run test -n "${(qqq)ZPWR_VERBS[catnviminforecentf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catrecentfviminfo] exists' {
    run test -n "${(qqq)ZPWR_VERBS[catrecentfviminfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catviminfo] exists' {
    run test -n "${(qqq)ZPWR_VERBS[catviminfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cdup] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cdup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cfasd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cfasd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changename] exists' {
    run test -n "${(qqq)ZPWR_VERBS[changename]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changenamezpwr] exists' {
    run test -n "${(qqq)ZPWR_VERBS[changenamezpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleanall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleancache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancompcache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleancompcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirs] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleandirs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirsandtemp] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleandirsandtemp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleangitcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitdirtycache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleangitdirtycache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanlog] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleanlog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanrefreshupdate] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleanrefreshupdate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleantemp] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleantemp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanupdatedeps] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleanupdatedeps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearlist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[clearlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearls] exists' {
    run test -n "${(qqq)ZPWR_VERBS[clearls]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clone] exists' {
    run test -n "${(qqq)ZPWR_VERBS[clone]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[color2] exists' {
    run test -n "${(qqq)ZPWR_VERBS[color2]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colorsdiff] exists' {
    run test -n "${(qqq)ZPWR_VERBS[colorsdiff]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest] exists' {
    run test -n "${(qqq)ZPWR_VERBS[colortest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest256] exists' {
    run test -n "${(qqq)ZPWR_VERBS[colortest256]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[compile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefiles] exists' {
    run test -n "${(qqq)ZPWR_VERBS[compilefiles]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefpath] exists' {
    run test -n "${(qqq)ZPWR_VERBS[compilefpath]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[completions] exists' {
    run test -n "${(qqq)ZPWR_VERBS[completions]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[comps] exists' {
    run test -n "${(qqq)ZPWR_VERBS[comps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[copycommand] exists' {
    run test -n "${(qqq)ZPWR_VERBS[copycommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[decompile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[decompile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[detach] exists' {
    run test -n "${(qqq)ZPWR_VERBS[detach]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dfimage] exists' {
    run test -n "${(qqq)ZPWR_VERBS[dfimage]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[digs] exists' {
    run test -n "${(qqq)ZPWR_VERBS[digs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dirsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[dirsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dockerwipe] exists' {
    run test -n "${(qqq)ZPWR_VERBS[dockerwipe]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[e] exists' {
    run test -n "${(qqq)ZPWR_VERBS[e]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[edit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[edit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[editor] exists' {
    run test -n "${(qqq)ZPWR_VERBS[editor]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsalledit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsalledit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsallserver] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsallserver]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsautoload] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacscd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacscd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsconfig] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsctags] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsemacsconfig] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsemacsconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsfilesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsfilesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsfindsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsfindsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtags] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsgtags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtagsedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsgtagsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacslocatesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacslocatesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsplugincount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacspluginlist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacspluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecent] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsrecent]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentcd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsrecentcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudo] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsrecentsudo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudocd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsrecentsudocd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscriptedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsscriptedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscripts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacsscripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstests] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacstests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstokens] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacstokens]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacswordsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacswordsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacszpwr] exists' {
    run test -n "${(qqq)ZPWR_VERBS[emacszpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envaccept] exists' {
    run test -n "${(qqq)ZPWR_VERBS[envaccept]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcachesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[envcachesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcounts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[envcounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[envedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcachesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[environmentcachesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcounts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[environmentcounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariables] exists' {
    run test -n "${(qqq)ZPWR_VERBS[environmentvariables]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariablesall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[environmentvariablesall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvars] exists' {
    run test -n "${(qqq)ZPWR_VERBS[environmentvars]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvarsall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[environmentvarsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvars] exists' {
    run test -n "${(qqq)ZPWR_VERBS[envvars]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvarsall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[envvarsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ev] exists' {
    run test -n "${(qqq)ZPWR_VERBS[ev]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[eva] exists' {
    run test -n "${(qqq)ZPWR_VERBS[eva]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglob] exists' {
    run test -n "${(qqq)ZPWR_VERBS[execglob]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglobparallel] exists' {
    run test -n "${(qqq)ZPWR_VERBS[execglobparallel]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercism] exists' {
    run test -n "${(qqq)ZPWR_VERBS[exercism]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismdownload] exists' {
    run test -n "${(qqq)ZPWR_VERBS[exercismdownload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[exercismedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exists] exists' {
    run test -n "${(qqq)ZPWR_VERBS[exists]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[existscommand] exists' {
    run test -n "${(qqq)ZPWR_VERBS[existscommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[f] exists' {
    run test -n "${(qqq)ZPWR_VERBS[f]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[figletfonts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[figletfonts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[findsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[findsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for] exists' {
    run test -n "${(qqq)ZPWR_VERBS[for]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for10] exists' {
    run test -n "${(qqq)ZPWR_VERBS[for10]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordir] exists' {
    run test -n "${(qqq)ZPWR_VERBS[fordir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordirupdate] exists' {
    run test -n "${(qqq)ZPWR_VERBS[fordirupdate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitadd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitadd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitclean] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitdiff] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitdiff]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignore] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitignore]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreclean] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitignoreclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreget] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitignoreget]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignorelist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitignorelist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreupdate] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitignoreupdate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitinfo] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitinfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitlog] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitlog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitreset] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitreset]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitrestore] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitrestore]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitstash] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitstash]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitwarn] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forgitwarn]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forked] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forked]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forward] exists' {
    run test -n "${(qqq)ZPWR_VERBS[forward]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fp] exists' {
    run test -n "${(qqq)ZPWR_VERBS[fp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fwd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[fwd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gh] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gh]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghcontribcount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[ghcontribcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghz] exists' {
    run test -n "${(qqq)ZPWR_VERBS[ghz]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitaemail] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitaemail]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcemail] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitcemail]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitclearcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcommit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitclearcommit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearfile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitclearfile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitcommit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommitcount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitcommitcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommits] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitcommits]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitconfig] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitcontribcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountdirs] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitcontribcountdirs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountlines] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitcontribcountlines]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitdir] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitdir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitedittag] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitedittag]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitemail] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitemail]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitforalldir] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitforalldir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirdevelop] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitfordirdevelop]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirmain] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitfordirmain]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalconfig] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitglobalconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalignores] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitglobalignores]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[github] exists' {
    run test -n "${(qqq)ZPWR_VERBS[github]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcontribcount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[githubcontribcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcreate] exists' {
    run test -n "${(qqq)ZPWR_VERBS[githubcreate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubdelete] exists' {
    run test -n "${(qqq)ZPWR_VERBS[githubdelete]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubzpwr] exists' {
    run test -n "${(qqq)ZPWR_VERBS[githubzpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignore] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitignore]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignores] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitignores]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitlargest] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitlargest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitremotes] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitremotes]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleancacheexec] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitreposcleancacheexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleanexec] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitreposcleanexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtycacheexec] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitreposdirtycacheexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtyexec] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitreposdirtyexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposexec] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitreposexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposfile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitreposfile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gittotallines] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gittotallines]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatefordir] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitupdatefordir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatetag] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitupdatetag]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordir] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitzfordir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirdevelop] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitzfordirdevelop]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirmain] exists' {
    run test -n "${(qqq)ZPWR_VERBS[gitzfordirmain]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[grep] exists' {
    run test -n "${(qqq)ZPWR_VERBS[grep]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hc] exists' {
    run test -n "${(qqq)ZPWR_VERBS[hc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[hd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hidden] exists' {
    run test -n "${(qqq)ZPWR_VERBS[hidden]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[hist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[histedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histfile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[histfile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[home] exists' {
    run test -n "${(qqq)ZPWR_VERBS[home]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoload] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homeautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoloadcommon] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homeautoloadcommon]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homecomps] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homecomps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeenv] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homeenv]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeexercism] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homeexercism]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeinstall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homeinstall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homelocal] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homelocal]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homescripts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[homescripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometest] exists' {
    run test -n "${(qqq)ZPWR_VERBS[hometest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometests] exists' {
    run test -n "${(qqq)ZPWR_VERBS[hometests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometmux] exists' {
    run test -n "${(qqq)ZPWR_VERBS[hometmux]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[info] exists' {
    run test -n "${(qqq)ZPWR_VERBS[info]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[install] exists' {
    run test -n "${(qqq)ZPWR_VERBS[install]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[kill] exists' {
    run test -n "${(qqq)ZPWR_VERBS[kill]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[killedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killmux] exists' {
    run test -n "${(qqq)ZPWR_VERBS[killmux]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killremote] exists' {
    run test -n "${(qqq)ZPWR_VERBS[killremote]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[linecount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[linecount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[list] exists' {
    run test -n "${(qqq)ZPWR_VERBS[list]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loadjenv] exists' {
    run test -n "${(qqq)ZPWR_VERBS[loadjenv]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[locatesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[locatesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebug] exists' {
    run test -n "${(qqq)ZPWR_VERBS[logdebug]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebugconsole] exists' {
    run test -n "${(qqq)ZPWR_VERBS[logdebugconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerror] exists' {
    run test -n "${(qqq)ZPWR_VERBS[logerror]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerrorconsole] exists' {
    run test -n "${(qqq)ZPWR_VERBS[logerrorconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logincount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[logincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfo] exists' {
    run test -n "${(qqq)ZPWR_VERBS[loginfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfoconsole] exists' {
    run test -n "${(qqq)ZPWR_VERBS[loginfoconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtrace] exists' {
    run test -n "${(qqq)ZPWR_VERBS[logtrace]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtraceconsole] exists' {
    run test -n "${(qqq)ZPWR_VERBS[logtraceconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ls] exists' {
    run test -n "${(qqq)ZPWR_VERBS[ls]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsof] exists' {
    run test -n "${(qqq)ZPWR_VERBS[lsof]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsofedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[lsofedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makedir] exists' {
    run test -n "${(qqq)ZPWR_VERBS[makedir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makefile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[makefile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[man] exists' {
    run test -n "${(qqq)ZPWR_VERBS[man]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[modules] exists' {
    run test -n "${(qqq)ZPWR_VERBS[modules]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[mygithub] exists' {
    run test -n "${(qqq)ZPWR_VERBS[mygithub]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[open] exists' {
    run test -n "${(qqq)ZPWR_VERBS[open]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[opencommand] exists' {
    run test -n "${(qqq)ZPWR_VERBS[opencommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[options] exists' {
    run test -n "${(qqq)ZPWR_VERBS[options]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastebuffer] exists' {
    run test -n "${(qqq)ZPWR_VERBS[pastebuffer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastecommand] exists' {
    run test -n "${(qqq)ZPWR_VERBS[pastecommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastestring] exists' {
    run test -n "${(qqq)ZPWR_VERBS[pastestring]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pi] exists' {
    if ! (( ${+ZPWR_VERBS[pi]} )); then skip "pi command not available"; fi
    run test -n "${(qqq)ZPWR_VERBS[pi]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ping] exists' {
    if ! (( ${+ZPWR_VERBS[ping]} )); then skip "pi command not available"; fi
    run test -n "${(qqq)ZPWR_VERBS[ping]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pir] exists' {
    run test -n "${(qqq)ZPWR_VERBS[pir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[plugins] exists' {
    run test -n "${(qqq)ZPWR_VERBS[plugins]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[poll] exists' {
    run test -n "${(qqq)ZPWR_VERBS[poll]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[post] exists' {
    run test -n "${(qqq)ZPWR_VERBS[post]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pre] exists' {
    run test -n "${(qqq)ZPWR_VERBS[pre]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[prettyprint] exists' {
    run test -n "${(qqq)ZPWR_VERBS[prettyprint]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[printmap] exists' {
    run test -n "${(qqq)ZPWR_VERBS[printmap]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ps] exists' {
    run test -n "${(qqq)ZPWR_VERBS[ps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pygmentcolors] exists' {
    run test -n "${(qqq)ZPWR_VERBS[pygmentcolors]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[r] exists' {
    run test -n "${(qqq)ZPWR_VERBS[r]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[recompile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefiles] exists' {
    run test -n "${(qqq)ZPWR_VERBS[recompilefiles]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefpath] exists' {
    run test -n "${(qqq)ZPWR_VERBS[recompilefpath]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[refreshzwc] exists' {
    run test -n "${(qqq)ZPWR_VERBS[refreshzwc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regen] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regen]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenconfiglinks] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenconfiglinks]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenctags] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenenvcache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenenvcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitdirtyrepocache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regengitdirtyrepocache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitrepocache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regengitrepocache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtags] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regengtags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenhistory] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenhistory]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenkeybindings] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenkeybindings]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenpowerline] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenpowerline]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenzsh] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regenzsh]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reload] exists' {
    run test -n "${(qqq)ZPWR_VERBS[reload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[relpath] exists' {
    run test -n "${(qqq)ZPWR_VERBS[relpath]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rename] exists' {
    run test -n "${(qqq)ZPWR_VERBS[rename]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[repo] exists' {
    run test -n "${(qqq)ZPWR_VERBS[repo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restart] exists' {
    if ! (( ${+ZPWR_VERBS[restart]} )); then skip "systemctl not available"; fi
    run test -n "${(qqq)ZPWR_VERBS[restart]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restorehistory] exists' {
    run test -n "${(qqq)ZPWR_VERBS[restorehistory]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[return2] exists' {
    run test -n "${(qqq)ZPWR_VERBS[return2]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reveal] exists' {
    run test -n "${(qqq)ZPWR_VERBS[reveal]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reverse] exists' {
    run test -n "${(qqq)ZPWR_VERBS[reverse]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rmconfiglinks] exists' {
    run test -n "${(qqq)ZPWR_VERBS[rmconfiglinks]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rvs] exists' {
    run test -n "${(qqq)ZPWR_VERBS[rvs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptcount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[scriptcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptlist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[scriptlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[scripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripttopdf] exists' {
    run test -n "${(qqq)ZPWR_VERBS[scripttopdf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[search] exists' {
    run test -n "${(qqq)ZPWR_VERBS[search]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[servicedown] exists' {
    if ! (( ${+ZPWR_VERBS[servicedown]} )); then skip "systemctl not available"; fi
    run test -n "${(qqq)ZPWR_VERBS[servicedown]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[serviceup] exists' {
    if ! (( ${+ZPWR_VERBS[serviceup]} )); then skip "systemctl not available"; fi
    run test -n "${(qqq)ZPWR_VERBS[serviceup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[start] exists' {
    if ! (( ${+ZPWR_VERBS[start]} )); then skip "ZPWR_PYSCRIPTS not available"; fi
    run test -n "${(qqq)ZPWR_VERBS[start]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startauto] exists' {
    run test -n "${(qqq)ZPWR_VERBS[startauto]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsend] exists' {
    run test -n "${(qqq)ZPWR_VERBS[startsend]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsendfull] exists' {
    run test -n "${(qqq)ZPWR_VERBS[startsendfull]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[starttabs] exists' {
    if ! (( ${+ZPWR_VERBS[starttabs]} )); then skip "ZPWR_PYSCRIPTS not available"; fi
    run test -n "${(qqq)ZPWR_VERBS[starttabs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopauto] exists' {
    run test -n "${(qqq)ZPWR_VERBS[stopauto]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopsend] exists' {
    run test -n "${(qqq)ZPWR_VERBS[stopsend]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommands] exists' {
    run test -n "${(qqq)ZPWR_VERBS[subcommands]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandscount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[subcommandscount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[subcommandsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsfzf] exists' {
    run test -n "${(qqq)ZPWR_VERBS[subcommandsfzf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandslist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[subcommandslist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[taillog] exists' {
    run test -n "${(qqq)ZPWR_VERBS[taillog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[test] exists' {
    run test -n "${(qqq)ZPWR_VERBS[test]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[testall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tests] exists' {
    run test -n "${(qqq)ZPWR_VERBS[tests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testsall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[testsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[timer] exists' {
    run test -n "${(qqq)ZPWR_VERBS[timer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[to] exists' {
    run test -n "${(qqq)ZPWR_VERBS[to]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toggle] exists' {
    run test -n "${(qqq)ZPWR_VERBS[toggle]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tokens] exists' {
    run test -n "${(qqq)ZPWR_VERBS[tokens]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travis] exists' {
    run test -n "${(qqq)ZPWR_VERBS[travis]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbranch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[travisbranch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbuild] exists' {
    run test -n "${(qqq)ZPWR_VERBS[travisbuild]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travispr] exists' {
    run test -n "${(qqq)ZPWR_VERBS[travispr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[trc] exists' {
    run test -n "${(qqq)ZPWR_VERBS[trc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tty] exists' {
    run test -n "${(qqq)ZPWR_VERBS[tty]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uncompile] exists' {
    run test -n "${(qqq)ZPWR_VERBS[uncompile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uninstall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[uninstall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[update] exists' {
    run test -n "${(qqq)ZPWR_VERBS[update]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updateall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[updateall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedeps] exists' {
    run test -n "${(qqq)ZPWR_VERBS[updatedeps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedepsclean] exists' {
    run test -n "${(qqq)ZPWR_VERBS[updatedepsclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatezinit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[updatezinit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[upload] exists' {
    run test -n "${(qqq)ZPWR_VERBS[upload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[urlsafe] exists' {
    run test -n "${(qqq)ZPWR_VERBS[urlsafe]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbs] exists' {
    run test -n "${(qqq)ZPWR_VERBS[verbs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbscount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[verbscount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[verbsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsfzf] exists' {
    run test -n "${(qqq)ZPWR_VERBS[verbsfzf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbslist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[verbslist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimall] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimalledit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimalledit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimautoload] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimcd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimconfig] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimctags] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimemacsconfig] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimemacsconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimfilesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimfilesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimfindsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimfindsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtags] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimgtags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtagsedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimgtagsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimlocatesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimlocatesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimplugincount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimpluginlist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimpluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecent] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimrecent]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentcd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimrecentcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudo] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimrecentsudo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudocd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimrecentsudocd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscriptedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimscriptedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscripts] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimscripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtests] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimtests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtokens] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimtokens]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimwordsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vimwordsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vrc] exists' {
    run test -n "${(qqq)ZPWR_VERBS[vrc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[web] exists' {
    run test -n "${(qqq)ZPWR_VERBS[web]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whilesleep] exists' {
    run test -n "${(qqq)ZPWR_VERBS[whilesleep]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whiletrue] exists' {
    run test -n "${(qqq)ZPWR_VERBS[whiletrue]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[z] exists' {
    run test -n "${(qqq)ZPWR_VERBS[z]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcd] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcompdump] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zcompdump]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zp] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwr] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwrgithub] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zpwrgithub]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpz] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zpz]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zrc] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zrc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshplugincount] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zshplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshpluginlist] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zshpluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zshsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zstyle] exists' {
    run test -n "${(qqq)ZPWR_VERBS[zstyle]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[animate] exists' {
    run test -n "${(qqq)ZPWR_VERBS[animate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerlolcat] exists' {
    run test -n "${(qqq)ZPWR_VERBS[bannerlolcat]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannernopony] exists' {
    run test -n "${(qqq)ZPWR_VERBS[bannernopony]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerpony] exists' {
    run test -n "${(qqq)ZPWR_VERBS[bannerpony]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcleancache] exists' {
    run test -n "${(qqq)ZPWR_VERBS[cleangitcleancache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[creategif] exists' {
    run test -n "${(qqq)ZPWR_VERBS[creategif]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[curl] exists' {
    run test -n "${(qqq)ZPWR_VERBS[curl]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[deduppaths] exists' {
    run test -n "${(qqq)ZPWR_VERBS[deduppaths]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execpy] exists' {
    run test -n "${(qqq)ZPWR_VERBS[execpy]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[filesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[filesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[goclean] exists' {
    run test -n "${(qqq)ZPWR_VERBS[goclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[google] exists' {
    run test -n "${(qqq)ZPWR_VERBS[google]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[help] exists' {
    run test -n "${(qqq)ZPWR_VERBS[help]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[openurl] exists' {
    run test -n "${(qqq)ZPWR_VERBS[openurl]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pstreemonitor] exists' {
    run test -n "${(qqq)ZPWR_VERBS[pstreemonitor]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagspygments] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regengtagspygments]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagstype] exists' {
    run test -n "${(qqq)ZPWR_VERBS[regengtagstype]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[replacer] exists' {
    run test -n "${(qqq)ZPWR_VERBS[replacer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reset] exists' {
    run test -n "${(qqq)ZPWR_VERBS[reset]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[revealrecurse] exists' {
    run test -n "${(qqq)ZPWR_VERBS[revealrecurse]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptnew] exists' {
    run test -n "${(qqq)ZPWR_VERBS[scriptnew]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[torip] exists' {
    run test -n "${(qqq)ZPWR_VERBS[torip]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toriprenew] exists' {
    run test -n "${(qqq)ZPWR_VERBS[toriprenew]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatepull] exists' {
    run test -n "${(qqq)ZPWR_VERBS[updatepull]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearch] exists' {
    run test -n "${(qqq)ZPWR_VERBS[wordsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearchedit] exists' {
    run test -n "${(qqq)ZPWR_VERBS[wordsearchedit]}"
    assert $state equals 0
}
