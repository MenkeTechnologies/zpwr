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
    [[ -n "${ZPWR_VERBS[a]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[about] value non-empty' {
    [[ -n "${ZPWR_VERBS[about]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[alacritty] value non-empty' {
    [[ -n "${ZPWR_VERBS[alacritty]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[all] value non-empty' {
    [[ -n "${ZPWR_VERBS[all]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[allsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[allsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[altprettyprint] value non-empty' {
    [[ -n "${ZPWR_VERBS[altprettyprint]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[animate] value non-empty' {
    [[ -n "${ZPWR_VERBS[animate]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[attach] value non-empty' {
    [[ -n "${ZPWR_VERBS[attach]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[autoload] value non-empty' {
    [[ -n "${ZPWR_VERBS[autoload]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[autoloadcount] value non-empty' {
    [[ -n "${ZPWR_VERBS[autoloadcount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[autoloadlist] value non-empty' {
    [[ -n "${ZPWR_VERBS[autoloadlist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[background] value non-empty' {
    [[ -n "${ZPWR_VERBS[background]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[backup] value non-empty' {
    [[ -n "${ZPWR_VERBS[backup]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[backuphistory] value non-empty' {
    [[ -n "${ZPWR_VERBS[backuphistory]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[banner] value non-empty' {
    [[ -n "${ZPWR_VERBS[banner]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[bannercounts] value non-empty' {
    [[ -n "${ZPWR_VERBS[bannercounts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[bannerlolcat] value non-empty' {
    [[ -n "${ZPWR_VERBS[bannerlolcat]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[bannernopony] value non-empty' {
    [[ -n "${ZPWR_VERBS[bannernopony]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[bannerpony] value non-empty' {
    [[ -n "${ZPWR_VERBS[bannerpony]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[brc] value non-empty' {
    [[ -n "${ZPWR_VERBS[brc]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[c] value non-empty' {
    [[ -n "${ZPWR_VERBS[c]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cat] value non-empty' {
    [[ -n "${ZPWR_VERBS[cat]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[catcd] value non-empty' {
    [[ -n "${ZPWR_VERBS[catcd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[catnviminforecentf] value non-empty' {
    [[ -n "${ZPWR_VERBS[catnviminforecentf]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[catrecentfviminfo] value non-empty' {
    [[ -n "${ZPWR_VERBS[catrecentfviminfo]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[catviminfo] value non-empty' {
    [[ -n "${ZPWR_VERBS[catviminfo]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cd] value non-empty' {
    [[ -n "${ZPWR_VERBS[cd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cdup] value non-empty' {
    [[ -n "${ZPWR_VERBS[cdup]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cfasd] value non-empty' {
    [[ -n "${ZPWR_VERBS[cfasd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[changename] value non-empty' {
    [[ -n "${ZPWR_VERBS[changename]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[changenamezpwr] value non-empty' {
    [[ -n "${ZPWR_VERBS[changenamezpwr]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleanall] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleanall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleancache] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleancache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleancompcache] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleancompcache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleandirs] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleandirs]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleandirsandtemp] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleandirsandtemp]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleangitcache] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleangitcache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleangitcleancache] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleangitcleancache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleangitdirtycache] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleangitdirtycache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleanlog] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleanlog]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleanrefreshupdate] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleanrefreshupdate]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleantemp] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleantemp]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[cleanupdatedeps] value non-empty' {
    [[ -n "${ZPWR_VERBS[cleanupdatedeps]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[clearlist] value non-empty' {
    [[ -n "${ZPWR_VERBS[clearlist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[clearls] value non-empty' {
    [[ -n "${ZPWR_VERBS[clearls]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[clone] value non-empty' {
    [[ -n "${ZPWR_VERBS[clone]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[color2] value non-empty' {
    [[ -n "${ZPWR_VERBS[color2]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[colorsdiff] value non-empty' {
    [[ -n "${ZPWR_VERBS[colorsdiff]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[colortest] value non-empty' {
    [[ -n "${ZPWR_VERBS[colortest]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[colortest256] value non-empty' {
    [[ -n "${ZPWR_VERBS[colortest256]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[compile] value non-empty' {
    [[ -n "${ZPWR_VERBS[compile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[compilefiles] value non-empty' {
    [[ -n "${ZPWR_VERBS[compilefiles]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[compilefpath] value non-empty' {
    [[ -n "${ZPWR_VERBS[compilefpath]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[completions] value non-empty' {
    [[ -n "${ZPWR_VERBS[completions]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[comps] value non-empty' {
    [[ -n "${ZPWR_VERBS[comps]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[copycommand] value non-empty' {
    [[ -n "${ZPWR_VERBS[copycommand]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[creategif] value non-empty' {
    [[ -n "${ZPWR_VERBS[creategif]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[curl] value non-empty' {
    [[ -n "${ZPWR_VERBS[curl]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[decompile] value non-empty' {
    [[ -n "${ZPWR_VERBS[decompile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[deduppaths] value non-empty' {
    [[ -n "${ZPWR_VERBS[deduppaths]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[detach] value non-empty' {
    [[ -n "${ZPWR_VERBS[detach]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[dfimage] value non-empty' {
    [[ -n "${ZPWR_VERBS[dfimage]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[digs] value non-empty' {
    [[ -n "${ZPWR_VERBS[digs]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[dirsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[dirsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[dockerwipe] value non-empty' {
    [[ -n "${ZPWR_VERBS[dockerwipe]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[e] value non-empty' {
    [[ -n "${ZPWR_VERBS[e]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[edit] value non-empty' {
    [[ -n "${ZPWR_VERBS[edit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[editor] value non-empty' {
    [[ -n "${ZPWR_VERBS[editor]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsall] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsalledit] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsalledit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsallserver] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsallserver]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsautoload] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsautoload]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacscd] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacscd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsconfig] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsconfig]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsctags] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsctags]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsemacsconfig] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsemacsconfig]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsfilesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsfilesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsfilesearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsfilesearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsfindsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsfindsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsfindsearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsfindsearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsgtags] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsgtags]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsgtagsedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsgtagsedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacslocatesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacslocatesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacslocatesearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacslocatesearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsplugincount] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsplugincount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacspluginlist] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacspluginlist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsrecent] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsrecent]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsrecentcd] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsrecentcd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudo] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsrecentsudo]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsrecentsudocd] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsrecentsudocd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsscriptedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsscriptedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacsscripts] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacsscripts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacstests] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacstests]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacstokens] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacstokens]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacswordsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacswordsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacswordsearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacswordsearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[emacszpwr] value non-empty' {
    [[ -n "${ZPWR_VERBS[emacszpwr]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[envaccept] value non-empty' {
    [[ -n "${ZPWR_VERBS[envaccept]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[envcachesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[envcachesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[envcounts] value non-empty' {
    [[ -n "${ZPWR_VERBS[envcounts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[envedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[envedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[environmentcachesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[environmentcachesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[environmentcounts] value non-empty' {
    [[ -n "${ZPWR_VERBS[environmentcounts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[environmentvariables] value non-empty' {
    [[ -n "${ZPWR_VERBS[environmentvariables]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[environmentvariablesall] value non-empty' {
    [[ -n "${ZPWR_VERBS[environmentvariablesall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[environmentvars] value non-empty' {
    [[ -n "${ZPWR_VERBS[environmentvars]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[environmentvarsall] value non-empty' {
    [[ -n "${ZPWR_VERBS[environmentvarsall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[envvars] value non-empty' {
    [[ -n "${ZPWR_VERBS[envvars]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[envvarsall] value non-empty' {
    [[ -n "${ZPWR_VERBS[envvarsall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[ev] value non-empty' {
    [[ -n "${ZPWR_VERBS[ev]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[eva] value non-empty' {
    [[ -n "${ZPWR_VERBS[eva]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[execglob] value non-empty' {
    [[ -n "${ZPWR_VERBS[execglob]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[execglobparallel] value non-empty' {
    [[ -n "${ZPWR_VERBS[execglobparallel]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[execpy] value non-empty' {
    [[ -n "${ZPWR_VERBS[execpy]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[exercism] value non-empty' {
    [[ -n "${ZPWR_VERBS[exercism]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[exercismdownload] value non-empty' {
    [[ -n "${ZPWR_VERBS[exercismdownload]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[exercismedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[exercismedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[exists] value non-empty' {
    [[ -n "${ZPWR_VERBS[exists]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[existscommand] value non-empty' {
    [[ -n "${ZPWR_VERBS[existscommand]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[f] value non-empty' {
    [[ -n "${ZPWR_VERBS[f]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[figletfonts] value non-empty' {
    [[ -n "${ZPWR_VERBS[figletfonts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[filesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[filesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[filesearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[filesearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[findsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[findsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[findsearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[findsearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[for] value non-empty' {
    [[ -n "${ZPWR_VERBS[for]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[for10] value non-empty' {
    [[ -n "${ZPWR_VERBS[for10]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[fordir] value non-empty' {
    [[ -n "${ZPWR_VERBS[fordir]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[fordirupdate] value non-empty' {
    [[ -n "${ZPWR_VERBS[fordirupdate]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitadd] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitadd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitclean] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitclean]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitdiff] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitdiff]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitignore] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitignore]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitignoreclean] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitignoreclean]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitignoreget] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitignoreget]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitignorelist] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitignorelist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitignoreupdate] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitignoreupdate]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitinfo] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitinfo]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitlog] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitlog]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitreset] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitreset]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitrestore] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitrestore]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitstash] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitstash]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forgitwarn] value non-empty' {
    [[ -n "${ZPWR_VERBS[forgitwarn]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forked] value non-empty' {
    [[ -n "${ZPWR_VERBS[forked]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[forward] value non-empty' {
    [[ -n "${ZPWR_VERBS[forward]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[fp] value non-empty' {
    [[ -n "${ZPWR_VERBS[fp]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[fwd] value non-empty' {
    [[ -n "${ZPWR_VERBS[fwd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gh] value non-empty' {
    [[ -n "${ZPWR_VERBS[gh]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[ghcontribcount] value non-empty' {
    [[ -n "${ZPWR_VERBS[ghcontribcount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[ghz] value non-empty' {
    [[ -n "${ZPWR_VERBS[ghz]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitaemail] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitaemail]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitcemail] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitcemail]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitclearcache] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitclearcache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitclearcommit] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitclearcommit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitclearfile] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitclearfile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitcommit] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitcommit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitcommitcount] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitcommitcount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitcommits] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitcommits]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitconfig] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitconfig]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitcontribcount] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitcontribcount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitcontribcountdirs] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitcontribcountdirs]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitcontribcountlines] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitcontribcountlines]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitdir] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitdir]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitedittag] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitedittag]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitemail] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitemail]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitforalldir] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitforalldir]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitfordirdevelop] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitfordirdevelop]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitfordirmain] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitfordirmain]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitglobalconfig] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitglobalconfig]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitglobalignores] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitglobalignores]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[github] value non-empty' {
    [[ -n "${ZPWR_VERBS[github]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[githubcontribcount] value non-empty' {
    [[ -n "${ZPWR_VERBS[githubcontribcount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[githubcreate] value non-empty' {
    [[ -n "${ZPWR_VERBS[githubcreate]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[githubdelete] value non-empty' {
    [[ -n "${ZPWR_VERBS[githubdelete]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[githubzpwr] value non-empty' {
    [[ -n "${ZPWR_VERBS[githubzpwr]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitignore] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitignore]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitignores] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitignores]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitlargest] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitlargest]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitremotes] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitremotes]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitreposcleancacheexec] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitreposcleancacheexec]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitreposcleanexec] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitreposcleanexec]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitreposdirtycacheexec] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitreposdirtycacheexec]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitreposdirtyexec] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitreposdirtyexec]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitreposexec] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitreposexec]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitreposfile] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitreposfile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gittotallines] value non-empty' {
    [[ -n "${ZPWR_VERBS[gittotallines]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitupdatefordir] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitupdatefordir]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitupdatetag] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitupdatetag]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitzfordir] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitzfordir]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitzfordirdevelop] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitzfordirdevelop]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[gitzfordirmain] value non-empty' {
    [[ -n "${ZPWR_VERBS[gitzfordirmain]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[goclean] value non-empty' {
    [[ -n "${ZPWR_VERBS[goclean]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[google] value non-empty' {
    [[ -n "${ZPWR_VERBS[google]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[grep] value non-empty' {
    [[ -n "${ZPWR_VERBS[grep]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[hc] value non-empty' {
    [[ -n "${ZPWR_VERBS[hc]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[hd] value non-empty' {
    [[ -n "${ZPWR_VERBS[hd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[help] value non-empty' {
    [[ -n "${ZPWR_VERBS[help]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[hidden] value non-empty' {
    [[ -n "${ZPWR_VERBS[hidden]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[hist] value non-empty' {
    [[ -n "${ZPWR_VERBS[hist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[histedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[histedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[histfile] value non-empty' {
    [[ -n "${ZPWR_VERBS[histfile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[home] value non-empty' {
    [[ -n "${ZPWR_VERBS[home]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homeautoload] value non-empty' {
    [[ -n "${ZPWR_VERBS[homeautoload]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homeautoloadcommon] value non-empty' {
    [[ -n "${ZPWR_VERBS[homeautoloadcommon]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homecomps] value non-empty' {
    [[ -n "${ZPWR_VERBS[homecomps]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homeenv] value non-empty' {
    [[ -n "${ZPWR_VERBS[homeenv]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homeexercism] value non-empty' {
    [[ -n "${ZPWR_VERBS[homeexercism]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homeinstall] value non-empty' {
    [[ -n "${ZPWR_VERBS[homeinstall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homelocal] value non-empty' {
    [[ -n "${ZPWR_VERBS[homelocal]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[homescripts] value non-empty' {
    [[ -n "${ZPWR_VERBS[homescripts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[hometest] value non-empty' {
    [[ -n "${ZPWR_VERBS[hometest]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[hometests] value non-empty' {
    [[ -n "${ZPWR_VERBS[hometests]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[hometmux] value non-empty' {
    [[ -n "${ZPWR_VERBS[hometmux]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[info] value non-empty' {
    [[ -n "${ZPWR_VERBS[info]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[install] value non-empty' {
    [[ -n "${ZPWR_VERBS[install]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[kill] value non-empty' {
    [[ -n "${ZPWR_VERBS[kill]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[killedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[killedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[killmux] value non-empty' {
    [[ -n "${ZPWR_VERBS[killmux]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[killremote] value non-empty' {
    [[ -n "${ZPWR_VERBS[killremote]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[linecount] value non-empty' {
    [[ -n "${ZPWR_VERBS[linecount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[list] value non-empty' {
    [[ -n "${ZPWR_VERBS[list]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[loadjenv] value non-empty' {
    [[ -n "${ZPWR_VERBS[loadjenv]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[locatesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[locatesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[locatesearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[locatesearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[logdebug] value non-empty' {
    [[ -n "${ZPWR_VERBS[logdebug]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[logdebugconsole] value non-empty' {
    [[ -n "${ZPWR_VERBS[logdebugconsole]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[logerror] value non-empty' {
    [[ -n "${ZPWR_VERBS[logerror]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[logerrorconsole] value non-empty' {
    [[ -n "${ZPWR_VERBS[logerrorconsole]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[logincount] value non-empty' {
    [[ -n "${ZPWR_VERBS[logincount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[loginfo] value non-empty' {
    [[ -n "${ZPWR_VERBS[loginfo]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[loginfoconsole] value non-empty' {
    [[ -n "${ZPWR_VERBS[loginfoconsole]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[logtrace] value non-empty' {
    [[ -n "${ZPWR_VERBS[logtrace]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[logtraceconsole] value non-empty' {
    [[ -n "${ZPWR_VERBS[logtraceconsole]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[ls] value non-empty' {
    [[ -n "${ZPWR_VERBS[ls]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[lsof] value non-empty' {
    [[ -n "${ZPWR_VERBS[lsof]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[lsofedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[lsofedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[makedir] value non-empty' {
    [[ -n "${ZPWR_VERBS[makedir]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[makefile] value non-empty' {
    [[ -n "${ZPWR_VERBS[makefile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[man] value non-empty' {
    [[ -n "${ZPWR_VERBS[man]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[modules] value non-empty' {
    [[ -n "${ZPWR_VERBS[modules]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[mygithub] value non-empty' {
    [[ -n "${ZPWR_VERBS[mygithub]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[open] value non-empty' {
    [[ -n "${ZPWR_VERBS[open]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[opencommand] value non-empty' {
    [[ -n "${ZPWR_VERBS[opencommand]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[openurl] value non-empty' {
    [[ -n "${ZPWR_VERBS[openurl]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[options] value non-empty' {
    [[ -n "${ZPWR_VERBS[options]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pastebuffer] value non-empty' {
    [[ -n "${ZPWR_VERBS[pastebuffer]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pastecommand] value non-empty' {
    [[ -n "${ZPWR_VERBS[pastecommand]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pastestring] value non-empty' {
    [[ -n "${ZPWR_VERBS[pastestring]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pi] value non-empty' {
    if ! (( ${+ZPWR_VERBS[pi]} )); then skip "pi command not available"; fi
    [[ -n "${ZPWR_VERBS[pi]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[ping] value non-empty' {
    if ! (( ${+ZPWR_VERBS[ping]} )); then skip "pi command not available"; fi
    [[ -n "${ZPWR_VERBS[ping]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pir] value non-empty' {
    [[ -n "${ZPWR_VERBS[pir]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[plugins] value non-empty' {
    [[ -n "${ZPWR_VERBS[plugins]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[poll] value non-empty' {
    [[ -n "${ZPWR_VERBS[poll]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[post] value non-empty' {
    [[ -n "${ZPWR_VERBS[post]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pre] value non-empty' {
    [[ -n "${ZPWR_VERBS[pre]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[prettyprint] value non-empty' {
    [[ -n "${ZPWR_VERBS[prettyprint]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[printmap] value non-empty' {
    [[ -n "${ZPWR_VERBS[printmap]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[ps] value non-empty' {
    [[ -n "${ZPWR_VERBS[ps]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pstreemonitor] value non-empty' {
    [[ -n "${ZPWR_VERBS[pstreemonitor]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[pygmentcolors] value non-empty' {
    [[ -n "${ZPWR_VERBS[pygmentcolors]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[r] value non-empty' {
    [[ -n "${ZPWR_VERBS[r]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[recompile] value non-empty' {
    [[ -n "${ZPWR_VERBS[recompile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[recompilefiles] value non-empty' {
    [[ -n "${ZPWR_VERBS[recompilefiles]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[recompilefpath] value non-empty' {
    [[ -n "${ZPWR_VERBS[recompilefpath]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[refreshzwc] value non-empty' {
    [[ -n "${ZPWR_VERBS[refreshzwc]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regen] value non-empty' {
    [[ -n "${ZPWR_VERBS[regen]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenall] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenconfiglinks] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenconfiglinks]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenctags] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenctags]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenenvcache] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenenvcache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regengitdirtyrepocache] value non-empty' {
    [[ -n "${ZPWR_VERBS[regengitdirtyrepocache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regengitrepocache] value non-empty' {
    [[ -n "${ZPWR_VERBS[regengitrepocache]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regengtags] value non-empty' {
    [[ -n "${ZPWR_VERBS[regengtags]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regengtagspygments] value non-empty' {
    [[ -n "${ZPWR_VERBS[regengtagspygments]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regengtagstype] value non-empty' {
    [[ -n "${ZPWR_VERBS[regengtagstype]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenhistory] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenhistory]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenkeybindings] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenkeybindings]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenpowerline] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenpowerline]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[regenzsh] value non-empty' {
    [[ -n "${ZPWR_VERBS[regenzsh]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[reload] value non-empty' {
    [[ -n "${ZPWR_VERBS[reload]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[relpath] value non-empty' {
    [[ -n "${ZPWR_VERBS[relpath]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[rename] value non-empty' {
    [[ -n "${ZPWR_VERBS[rename]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[replacer] value non-empty' {
    [[ -n "${ZPWR_VERBS[replacer]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[repo] value non-empty' {
    [[ -n "${ZPWR_VERBS[repo]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[reset] value non-empty' {
    [[ -n "${ZPWR_VERBS[reset]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[restart] value non-empty' {
    if ! (( ${+ZPWR_VERBS[restart]} )); then skip "systemctl not available"; fi
    [[ -n "${ZPWR_VERBS[restart]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[restorehistory] value non-empty' {
    [[ -n "${ZPWR_VERBS[restorehistory]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[return2] value non-empty' {
    [[ -n "${ZPWR_VERBS[return2]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[reveal] value non-empty' {
    [[ -n "${ZPWR_VERBS[reveal]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[revealrecurse] value non-empty' {
    [[ -n "${ZPWR_VERBS[revealrecurse]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[reverse] value non-empty' {
    [[ -n "${ZPWR_VERBS[reverse]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[rmconfiglinks] value non-empty' {
    [[ -n "${ZPWR_VERBS[rmconfiglinks]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[rvs] value non-empty' {
    [[ -n "${ZPWR_VERBS[rvs]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[scriptcount] value non-empty' {
    [[ -n "${ZPWR_VERBS[scriptcount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[scriptlist] value non-empty' {
    [[ -n "${ZPWR_VERBS[scriptlist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[scriptnew] value non-empty' {
    [[ -n "${ZPWR_VERBS[scriptnew]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[scripts] value non-empty' {
    [[ -n "${ZPWR_VERBS[scripts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[scripttopdf] value non-empty' {
    [[ -n "${ZPWR_VERBS[scripttopdf]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[search] value non-empty' {
    [[ -n "${ZPWR_VERBS[search]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[servicedown] value non-empty' {
    if ! (( ${+ZPWR_VERBS[servicedown]} )); then skip "systemctl not available"; fi
    [[ -n "${ZPWR_VERBS[servicedown]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[serviceup] value non-empty' {
    if ! (( ${+ZPWR_VERBS[serviceup]} )); then skip "systemctl not available"; fi
    [[ -n "${ZPWR_VERBS[serviceup]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[start] value non-empty' {
    if ! (( ${+ZPWR_VERBS[start]} )); then skip "ZPWR_PYSCRIPTS not available"; fi
    [[ -n "${ZPWR_VERBS[start]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[startauto] value non-empty' {
    [[ -n "${ZPWR_VERBS[startauto]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[startsend] value non-empty' {
    [[ -n "${ZPWR_VERBS[startsend]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[startsendfull] value non-empty' {
    [[ -n "${ZPWR_VERBS[startsendfull]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[starttabs] value non-empty' {
    if ! (( ${+ZPWR_VERBS[starttabs]} )); then skip "ZPWR_PYSCRIPTS not available"; fi
    [[ -n "${ZPWR_VERBS[starttabs]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[stopauto] value non-empty' {
    [[ -n "${ZPWR_VERBS[stopauto]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[stopsend] value non-empty' {
    [[ -n "${ZPWR_VERBS[stopsend]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[subcommands] value non-empty' {
    [[ -n "${ZPWR_VERBS[subcommands]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[subcommandscount] value non-empty' {
    [[ -n "${ZPWR_VERBS[subcommandscount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[subcommandsedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[subcommandsedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[subcommandsfzf] value non-empty' {
    [[ -n "${ZPWR_VERBS[subcommandsfzf]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[subcommandslist] value non-empty' {
    [[ -n "${ZPWR_VERBS[subcommandslist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[taillog] value non-empty' {
    [[ -n "${ZPWR_VERBS[taillog]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[test] value non-empty' {
    [[ -n "${ZPWR_VERBS[test]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[testall] value non-empty' {
    [[ -n "${ZPWR_VERBS[testall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[tests] value non-empty' {
    [[ -n "${ZPWR_VERBS[tests]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[testsall] value non-empty' {
    [[ -n "${ZPWR_VERBS[testsall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[timer] value non-empty' {
    [[ -n "${ZPWR_VERBS[timer]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[to] value non-empty' {
    [[ -n "${ZPWR_VERBS[to]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[toggle] value non-empty' {
    [[ -n "${ZPWR_VERBS[toggle]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[tokens] value non-empty' {
    [[ -n "${ZPWR_VERBS[tokens]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[torip] value non-empty' {
    [[ -n "${ZPWR_VERBS[torip]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[toriprenew] value non-empty' {
    [[ -n "${ZPWR_VERBS[toriprenew]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[travis] value non-empty' {
    [[ -n "${ZPWR_VERBS[travis]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[travisbranch] value non-empty' {
    [[ -n "${ZPWR_VERBS[travisbranch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[travisbuild] value non-empty' {
    [[ -n "${ZPWR_VERBS[travisbuild]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[travispr] value non-empty' {
    [[ -n "${ZPWR_VERBS[travispr]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[trc] value non-empty' {
    [[ -n "${ZPWR_VERBS[trc]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[tty] value non-empty' {
    [[ -n "${ZPWR_VERBS[tty]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[uncompile] value non-empty' {
    [[ -n "${ZPWR_VERBS[uncompile]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[uninstall] value non-empty' {
    [[ -n "${ZPWR_VERBS[uninstall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[update] value non-empty' {
    [[ -n "${ZPWR_VERBS[update]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[updateall] value non-empty' {
    [[ -n "${ZPWR_VERBS[updateall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[updatedeps] value non-empty' {
    [[ -n "${ZPWR_VERBS[updatedeps]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[updatedepsclean] value non-empty' {
    [[ -n "${ZPWR_VERBS[updatedepsclean]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[updatepull] value non-empty' {
    [[ -n "${ZPWR_VERBS[updatepull]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[updatezinit] value non-empty' {
    [[ -n "${ZPWR_VERBS[updatezinit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[upload] value non-empty' {
    [[ -n "${ZPWR_VERBS[upload]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[urlsafe] value non-empty' {
    [[ -n "${ZPWR_VERBS[urlsafe]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[verbs] value non-empty' {
    [[ -n "${ZPWR_VERBS[verbs]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[verbscount] value non-empty' {
    [[ -n "${ZPWR_VERBS[verbscount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[verbsedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[verbsedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[verbsfzf] value non-empty' {
    [[ -n "${ZPWR_VERBS[verbsfzf]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[verbslist] value non-empty' {
    [[ -n "${ZPWR_VERBS[verbslist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimall] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimall]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimalledit] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimalledit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimautoload] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimautoload]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimcd] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimcd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimconfig] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimconfig]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimctags] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimctags]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimemacsconfig] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimemacsconfig]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimfilesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimfilesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimfilesearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimfilesearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimfindsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimfindsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimfindsearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimfindsearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimgtags] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimgtags]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimgtagsedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimgtagsedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimlocatesearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimlocatesearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimlocatesearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimlocatesearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimplugincount] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimplugincount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimpluginlist] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimpluginlist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimrecent] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimrecent]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimrecentcd] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimrecentcd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimrecentsudo] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimrecentsudo]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimrecentsudocd] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimrecentsudocd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimscriptedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimscriptedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimscripts] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimscripts]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimtests] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimtests]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimtokens] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimtokens]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimwordsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimwordsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vimwordsearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[vimwordsearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[vrc] value non-empty' {
    [[ -n "${ZPWR_VERBS[vrc]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[web] value non-empty' {
    [[ -n "${ZPWR_VERBS[web]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[whilesleep] value non-empty' {
    [[ -n "${ZPWR_VERBS[whilesleep]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[whiletrue] value non-empty' {
    [[ -n "${ZPWR_VERBS[whiletrue]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[wordsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[wordsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[wordsearchedit] value non-empty' {
    [[ -n "${ZPWR_VERBS[wordsearchedit]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[z] value non-empty' {
    [[ -n "${ZPWR_VERBS[z]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zcd] value non-empty' {
    [[ -n "${ZPWR_VERBS[zcd]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zcompdump] value non-empty' {
    [[ -n "${ZPWR_VERBS[zcompdump]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zp] value non-empty' {
    [[ -n "${ZPWR_VERBS[zp]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zpwr] value non-empty' {
    [[ -n "${ZPWR_VERBS[zpwr]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zpwrCloneToForked] value non-empty' {
    [[ -n "${ZPWR_VERBS[zpwrCloneToForked]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zpwrgithub] value non-empty' {
    [[ -n "${ZPWR_VERBS[zpwrgithub]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zpz] value non-empty' {
    [[ -n "${ZPWR_VERBS[zpz]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zrc] value non-empty' {
    [[ -n "${ZPWR_VERBS[zrc]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zshplugincount] value non-empty' {
    [[ -n "${ZPWR_VERBS[zshplugincount]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zshpluginlist] value non-empty' {
    [[ -n "${ZPWR_VERBS[zshpluginlist]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zshsearch] value non-empty' {
    [[ -n "${ZPWR_VERBS[zshsearch]}" ]]
    assert $? equals 0
}

@test 'ZPWR_VERBS[zstyle] value non-empty' {
    [[ -n "${ZPWR_VERBS[zstyle]}" ]]
    assert $? equals 0
}

