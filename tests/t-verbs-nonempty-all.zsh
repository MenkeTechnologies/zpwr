#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test all ZPWR_VERBS values are non-empty
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_VERBS[a] value non-empty' {
    run test -n "${ZPWR_VERBS[a]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[about] value non-empty' {
    run test -n "${ZPWR_VERBS[about]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[alacritty] value non-empty' {
    run test -n "${ZPWR_VERBS[alacritty]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[all] value non-empty' {
    run test -n "${ZPWR_VERBS[all]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[allsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[allsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[altprettyprint] value non-empty' {
    run test -n "${ZPWR_VERBS[altprettyprint]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[animate] value non-empty' {
    run test -n "${ZPWR_VERBS[animate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[attach] value non-empty' {
    run test -n "${ZPWR_VERBS[attach]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoload] value non-empty' {
    run test -n "${ZPWR_VERBS[autoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadcount] value non-empty' {
    run test -n "${ZPWR_VERBS[autoloadcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[autoloadlist] value non-empty' {
    run test -n "${ZPWR_VERBS[autoloadlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[background] value non-empty' {
    run test -n "${ZPWR_VERBS[background]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backup] value non-empty' {
    run test -n "${ZPWR_VERBS[backup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backuphistory] value non-empty' {
    run test -n "${ZPWR_VERBS[backuphistory]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[banner] value non-empty' {
    run test -n "${ZPWR_VERBS[banner]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannercounts] value non-empty' {
    run test -n "${ZPWR_VERBS[bannercounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerlolcat] value non-empty' {
    run test -n "${ZPWR_VERBS[bannerlolcat]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannernopony] value non-empty' {
    run test -n "${ZPWR_VERBS[bannernopony]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[bannerpony] value non-empty' {
    run test -n "${ZPWR_VERBS[bannerpony]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[brc] value non-empty' {
    run test -n "${ZPWR_VERBS[brc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[c] value non-empty' {
    run test -n "${ZPWR_VERBS[c]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cat] value non-empty' {
    run test -n "${ZPWR_VERBS[cat]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catcd] value non-empty' {
    run test -n "${ZPWR_VERBS[catcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catnviminforecentf] value non-empty' {
    run test -n "${ZPWR_VERBS[catnviminforecentf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catrecentfviminfo] value non-empty' {
    run test -n "${ZPWR_VERBS[catrecentfviminfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[catviminfo] value non-empty' {
    run test -n "${ZPWR_VERBS[catviminfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cd] value non-empty' {
    run test -n "${ZPWR_VERBS[cd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cdup] value non-empty' {
    run test -n "${ZPWR_VERBS[cdup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cfasd] value non-empty' {
    run test -n "${ZPWR_VERBS[cfasd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changename] value non-empty' {
    run test -n "${ZPWR_VERBS[changename]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[changenamezpwr] value non-empty' {
    run test -n "${ZPWR_VERBS[changenamezpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanall] value non-empty' {
    run test -n "${ZPWR_VERBS[cleanall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancache] value non-empty' {
    run test -n "${ZPWR_VERBS[cleancache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleancompcache] value non-empty' {
    run test -n "${ZPWR_VERBS[cleancompcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirs] value non-empty' {
    run test -n "${ZPWR_VERBS[cleandirs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleandirsandtemp] value non-empty' {
    run test -n "${ZPWR_VERBS[cleandirsandtemp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcache] value non-empty' {
    run test -n "${ZPWR_VERBS[cleangitcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitcleancache] value non-empty' {
    run test -n "${ZPWR_VERBS[cleangitcleancache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleangitdirtycache] value non-empty' {
    run test -n "${ZPWR_VERBS[cleangitdirtycache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanlog] value non-empty' {
    run test -n "${ZPWR_VERBS[cleanlog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanrefreshupdate] value non-empty' {
    run test -n "${ZPWR_VERBS[cleanrefreshupdate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleantemp] value non-empty' {
    run test -n "${ZPWR_VERBS[cleantemp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[cleanupdatedeps] value non-empty' {
    run test -n "${ZPWR_VERBS[cleanupdatedeps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearlist] value non-empty' {
    run test -n "${ZPWR_VERBS[clearlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clearls] value non-empty' {
    run test -n "${ZPWR_VERBS[clearls]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[clone] value non-empty' {
    run test -n "${ZPWR_VERBS[clone]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[color2] value non-empty' {
    run test -n "${ZPWR_VERBS[color2]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colorsdiff] value non-empty' {
    run test -n "${ZPWR_VERBS[colorsdiff]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest] value non-empty' {
    run test -n "${ZPWR_VERBS[colortest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest256] value non-empty' {
    run test -n "${ZPWR_VERBS[colortest256]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compile] value non-empty' {
    run test -n "${ZPWR_VERBS[compile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefiles] value non-empty' {
    run test -n "${ZPWR_VERBS[compilefiles]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[compilefpath] value non-empty' {
    run test -n "${ZPWR_VERBS[compilefpath]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[completions] value non-empty' {
    run test -n "${ZPWR_VERBS[completions]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[comps] value non-empty' {
    run test -n "${ZPWR_VERBS[comps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[copycommand] value non-empty' {
    run test -n "${ZPWR_VERBS[copycommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[creategif] value non-empty' {
    run test -n "${ZPWR_VERBS[creategif]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[curl] value non-empty' {
    run test -n "${ZPWR_VERBS[curl]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[decompile] value non-empty' {
    run test -n "${ZPWR_VERBS[decompile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[deduppaths] value non-empty' {
    run test -n "${ZPWR_VERBS[deduppaths]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[detach] value non-empty' {
    run test -n "${ZPWR_VERBS[detach]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dfimage] value non-empty' {
    run test -n "${ZPWR_VERBS[dfimage]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[digs] value non-empty' {
    run test -n "${ZPWR_VERBS[digs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dirsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[dirsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dockerwipe] value non-empty' {
    run test -n "${ZPWR_VERBS[dockerwipe]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[e] value non-empty' {
    run test -n "${ZPWR_VERBS[e]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[edit] value non-empty' {
    run test -n "${ZPWR_VERBS[edit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[editor] value non-empty' {
    run test -n "${ZPWR_VERBS[editor]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsall] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsalledit] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsalledit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsallserver] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsallserver]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsautoload] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacscd] value non-empty' {
    run test -n "${ZPWR_VERBS[emacscd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsconfig] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsctags] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsemacsconfig] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsemacsconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsfilesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfilesearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsfilesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsfindsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsfindsearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsfindsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtags] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsgtags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsgtagsedit] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsgtagsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[emacslocatesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacslocatesearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[emacslocatesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsplugincount] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacspluginlist] value non-empty' {
    run test -n "${ZPWR_VERBS[emacspluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecent] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsrecent]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentcd] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsrecentcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudo] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsrecentsudo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudocd] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsrecentsudocd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscriptedit] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsscriptedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsscripts] value non-empty' {
    run test -n "${ZPWR_VERBS[emacsscripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstests] value non-empty' {
    run test -n "${ZPWR_VERBS[emacstests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacstokens] value non-empty' {
    run test -n "${ZPWR_VERBS[emacstokens]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[emacswordsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacswordsearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[emacswordsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacszpwr] value non-empty' {
    run test -n "${ZPWR_VERBS[emacszpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envaccept] value non-empty' {
    run test -n "${ZPWR_VERBS[envaccept]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcachesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[envcachesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envcounts] value non-empty' {
    run test -n "${ZPWR_VERBS[envcounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envedit] value non-empty' {
    run test -n "${ZPWR_VERBS[envedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcachesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[environmentcachesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentcounts] value non-empty' {
    run test -n "${ZPWR_VERBS[environmentcounts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariables] value non-empty' {
    run test -n "${ZPWR_VERBS[environmentvariables]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvariablesall] value non-empty' {
    run test -n "${ZPWR_VERBS[environmentvariablesall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvars] value non-empty' {
    run test -n "${ZPWR_VERBS[environmentvars]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[environmentvarsall] value non-empty' {
    run test -n "${ZPWR_VERBS[environmentvarsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvars] value non-empty' {
    run test -n "${ZPWR_VERBS[envvars]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvarsall] value non-empty' {
    run test -n "${ZPWR_VERBS[envvarsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ev] value non-empty' {
    run test -n "${ZPWR_VERBS[ev]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[eva] value non-empty' {
    run test -n "${ZPWR_VERBS[eva]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglob] value non-empty' {
    run test -n "${ZPWR_VERBS[execglob]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execglobparallel] value non-empty' {
    run test -n "${ZPWR_VERBS[execglobparallel]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[execpy] value non-empty' {
    run test -n "${ZPWR_VERBS[execpy]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercism] value non-empty' {
    run test -n "${ZPWR_VERBS[exercism]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismdownload] value non-empty' {
    run test -n "${ZPWR_VERBS[exercismdownload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exercismedit] value non-empty' {
    run test -n "${ZPWR_VERBS[exercismedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exists] value non-empty' {
    run test -n "${ZPWR_VERBS[exists]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[existscommand] value non-empty' {
    run test -n "${ZPWR_VERBS[existscommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[f] value non-empty' {
    run test -n "${ZPWR_VERBS[f]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[figletfonts] value non-empty' {
    run test -n "${ZPWR_VERBS[figletfonts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[filesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[filesearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[filesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[findsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[findsearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[findsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for] value non-empty' {
    run test -n "${ZPWR_VERBS[for]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[for10] value non-empty' {
    run test -n "${ZPWR_VERBS[for10]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordir] value non-empty' {
    run test -n "${ZPWR_VERBS[fordir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordirupdate] value non-empty' {
    run test -n "${ZPWR_VERBS[fordirupdate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitadd] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitadd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitclean] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitdiff] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitdiff]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignore] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitignore]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreclean] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitignoreclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreget] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitignoreget]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignorelist] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitignorelist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitignoreupdate] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitignoreupdate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitinfo] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitinfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitlog] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitlog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitreset] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitreset]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitrestore] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitrestore]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitstash] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitstash]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forgitwarn] value non-empty' {
    run test -n "${ZPWR_VERBS[forgitwarn]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forked] value non-empty' {
    run test -n "${ZPWR_VERBS[forked]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[forward] value non-empty' {
    run test -n "${ZPWR_VERBS[forward]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fp] value non-empty' {
    run test -n "${ZPWR_VERBS[fp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fwd] value non-empty' {
    run test -n "${ZPWR_VERBS[fwd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gh] value non-empty' {
    run test -n "${ZPWR_VERBS[gh]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghcontribcount] value non-empty' {
    run test -n "${ZPWR_VERBS[ghcontribcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ghz] value non-empty' {
    run test -n "${ZPWR_VERBS[ghz]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitaemail] value non-empty' {
    run test -n "${ZPWR_VERBS[gitaemail]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcemail] value non-empty' {
    run test -n "${ZPWR_VERBS[gitcemail]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcache] value non-empty' {
    run test -n "${ZPWR_VERBS[gitclearcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcommit] value non-empty' {
    run test -n "${ZPWR_VERBS[gitclearcommit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearfile] value non-empty' {
    run test -n "${ZPWR_VERBS[gitclearfile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommit] value non-empty' {
    run test -n "${ZPWR_VERBS[gitcommit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommitcount] value non-empty' {
    run test -n "${ZPWR_VERBS[gitcommitcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommits] value non-empty' {
    run test -n "${ZPWR_VERBS[gitcommits]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitconfig] value non-empty' {
    run test -n "${ZPWR_VERBS[gitconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcount] value non-empty' {
    run test -n "${ZPWR_VERBS[gitcontribcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountdirs] value non-empty' {
    run test -n "${ZPWR_VERBS[gitcontribcountdirs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountlines] value non-empty' {
    run test -n "${ZPWR_VERBS[gitcontribcountlines]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitdir] value non-empty' {
    run test -n "${ZPWR_VERBS[gitdir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitedittag] value non-empty' {
    run test -n "${ZPWR_VERBS[gitedittag]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitemail] value non-empty' {
    run test -n "${ZPWR_VERBS[gitemail]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitforalldir] value non-empty' {
    run test -n "${ZPWR_VERBS[gitforalldir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirdevelop] value non-empty' {
    run test -n "${ZPWR_VERBS[gitfordirdevelop]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitfordirmain] value non-empty' {
    run test -n "${ZPWR_VERBS[gitfordirmain]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalconfig] value non-empty' {
    run test -n "${ZPWR_VERBS[gitglobalconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitglobalignores] value non-empty' {
    run test -n "${ZPWR_VERBS[gitglobalignores]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[github] value non-empty' {
    run test -n "${ZPWR_VERBS[github]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcontribcount] value non-empty' {
    run test -n "${ZPWR_VERBS[githubcontribcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcreate] value non-empty' {
    run test -n "${ZPWR_VERBS[githubcreate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubdelete] value non-empty' {
    run test -n "${ZPWR_VERBS[githubdelete]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubzpwr] value non-empty' {
    run test -n "${ZPWR_VERBS[githubzpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignore] value non-empty' {
    run test -n "${ZPWR_VERBS[gitignore]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignores] value non-empty' {
    run test -n "${ZPWR_VERBS[gitignores]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitlargest] value non-empty' {
    run test -n "${ZPWR_VERBS[gitlargest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitremotes] value non-empty' {
    run test -n "${ZPWR_VERBS[gitremotes]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleancacheexec] value non-empty' {
    run test -n "${ZPWR_VERBS[gitreposcleancacheexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposcleanexec] value non-empty' {
    run test -n "${ZPWR_VERBS[gitreposcleanexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtycacheexec] value non-empty' {
    run test -n "${ZPWR_VERBS[gitreposdirtycacheexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposdirtyexec] value non-empty' {
    run test -n "${ZPWR_VERBS[gitreposdirtyexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposexec] value non-empty' {
    run test -n "${ZPWR_VERBS[gitreposexec]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposfile] value non-empty' {
    run test -n "${ZPWR_VERBS[gitreposfile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[gitsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gittotallines] value non-empty' {
    run test -n "${ZPWR_VERBS[gittotallines]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatefordir] value non-empty' {
    run test -n "${ZPWR_VERBS[gitupdatefordir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitupdatetag] value non-empty' {
    run test -n "${ZPWR_VERBS[gitupdatetag]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordir] value non-empty' {
    run test -n "${ZPWR_VERBS[gitzfordir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirdevelop] value non-empty' {
    run test -n "${ZPWR_VERBS[gitzfordirdevelop]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitzfordirmain] value non-empty' {
    run test -n "${ZPWR_VERBS[gitzfordirmain]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[goclean] value non-empty' {
    run test -n "${ZPWR_VERBS[goclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[google] value non-empty' {
    run test -n "${ZPWR_VERBS[google]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[grep] value non-empty' {
    run test -n "${ZPWR_VERBS[grep]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hc] value non-empty' {
    run test -n "${ZPWR_VERBS[hc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hd] value non-empty' {
    run test -n "${ZPWR_VERBS[hd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[help] value non-empty' {
    run test -n "${ZPWR_VERBS[help]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hidden] value non-empty' {
    run test -n "${ZPWR_VERBS[hidden]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hist] value non-empty' {
    run test -n "${ZPWR_VERBS[hist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histedit] value non-empty' {
    run test -n "${ZPWR_VERBS[histedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[histfile] value non-empty' {
    run test -n "${ZPWR_VERBS[histfile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[home] value non-empty' {
    run test -n "${ZPWR_VERBS[home]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoload] value non-empty' {
    run test -n "${ZPWR_VERBS[homeautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoloadcommon] value non-empty' {
    run test -n "${ZPWR_VERBS[homeautoloadcommon]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homecomps] value non-empty' {
    run test -n "${ZPWR_VERBS[homecomps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeenv] value non-empty' {
    run test -n "${ZPWR_VERBS[homeenv]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeexercism] value non-empty' {
    run test -n "${ZPWR_VERBS[homeexercism]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeinstall] value non-empty' {
    run test -n "${ZPWR_VERBS[homeinstall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homelocal] value non-empty' {
    run test -n "${ZPWR_VERBS[homelocal]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homescripts] value non-empty' {
    run test -n "${ZPWR_VERBS[homescripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometest] value non-empty' {
    run test -n "${ZPWR_VERBS[hometest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometests] value non-empty' {
    run test -n "${ZPWR_VERBS[hometests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometmux] value non-empty' {
    run test -n "${ZPWR_VERBS[hometmux]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[info] value non-empty' {
    run test -n "${ZPWR_VERBS[info]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[install] value non-empty' {
    run test -n "${ZPWR_VERBS[install]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[kill] value non-empty' {
    run test -n "${ZPWR_VERBS[kill]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killedit] value non-empty' {
    run test -n "${ZPWR_VERBS[killedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killmux] value non-empty' {
    run test -n "${ZPWR_VERBS[killmux]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killremote] value non-empty' {
    run test -n "${ZPWR_VERBS[killremote]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[linecount] value non-empty' {
    run test -n "${ZPWR_VERBS[linecount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[list] value non-empty' {
    run test -n "${ZPWR_VERBS[list]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loadjenv] value non-empty' {
    run test -n "${ZPWR_VERBS[loadjenv]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[locatesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[locatesearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[locatesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebug] value non-empty' {
    run test -n "${ZPWR_VERBS[logdebug]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebugconsole] value non-empty' {
    run test -n "${ZPWR_VERBS[logdebugconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerror] value non-empty' {
    run test -n "${ZPWR_VERBS[logerror]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerrorconsole] value non-empty' {
    run test -n "${ZPWR_VERBS[logerrorconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logincount] value non-empty' {
    run test -n "${ZPWR_VERBS[logincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfo] value non-empty' {
    run test -n "${ZPWR_VERBS[loginfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfoconsole] value non-empty' {
    run test -n "${ZPWR_VERBS[loginfoconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtrace] value non-empty' {
    run test -n "${ZPWR_VERBS[logtrace]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtraceconsole] value non-empty' {
    run test -n "${ZPWR_VERBS[logtraceconsole]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ls] value non-empty' {
    run test -n "${ZPWR_VERBS[ls]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsof] value non-empty' {
    run test -n "${ZPWR_VERBS[lsof]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[lsofedit] value non-empty' {
    run test -n "${ZPWR_VERBS[lsofedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makedir] value non-empty' {
    run test -n "${ZPWR_VERBS[makedir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makefile] value non-empty' {
    run test -n "${ZPWR_VERBS[makefile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[man] value non-empty' {
    run test -n "${ZPWR_VERBS[man]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[modules] value non-empty' {
    run test -n "${ZPWR_VERBS[modules]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[mygithub] value non-empty' {
    run test -n "${ZPWR_VERBS[mygithub]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[open] value non-empty' {
    run test -n "${ZPWR_VERBS[open]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[opencommand] value non-empty' {
    run test -n "${ZPWR_VERBS[opencommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[openurl] value non-empty' {
    run test -n "${ZPWR_VERBS[openurl]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[options] value non-empty' {
    run test -n "${ZPWR_VERBS[options]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastebuffer] value non-empty' {
    run test -n "${ZPWR_VERBS[pastebuffer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastecommand] value non-empty' {
    run test -n "${ZPWR_VERBS[pastecommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pastestring] value non-empty' {
    run test -n "${ZPWR_VERBS[pastestring]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pi] value non-empty' {
    run test -n "${ZPWR_VERBS[pi]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ping] value non-empty' {
    run test -n "${ZPWR_VERBS[ping]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pir] value non-empty' {
    run test -n "${ZPWR_VERBS[pir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[plugins] value non-empty' {
    run test -n "${ZPWR_VERBS[plugins]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[poll] value non-empty' {
    run test -n "${ZPWR_VERBS[poll]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[post] value non-empty' {
    run test -n "${ZPWR_VERBS[post]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pre] value non-empty' {
    run test -n "${ZPWR_VERBS[pre]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[prettyprint] value non-empty' {
    run test -n "${ZPWR_VERBS[prettyprint]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[printmap] value non-empty' {
    run test -n "${ZPWR_VERBS[printmap]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ps] value non-empty' {
    run test -n "${ZPWR_VERBS[ps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pstreemonitor] value non-empty' {
    run test -n "${ZPWR_VERBS[pstreemonitor]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[pygmentcolors] value non-empty' {
    run test -n "${ZPWR_VERBS[pygmentcolors]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[r] value non-empty' {
    run test -n "${ZPWR_VERBS[r]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompile] value non-empty' {
    run test -n "${ZPWR_VERBS[recompile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefiles] value non-empty' {
    run test -n "${ZPWR_VERBS[recompilefiles]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[recompilefpath] value non-empty' {
    run test -n "${ZPWR_VERBS[recompilefpath]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[refreshzwc] value non-empty' {
    run test -n "${ZPWR_VERBS[refreshzwc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regen] value non-empty' {
    run test -n "${ZPWR_VERBS[regen]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenall] value non-empty' {
    run test -n "${ZPWR_VERBS[regenall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenconfiglinks] value non-empty' {
    run test -n "${ZPWR_VERBS[regenconfiglinks]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenctags] value non-empty' {
    run test -n "${ZPWR_VERBS[regenctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenenvcache] value non-empty' {
    run test -n "${ZPWR_VERBS[regenenvcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitdirtyrepocache] value non-empty' {
    run test -n "${ZPWR_VERBS[regengitdirtyrepocache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengitrepocache] value non-empty' {
    run test -n "${ZPWR_VERBS[regengitrepocache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtags] value non-empty' {
    run test -n "${ZPWR_VERBS[regengtags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagspygments] value non-empty' {
    run test -n "${ZPWR_VERBS[regengtagspygments]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regengtagstype] value non-empty' {
    run test -n "${ZPWR_VERBS[regengtagstype]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenhistory] value non-empty' {
    run test -n "${ZPWR_VERBS[regenhistory]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenkeybindings] value non-empty' {
    run test -n "${ZPWR_VERBS[regenkeybindings]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenpowerline] value non-empty' {
    run test -n "${ZPWR_VERBS[regenpowerline]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenzsh] value non-empty' {
    run test -n "${ZPWR_VERBS[regenzsh]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reload] value non-empty' {
    run test -n "${ZPWR_VERBS[reload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[relpath] value non-empty' {
    run test -n "${ZPWR_VERBS[relpath]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rename] value non-empty' {
    run test -n "${ZPWR_VERBS[rename]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[replacer] value non-empty' {
    run test -n "${ZPWR_VERBS[replacer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[repo] value non-empty' {
    run test -n "${ZPWR_VERBS[repo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reset] value non-empty' {
    run test -n "${ZPWR_VERBS[reset]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restart] value non-empty' {
    run test -n "${ZPWR_VERBS[restart]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[restorehistory] value non-empty' {
    run test -n "${ZPWR_VERBS[restorehistory]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[return2] value non-empty' {
    run test -n "${ZPWR_VERBS[return2]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reveal] value non-empty' {
    run test -n "${ZPWR_VERBS[reveal]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[revealrecurse] value non-empty' {
    run test -n "${ZPWR_VERBS[revealrecurse]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[reverse] value non-empty' {
    run test -n "${ZPWR_VERBS[reverse]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rmconfiglinks] value non-empty' {
    run test -n "${ZPWR_VERBS[rmconfiglinks]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rvs] value non-empty' {
    run test -n "${ZPWR_VERBS[rvs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptcount] value non-empty' {
    run test -n "${ZPWR_VERBS[scriptcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptlist] value non-empty' {
    run test -n "${ZPWR_VERBS[scriptlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scriptnew] value non-empty' {
    run test -n "${ZPWR_VERBS[scriptnew]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripts] value non-empty' {
    run test -n "${ZPWR_VERBS[scripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[scripttopdf] value non-empty' {
    run test -n "${ZPWR_VERBS[scripttopdf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[search] value non-empty' {
    run test -n "${ZPWR_VERBS[search]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[servicedown] value non-empty' {
    run test -n "${ZPWR_VERBS[servicedown]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[serviceup] value non-empty' {
    run test -n "${ZPWR_VERBS[serviceup]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[start] value non-empty' {
    run test -n "${ZPWR_VERBS[start]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startauto] value non-empty' {
    run test -n "${ZPWR_VERBS[startauto]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsend] value non-empty' {
    run test -n "${ZPWR_VERBS[startsend]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsendfull] value non-empty' {
    run test -n "${ZPWR_VERBS[startsendfull]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[starttabs] value non-empty' {
    run test -n "${ZPWR_VERBS[starttabs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopauto] value non-empty' {
    run test -n "${ZPWR_VERBS[stopauto]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopsend] value non-empty' {
    run test -n "${ZPWR_VERBS[stopsend]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommands] value non-empty' {
    run test -n "${ZPWR_VERBS[subcommands]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandscount] value non-empty' {
    run test -n "${ZPWR_VERBS[subcommandscount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsedit] value non-empty' {
    run test -n "${ZPWR_VERBS[subcommandsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandsfzf] value non-empty' {
    run test -n "${ZPWR_VERBS[subcommandsfzf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[subcommandslist] value non-empty' {
    run test -n "${ZPWR_VERBS[subcommandslist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[taillog] value non-empty' {
    run test -n "${ZPWR_VERBS[taillog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[test] value non-empty' {
    run test -n "${ZPWR_VERBS[test]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testall] value non-empty' {
    run test -n "${ZPWR_VERBS[testall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tests] value non-empty' {
    run test -n "${ZPWR_VERBS[tests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[testsall] value non-empty' {
    run test -n "${ZPWR_VERBS[testsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[timer] value non-empty' {
    run test -n "${ZPWR_VERBS[timer]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[to] value non-empty' {
    run test -n "${ZPWR_VERBS[to]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toggle] value non-empty' {
    run test -n "${ZPWR_VERBS[toggle]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tokens] value non-empty' {
    run test -n "${ZPWR_VERBS[tokens]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[torip] value non-empty' {
    run test -n "${ZPWR_VERBS[torip]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[toriprenew] value non-empty' {
    run test -n "${ZPWR_VERBS[toriprenew]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travis] value non-empty' {
    run test -n "${ZPWR_VERBS[travis]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbranch] value non-empty' {
    run test -n "${ZPWR_VERBS[travisbranch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travisbuild] value non-empty' {
    run test -n "${ZPWR_VERBS[travisbuild]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[travispr] value non-empty' {
    run test -n "${ZPWR_VERBS[travispr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[trc] value non-empty' {
    run test -n "${ZPWR_VERBS[trc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[tty] value non-empty' {
    run test -n "${ZPWR_VERBS[tty]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uncompile] value non-empty' {
    run test -n "${ZPWR_VERBS[uncompile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[uninstall] value non-empty' {
    run test -n "${ZPWR_VERBS[uninstall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[update] value non-empty' {
    run test -n "${ZPWR_VERBS[update]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updateall] value non-empty' {
    run test -n "${ZPWR_VERBS[updateall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedeps] value non-empty' {
    run test -n "${ZPWR_VERBS[updatedeps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatedepsclean] value non-empty' {
    run test -n "${ZPWR_VERBS[updatedepsclean]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatepull] value non-empty' {
    run test -n "${ZPWR_VERBS[updatepull]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[updatezinit] value non-empty' {
    run test -n "${ZPWR_VERBS[updatezinit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[upload] value non-empty' {
    run test -n "${ZPWR_VERBS[upload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[urlsafe] value non-empty' {
    run test -n "${ZPWR_VERBS[urlsafe]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbs] value non-empty' {
    run test -n "${ZPWR_VERBS[verbs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbscount] value non-empty' {
    run test -n "${ZPWR_VERBS[verbscount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsedit] value non-empty' {
    run test -n "${ZPWR_VERBS[verbsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbsfzf] value non-empty' {
    run test -n "${ZPWR_VERBS[verbsfzf]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[verbslist] value non-empty' {
    run test -n "${ZPWR_VERBS[verbslist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimall] value non-empty' {
    run test -n "${ZPWR_VERBS[vimall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimalledit] value non-empty' {
    run test -n "${ZPWR_VERBS[vimalledit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimautoload] value non-empty' {
    run test -n "${ZPWR_VERBS[vimautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimcd] value non-empty' {
    run test -n "${ZPWR_VERBS[vimcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimconfig] value non-empty' {
    run test -n "${ZPWR_VERBS[vimconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimctags] value non-empty' {
    run test -n "${ZPWR_VERBS[vimctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimemacsconfig] value non-empty' {
    run test -n "${ZPWR_VERBS[vimemacsconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[vimfilesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfilesearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[vimfilesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[vimfindsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimfindsearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[vimfindsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtags] value non-empty' {
    run test -n "${ZPWR_VERBS[vimgtags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimgtagsedit] value non-empty' {
    run test -n "${ZPWR_VERBS[vimgtagsedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearch] value non-empty' {
    run test -n "${ZPWR_VERBS[vimlocatesearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimlocatesearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[vimlocatesearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimplugincount] value non-empty' {
    run test -n "${ZPWR_VERBS[vimplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimpluginlist] value non-empty' {
    run test -n "${ZPWR_VERBS[vimpluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecent] value non-empty' {
    run test -n "${ZPWR_VERBS[vimrecent]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentcd] value non-empty' {
    run test -n "${ZPWR_VERBS[vimrecentcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudo] value non-empty' {
    run test -n "${ZPWR_VERBS[vimrecentsudo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecentsudocd] value non-empty' {
    run test -n "${ZPWR_VERBS[vimrecentsudocd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscriptedit] value non-empty' {
    run test -n "${ZPWR_VERBS[vimscriptedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscripts] value non-empty' {
    run test -n "${ZPWR_VERBS[vimscripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[vimsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtests] value non-empty' {
    run test -n "${ZPWR_VERBS[vimtests]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimtokens] value non-empty' {
    run test -n "${ZPWR_VERBS[vimtokens]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[vimwordsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimwordsearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[vimwordsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vrc] value non-empty' {
    run test -n "${ZPWR_VERBS[vrc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[web] value non-empty' {
    run test -n "${ZPWR_VERBS[web]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whilesleep] value non-empty' {
    run test -n "${ZPWR_VERBS[whilesleep]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[whiletrue] value non-empty' {
    run test -n "${ZPWR_VERBS[whiletrue]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[wordsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[wordsearchedit] value non-empty' {
    run test -n "${ZPWR_VERBS[wordsearchedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[z] value non-empty' {
    run test -n "${ZPWR_VERBS[z]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcd] value non-empty' {
    run test -n "${ZPWR_VERBS[zcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcompdump] value non-empty' {
    run test -n "${ZPWR_VERBS[zcompdump]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zp] value non-empty' {
    run test -n "${ZPWR_VERBS[zp]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwr] value non-empty' {
    run test -n "${ZPWR_VERBS[zpwr]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwrCloneToForked] value non-empty' {
    run test -n "${ZPWR_VERBS[zpwrCloneToForked]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpwrgithub] value non-empty' {
    run test -n "${ZPWR_VERBS[zpwrgithub]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zpz] value non-empty' {
    run test -n "${ZPWR_VERBS[zpz]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zrc] value non-empty' {
    run test -n "${ZPWR_VERBS[zrc]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshplugincount] value non-empty' {
    run test -n "${ZPWR_VERBS[zshplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshpluginlist] value non-empty' {
    run test -n "${ZPWR_VERBS[zshpluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshsearch] value non-empty' {
    run test -n "${ZPWR_VERBS[zshsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zstyle] value non-empty' {
    run test -n "${ZPWR_VERBS[zstyle]}"
    assert $state equals 0
}

