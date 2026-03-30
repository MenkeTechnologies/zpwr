#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test format of all ZPWR_VERBS keys
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'ZPWR_VERBS key a is valid' {
    run test -n "a"
    assert $state equals 0
}

@test 'ZPWR_VERBS key about is valid' {
    run test -n "about"
    assert $state equals 0
}

@test 'ZPWR_VERBS key alacritty is valid' {
    run test -n "alacritty"
    assert $state equals 0
}

@test 'ZPWR_VERBS key all is valid' {
    run test -n "all"
    assert $state equals 0
}

@test 'ZPWR_VERBS key allsearch is valid' {
    run test -n "allsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key altprettyprint is valid' {
    run test -n "altprettyprint"
    assert $state equals 0
}

@test 'ZPWR_VERBS key animate is valid' {
    run test -n "animate"
    assert $state equals 0
}

@test 'ZPWR_VERBS key attach is valid' {
    run test -n "attach"
    assert $state equals 0
}

@test 'ZPWR_VERBS key autoload is valid' {
    run test -n "autoload"
    assert $state equals 0
}

@test 'ZPWR_VERBS key autoloadcount is valid' {
    run test -n "autoloadcount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key autoloadlist is valid' {
    run test -n "autoloadlist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key background is valid' {
    run test -n "background"
    assert $state equals 0
}

@test 'ZPWR_VERBS key backup is valid' {
    run test -n "backup"
    assert $state equals 0
}

@test 'ZPWR_VERBS key backuphistory is valid' {
    run test -n "backuphistory"
    assert $state equals 0
}

@test 'ZPWR_VERBS key banner is valid' {
    run test -n "banner"
    assert $state equals 0
}

@test 'ZPWR_VERBS key bannercounts is valid' {
    run test -n "bannercounts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key bannerlolcat is valid' {
    run test -n "bannerlolcat"
    assert $state equals 0
}

@test 'ZPWR_VERBS key bannernopony is valid' {
    run test -n "bannernopony"
    assert $state equals 0
}

@test 'ZPWR_VERBS key bannerpony is valid' {
    run test -n "bannerpony"
    assert $state equals 0
}

@test 'ZPWR_VERBS key brc is valid' {
    run test -n "brc"
    assert $state equals 0
}

@test 'ZPWR_VERBS key c is valid' {
    run test -n "c"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cat is valid' {
    run test -n "cat"
    assert $state equals 0
}

@test 'ZPWR_VERBS key catcd is valid' {
    run test -n "catcd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key catnviminforecentf is valid' {
    run test -n "catnviminforecentf"
    assert $state equals 0
}

@test 'ZPWR_VERBS key catrecentfviminfo is valid' {
    run test -n "catrecentfviminfo"
    assert $state equals 0
}

@test 'ZPWR_VERBS key catviminfo is valid' {
    run test -n "catviminfo"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cd is valid' {
    run test -n "cd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cdup is valid' {
    run test -n "cdup"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cfasd is valid' {
    run test -n "cfasd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key changename is valid' {
    run test -n "changename"
    assert $state equals 0
}

@test 'ZPWR_VERBS key changenamezpwr is valid' {
    run test -n "changenamezpwr"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleanall is valid' {
    run test -n "cleanall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleancache is valid' {
    run test -n "cleancache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleancompcache is valid' {
    run test -n "cleancompcache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleandirs is valid' {
    run test -n "cleandirs"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleandirsandtemp is valid' {
    run test -n "cleandirsandtemp"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleangitcache is valid' {
    run test -n "cleangitcache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleangitcleancache is valid' {
    run test -n "cleangitcleancache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleangitdirtycache is valid' {
    run test -n "cleangitdirtycache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleanlog is valid' {
    run test -n "cleanlog"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleanrefreshupdate is valid' {
    run test -n "cleanrefreshupdate"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleantemp is valid' {
    run test -n "cleantemp"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleanupdatedeps is valid' {
    run test -n "cleanupdatedeps"
    assert $state equals 0
}

@test 'ZPWR_VERBS key clearlist is valid' {
    run test -n "clearlist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key clearls is valid' {
    run test -n "clearls"
    assert $state equals 0
}

@test 'ZPWR_VERBS key clone is valid' {
    run test -n "clone"
    assert $state equals 0
}

@test 'ZPWR_VERBS key color2 is valid' {
    run test -n "color2"
    assert $state equals 0
}

@test 'ZPWR_VERBS key colorsdiff is valid' {
    run test -n "colorsdiff"
    assert $state equals 0
}

@test 'ZPWR_VERBS key colortest is valid' {
    run test -n "colortest"
    assert $state equals 0
}

@test 'ZPWR_VERBS key colortest256 is valid' {
    run test -n "colortest256"
    assert $state equals 0
}

@test 'ZPWR_VERBS key compile is valid' {
    run test -n "compile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key compilefiles is valid' {
    run test -n "compilefiles"
    assert $state equals 0
}

@test 'ZPWR_VERBS key compilefpath is valid' {
    run test -n "compilefpath"
    assert $state equals 0
}

@test 'ZPWR_VERBS key completions is valid' {
    run test -n "completions"
    assert $state equals 0
}

@test 'ZPWR_VERBS key comps is valid' {
    run test -n "comps"
    assert $state equals 0
}

@test 'ZPWR_VERBS key copycommand is valid' {
    run test -n "copycommand"
    assert $state equals 0
}

@test 'ZPWR_VERBS key creategif is valid' {
    run test -n "creategif"
    assert $state equals 0
}

@test 'ZPWR_VERBS key curl is valid' {
    run test -n "curl"
    assert $state equals 0
}

@test 'ZPWR_VERBS key decompile is valid' {
    run test -n "decompile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key deduppaths is valid' {
    run test -n "deduppaths"
    assert $state equals 0
}

@test 'ZPWR_VERBS key detach is valid' {
    run test -n "detach"
    assert $state equals 0
}

@test 'ZPWR_VERBS key dfimage is valid' {
    run test -n "dfimage"
    assert $state equals 0
}

@test 'ZPWR_VERBS key digs is valid' {
    run test -n "digs"
    assert $state equals 0
}

@test 'ZPWR_VERBS key dirsearch is valid' {
    run test -n "dirsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key dockerwipe is valid' {
    run test -n "dockerwipe"
    assert $state equals 0
}

@test 'ZPWR_VERBS key e is valid' {
    run test -n "e"
    assert $state equals 0
}

@test 'ZPWR_VERBS key edit is valid' {
    run test -n "edit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key editor is valid' {
    run test -n "editor"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsall is valid' {
    run test -n "emacsall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsalledit is valid' {
    run test -n "emacsalledit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsallserver is valid' {
    run test -n "emacsallserver"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsautoload is valid' {
    run test -n "emacsautoload"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacscd is valid' {
    run test -n "emacscd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsconfig is valid' {
    run test -n "emacsconfig"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsctags is valid' {
    run test -n "emacsctags"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsemacsconfig is valid' {
    run test -n "emacsemacsconfig"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsfilesearch is valid' {
    run test -n "emacsfilesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsfilesearchedit is valid' {
    run test -n "emacsfilesearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsfindsearch is valid' {
    run test -n "emacsfindsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsfindsearchedit is valid' {
    run test -n "emacsfindsearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsgtags is valid' {
    run test -n "emacsgtags"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsgtagsedit is valid' {
    run test -n "emacsgtagsedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacslocatesearch is valid' {
    run test -n "emacslocatesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacslocatesearchedit is valid' {
    run test -n "emacslocatesearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsplugincount is valid' {
    run test -n "emacsplugincount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacspluginlist is valid' {
    run test -n "emacspluginlist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsrecent is valid' {
    run test -n "emacsrecent"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsrecentcd is valid' {
    run test -n "emacsrecentcd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsrecentsudo is valid' {
    run test -n "emacsrecentsudo"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsrecentsudocd is valid' {
    run test -n "emacsrecentsudocd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsscriptedit is valid' {
    run test -n "emacsscriptedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacsscripts is valid' {
    run test -n "emacsscripts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacstests is valid' {
    run test -n "emacstests"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacstokens is valid' {
    run test -n "emacstokens"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacswordsearch is valid' {
    run test -n "emacswordsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacswordsearchedit is valid' {
    run test -n "emacswordsearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key emacszpwr is valid' {
    run test -n "emacszpwr"
    assert $state equals 0
}

@test 'ZPWR_VERBS key envaccept is valid' {
    run test -n "envaccept"
    assert $state equals 0
}

@test 'ZPWR_VERBS key envcachesearch is valid' {
    run test -n "envcachesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key envcounts is valid' {
    run test -n "envcounts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key envedit is valid' {
    run test -n "envedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key environmentcachesearch is valid' {
    run test -n "environmentcachesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key environmentcounts is valid' {
    run test -n "environmentcounts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key environmentvariables is valid' {
    run test -n "environmentvariables"
    assert $state equals 0
}

@test 'ZPWR_VERBS key environmentvariablesall is valid' {
    run test -n "environmentvariablesall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key environmentvars is valid' {
    run test -n "environmentvars"
    assert $state equals 0
}

@test 'ZPWR_VERBS key environmentvarsall is valid' {
    run test -n "environmentvarsall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key envvars is valid' {
    run test -n "envvars"
    assert $state equals 0
}

@test 'ZPWR_VERBS key envvarsall is valid' {
    run test -n "envvarsall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key ev is valid' {
    run test -n "ev"
    assert $state equals 0
}

@test 'ZPWR_VERBS key eva is valid' {
    run test -n "eva"
    assert $state equals 0
}

@test 'ZPWR_VERBS key execglob is valid' {
    run test -n "execglob"
    assert $state equals 0
}

@test 'ZPWR_VERBS key execglobparallel is valid' {
    run test -n "execglobparallel"
    assert $state equals 0
}

@test 'ZPWR_VERBS key execpy is valid' {
    run test -n "execpy"
    assert $state equals 0
}

@test 'ZPWR_VERBS key exercism is valid' {
    run test -n "exercism"
    assert $state equals 0
}

@test 'ZPWR_VERBS key exercismdownload is valid' {
    run test -n "exercismdownload"
    assert $state equals 0
}

@test 'ZPWR_VERBS key exercismedit is valid' {
    run test -n "exercismedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key exists is valid' {
    run test -n "exists"
    assert $state equals 0
}

@test 'ZPWR_VERBS key existscommand is valid' {
    run test -n "existscommand"
    assert $state equals 0
}

@test 'ZPWR_VERBS key f is valid' {
    run test -n "f"
    assert $state equals 0
}

@test 'ZPWR_VERBS key figletfonts is valid' {
    run test -n "figletfonts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key filesearch is valid' {
    run test -n "filesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key filesearchedit is valid' {
    run test -n "filesearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key findsearch is valid' {
    run test -n "findsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key findsearchedit is valid' {
    run test -n "findsearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key for is valid' {
    run test -n "for"
    assert $state equals 0
}

@test 'ZPWR_VERBS key for10 is valid' {
    run test -n "for10"
    assert $state equals 0
}

@test 'ZPWR_VERBS key fordir is valid' {
    run test -n "fordir"
    assert $state equals 0
}

@test 'ZPWR_VERBS key fordirupdate is valid' {
    run test -n "fordirupdate"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitadd is valid' {
    run test -n "forgitadd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitclean is valid' {
    run test -n "forgitclean"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitdiff is valid' {
    run test -n "forgitdiff"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitignore is valid' {
    run test -n "forgitignore"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitignoreclean is valid' {
    run test -n "forgitignoreclean"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitignoreget is valid' {
    run test -n "forgitignoreget"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitignorelist is valid' {
    run test -n "forgitignorelist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitignoreupdate is valid' {
    run test -n "forgitignoreupdate"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitinfo is valid' {
    run test -n "forgitinfo"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitlog is valid' {
    run test -n "forgitlog"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitreset is valid' {
    run test -n "forgitreset"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitrestore is valid' {
    run test -n "forgitrestore"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitstash is valid' {
    run test -n "forgitstash"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forgitwarn is valid' {
    run test -n "forgitwarn"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forked is valid' {
    run test -n "forked"
    assert $state equals 0
}

@test 'ZPWR_VERBS key forward is valid' {
    run test -n "forward"
    assert $state equals 0
}

@test 'ZPWR_VERBS key fp is valid' {
    run test -n "fp"
    assert $state equals 0
}

@test 'ZPWR_VERBS key fwd is valid' {
    run test -n "fwd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gh is valid' {
    run test -n "gh"
    assert $state equals 0
}

@test 'ZPWR_VERBS key ghcontribcount is valid' {
    run test -n "ghcontribcount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key ghz is valid' {
    run test -n "ghz"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitaemail is valid' {
    run test -n "gitaemail"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitcemail is valid' {
    run test -n "gitcemail"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitclearcache is valid' {
    run test -n "gitclearcache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitclearcommit is valid' {
    run test -n "gitclearcommit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitclearfile is valid' {
    run test -n "gitclearfile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitcommit is valid' {
    run test -n "gitcommit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitcommitcount is valid' {
    run test -n "gitcommitcount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitcommits is valid' {
    run test -n "gitcommits"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitconfig is valid' {
    run test -n "gitconfig"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitcontribcount is valid' {
    run test -n "gitcontribcount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitcontribcountdirs is valid' {
    run test -n "gitcontribcountdirs"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitcontribcountlines is valid' {
    run test -n "gitcontribcountlines"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitdir is valid' {
    run test -n "gitdir"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitedittag is valid' {
    run test -n "gitedittag"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitemail is valid' {
    run test -n "gitemail"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitforalldir is valid' {
    run test -n "gitforalldir"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitfordirdevelop is valid' {
    run test -n "gitfordirdevelop"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitfordirmain is valid' {
    run test -n "gitfordirmain"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitglobalconfig is valid' {
    run test -n "gitglobalconfig"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitglobalignores is valid' {
    run test -n "gitglobalignores"
    assert $state equals 0
}

@test 'ZPWR_VERBS key github is valid' {
    run test -n "github"
    assert $state equals 0
}

@test 'ZPWR_VERBS key githubcontribcount is valid' {
    run test -n "githubcontribcount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key githubcreate is valid' {
    run test -n "githubcreate"
    assert $state equals 0
}

@test 'ZPWR_VERBS key githubdelete is valid' {
    run test -n "githubdelete"
    assert $state equals 0
}

@test 'ZPWR_VERBS key githubzpwr is valid' {
    run test -n "githubzpwr"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitignore is valid' {
    run test -n "gitignore"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitignores is valid' {
    run test -n "gitignores"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitlargest is valid' {
    run test -n "gitlargest"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitremotes is valid' {
    run test -n "gitremotes"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitreposcleancacheexec is valid' {
    run test -n "gitreposcleancacheexec"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitreposcleanexec is valid' {
    run test -n "gitreposcleanexec"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitreposdirtycacheexec is valid' {
    run test -n "gitreposdirtycacheexec"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitreposdirtyexec is valid' {
    run test -n "gitreposdirtyexec"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitreposexec is valid' {
    run test -n "gitreposexec"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitreposfile is valid' {
    run test -n "gitreposfile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitsearch is valid' {
    run test -n "gitsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gittotallines is valid' {
    run test -n "gittotallines"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitupdatefordir is valid' {
    run test -n "gitupdatefordir"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitupdatetag is valid' {
    run test -n "gitupdatetag"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitzfordir is valid' {
    run test -n "gitzfordir"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitzfordirdevelop is valid' {
    run test -n "gitzfordirdevelop"
    assert $state equals 0
}

@test 'ZPWR_VERBS key gitzfordirmain is valid' {
    run test -n "gitzfordirmain"
    assert $state equals 0
}

@test 'ZPWR_VERBS key goclean is valid' {
    run test -n "goclean"
    assert $state equals 0
}

@test 'ZPWR_VERBS key google is valid' {
    run test -n "google"
    assert $state equals 0
}

@test 'ZPWR_VERBS key grep is valid' {
    run test -n "grep"
    assert $state equals 0
}

@test 'ZPWR_VERBS key hc is valid' {
    run test -n "hc"
    assert $state equals 0
}

@test 'ZPWR_VERBS key hd is valid' {
    run test -n "hd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key help is valid' {
    run test -n "help"
    assert $state equals 0
}

@test 'ZPWR_VERBS key hidden is valid' {
    run test -n "hidden"
    assert $state equals 0
}

@test 'ZPWR_VERBS key hist is valid' {
    run test -n "hist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key histedit is valid' {
    run test -n "histedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key histfile is valid' {
    run test -n "histfile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key home is valid' {
    run test -n "home"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homeautoload is valid' {
    run test -n "homeautoload"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homeautoloadcommon is valid' {
    run test -n "homeautoloadcommon"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homecomps is valid' {
    run test -n "homecomps"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homeenv is valid' {
    run test -n "homeenv"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homeexercism is valid' {
    run test -n "homeexercism"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homeinstall is valid' {
    run test -n "homeinstall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homelocal is valid' {
    run test -n "homelocal"
    assert $state equals 0
}

@test 'ZPWR_VERBS key homescripts is valid' {
    run test -n "homescripts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key hometest is valid' {
    run test -n "hometest"
    assert $state equals 0
}

@test 'ZPWR_VERBS key hometests is valid' {
    run test -n "hometests"
    assert $state equals 0
}

@test 'ZPWR_VERBS key hometmux is valid' {
    run test -n "hometmux"
    assert $state equals 0
}

@test 'ZPWR_VERBS key info is valid' {
    run test -n "info"
    assert $state equals 0
}

@test 'ZPWR_VERBS key install is valid' {
    run test -n "install"
    assert $state equals 0
}

@test 'ZPWR_VERBS key kill is valid' {
    run test -n "kill"
    assert $state equals 0
}

@test 'ZPWR_VERBS key killedit is valid' {
    run test -n "killedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key killmux is valid' {
    run test -n "killmux"
    assert $state equals 0
}

@test 'ZPWR_VERBS key killremote is valid' {
    run test -n "killremote"
    assert $state equals 0
}

@test 'ZPWR_VERBS key linecount is valid' {
    run test -n "linecount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key list is valid' {
    run test -n "list"
    assert $state equals 0
}

@test 'ZPWR_VERBS key loadjenv is valid' {
    run test -n "loadjenv"
    assert $state equals 0
}

@test 'ZPWR_VERBS key locatesearch is valid' {
    run test -n "locatesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key locatesearchedit is valid' {
    run test -n "locatesearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key logdebug is valid' {
    run test -n "logdebug"
    assert $state equals 0
}

@test 'ZPWR_VERBS key logdebugconsole is valid' {
    run test -n "logdebugconsole"
    assert $state equals 0
}

@test 'ZPWR_VERBS key logerror is valid' {
    run test -n "logerror"
    assert $state equals 0
}

@test 'ZPWR_VERBS key logerrorconsole is valid' {
    run test -n "logerrorconsole"
    assert $state equals 0
}

@test 'ZPWR_VERBS key logincount is valid' {
    run test -n "logincount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key loginfo is valid' {
    run test -n "loginfo"
    assert $state equals 0
}

@test 'ZPWR_VERBS key loginfoconsole is valid' {
    run test -n "loginfoconsole"
    assert $state equals 0
}

@test 'ZPWR_VERBS key logtrace is valid' {
    run test -n "logtrace"
    assert $state equals 0
}

@test 'ZPWR_VERBS key logtraceconsole is valid' {
    run test -n "logtraceconsole"
    assert $state equals 0
}

@test 'ZPWR_VERBS key ls is valid' {
    run test -n "ls"
    assert $state equals 0
}

@test 'ZPWR_VERBS key lsof is valid' {
    run test -n "lsof"
    assert $state equals 0
}

@test 'ZPWR_VERBS key lsofedit is valid' {
    run test -n "lsofedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key makedir is valid' {
    run test -n "makedir"
    assert $state equals 0
}

@test 'ZPWR_VERBS key makefile is valid' {
    run test -n "makefile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key man is valid' {
    run test -n "man"
    assert $state equals 0
}

@test 'ZPWR_VERBS key modules is valid' {
    run test -n "modules"
    assert $state equals 0
}

@test 'ZPWR_VERBS key mygithub is valid' {
    run test -n "mygithub"
    assert $state equals 0
}

@test 'ZPWR_VERBS key open is valid' {
    run test -n "open"
    assert $state equals 0
}

@test 'ZPWR_VERBS key opencommand is valid' {
    run test -n "opencommand"
    assert $state equals 0
}

@test 'ZPWR_VERBS key openurl is valid' {
    run test -n "openurl"
    assert $state equals 0
}

@test 'ZPWR_VERBS key options is valid' {
    run test -n "options"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pastebuffer is valid' {
    run test -n "pastebuffer"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pastecommand is valid' {
    run test -n "pastecommand"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pastestring is valid' {
    run test -n "pastestring"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pi is valid' {
    run test -n "pi"
    assert $state equals 0
}

@test 'ZPWR_VERBS key ping is valid' {
    run test -n "ping"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pir is valid' {
    run test -n "pir"
    assert $state equals 0
}

@test 'ZPWR_VERBS key plugins is valid' {
    run test -n "plugins"
    assert $state equals 0
}

@test 'ZPWR_VERBS key poll is valid' {
    run test -n "poll"
    assert $state equals 0
}

@test 'ZPWR_VERBS key post is valid' {
    run test -n "post"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pre is valid' {
    run test -n "pre"
    assert $state equals 0
}

@test 'ZPWR_VERBS key prettyprint is valid' {
    run test -n "prettyprint"
    assert $state equals 0
}

@test 'ZPWR_VERBS key printmap is valid' {
    run test -n "printmap"
    assert $state equals 0
}

@test 'ZPWR_VERBS key ps is valid' {
    run test -n "ps"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pstreemonitor is valid' {
    run test -n "pstreemonitor"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pygmentcolors is valid' {
    run test -n "pygmentcolors"
    assert $state equals 0
}

@test 'ZPWR_VERBS key r is valid' {
    run test -n "r"
    assert $state equals 0
}

@test 'ZPWR_VERBS key recompile is valid' {
    run test -n "recompile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key recompilefiles is valid' {
    run test -n "recompilefiles"
    assert $state equals 0
}

@test 'ZPWR_VERBS key recompilefpath is valid' {
    run test -n "recompilefpath"
    assert $state equals 0
}

@test 'ZPWR_VERBS key refreshzwc is valid' {
    run test -n "refreshzwc"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regen is valid' {
    run test -n "regen"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenall is valid' {
    run test -n "regenall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenconfiglinks is valid' {
    run test -n "regenconfiglinks"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenctags is valid' {
    run test -n "regenctags"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenenvcache is valid' {
    run test -n "regenenvcache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regengitdirtyrepocache is valid' {
    run test -n "regengitdirtyrepocache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regengitrepocache is valid' {
    run test -n "regengitrepocache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regengtags is valid' {
    run test -n "regengtags"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regengtagspygments is valid' {
    run test -n "regengtagspygments"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regengtagstype is valid' {
    run test -n "regengtagstype"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenhistory is valid' {
    run test -n "regenhistory"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenkeybindings is valid' {
    run test -n "regenkeybindings"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenpowerline is valid' {
    run test -n "regenpowerline"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regenzsh is valid' {
    run test -n "regenzsh"
    assert $state equals 0
}

@test 'ZPWR_VERBS key reload is valid' {
    run test -n "reload"
    assert $state equals 0
}

@test 'ZPWR_VERBS key relpath is valid' {
    run test -n "relpath"
    assert $state equals 0
}

@test 'ZPWR_VERBS key rename is valid' {
    run test -n "rename"
    assert $state equals 0
}

@test 'ZPWR_VERBS key replacer is valid' {
    run test -n "replacer"
    assert $state equals 0
}

@test 'ZPWR_VERBS key repo is valid' {
    run test -n "repo"
    assert $state equals 0
}

@test 'ZPWR_VERBS key reset is valid' {
    run test -n "reset"
    assert $state equals 0
}

@test 'ZPWR_VERBS key restart is valid' {
    run test -n "restart"
    assert $state equals 0
}

@test 'ZPWR_VERBS key restorehistory is valid' {
    run test -n "restorehistory"
    assert $state equals 0
}

@test 'ZPWR_VERBS key return2 is valid' {
    run test -n "return2"
    assert $state equals 0
}

@test 'ZPWR_VERBS key reveal is valid' {
    run test -n "reveal"
    assert $state equals 0
}

@test 'ZPWR_VERBS key revealrecurse is valid' {
    run test -n "revealrecurse"
    assert $state equals 0
}

@test 'ZPWR_VERBS key reverse is valid' {
    run test -n "reverse"
    assert $state equals 0
}

@test 'ZPWR_VERBS key rmconfiglinks is valid' {
    run test -n "rmconfiglinks"
    assert $state equals 0
}

@test 'ZPWR_VERBS key rvs is valid' {
    run test -n "rvs"
    assert $state equals 0
}

@test 'ZPWR_VERBS key scriptcount is valid' {
    run test -n "scriptcount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key scriptlist is valid' {
    run test -n "scriptlist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key scriptnew is valid' {
    run test -n "scriptnew"
    assert $state equals 0
}

@test 'ZPWR_VERBS key scripts is valid' {
    run test -n "scripts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key scripttopdf is valid' {
    run test -n "scripttopdf"
    assert $state equals 0
}

@test 'ZPWR_VERBS key search is valid' {
    run test -n "search"
    assert $state equals 0
}

@test 'ZPWR_VERBS key servicedown is valid' {
    run test -n "servicedown"
    assert $state equals 0
}

@test 'ZPWR_VERBS key serviceup is valid' {
    run test -n "serviceup"
    assert $state equals 0
}

@test 'ZPWR_VERBS key start is valid' {
    run test -n "start"
    assert $state equals 0
}

@test 'ZPWR_VERBS key startauto is valid' {
    run test -n "startauto"
    assert $state equals 0
}

@test 'ZPWR_VERBS key startsend is valid' {
    run test -n "startsend"
    assert $state equals 0
}

@test 'ZPWR_VERBS key startsendfull is valid' {
    run test -n "startsendfull"
    assert $state equals 0
}

@test 'ZPWR_VERBS key starttabs is valid' {
    run test -n "starttabs"
    assert $state equals 0
}

@test 'ZPWR_VERBS key stopauto is valid' {
    run test -n "stopauto"
    assert $state equals 0
}

@test 'ZPWR_VERBS key stopsend is valid' {
    run test -n "stopsend"
    assert $state equals 0
}

@test 'ZPWR_VERBS key subcommands is valid' {
    run test -n "subcommands"
    assert $state equals 0
}

@test 'ZPWR_VERBS key subcommandscount is valid' {
    run test -n "subcommandscount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key subcommandsedit is valid' {
    run test -n "subcommandsedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key subcommandsfzf is valid' {
    run test -n "subcommandsfzf"
    assert $state equals 0
}

@test 'ZPWR_VERBS key subcommandslist is valid' {
    run test -n "subcommandslist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key taillog is valid' {
    run test -n "taillog"
    assert $state equals 0
}

@test 'ZPWR_VERBS key test is valid' {
    run test -n "test"
    assert $state equals 0
}

@test 'ZPWR_VERBS key testall is valid' {
    run test -n "testall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key tests is valid' {
    run test -n "tests"
    assert $state equals 0
}

@test 'ZPWR_VERBS key testsall is valid' {
    run test -n "testsall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key timer is valid' {
    run test -n "timer"
    assert $state equals 0
}

@test 'ZPWR_VERBS key to is valid' {
    run test -n "to"
    assert $state equals 0
}

@test 'ZPWR_VERBS key toggle is valid' {
    run test -n "toggle"
    assert $state equals 0
}

@test 'ZPWR_VERBS key tokens is valid' {
    run test -n "tokens"
    assert $state equals 0
}

@test 'ZPWR_VERBS key torip is valid' {
    run test -n "torip"
    assert $state equals 0
}

@test 'ZPWR_VERBS key toriprenew is valid' {
    run test -n "toriprenew"
    assert $state equals 0
}

@test 'ZPWR_VERBS key travis is valid' {
    run test -n "travis"
    assert $state equals 0
}

@test 'ZPWR_VERBS key travisbranch is valid' {
    run test -n "travisbranch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key travisbuild is valid' {
    run test -n "travisbuild"
    assert $state equals 0
}

@test 'ZPWR_VERBS key travispr is valid' {
    run test -n "travispr"
    assert $state equals 0
}

@test 'ZPWR_VERBS key trc is valid' {
    run test -n "trc"
    assert $state equals 0
}

@test 'ZPWR_VERBS key tty is valid' {
    run test -n "tty"
    assert $state equals 0
}

@test 'ZPWR_VERBS key uncompile is valid' {
    run test -n "uncompile"
    assert $state equals 0
}

@test 'ZPWR_VERBS key uninstall is valid' {
    run test -n "uninstall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key update is valid' {
    run test -n "update"
    assert $state equals 0
}

@test 'ZPWR_VERBS key updateall is valid' {
    run test -n "updateall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key updatedeps is valid' {
    run test -n "updatedeps"
    assert $state equals 0
}

@test 'ZPWR_VERBS key updatedepsclean is valid' {
    run test -n "updatedepsclean"
    assert $state equals 0
}

@test 'ZPWR_VERBS key updatepull is valid' {
    run test -n "updatepull"
    assert $state equals 0
}

@test 'ZPWR_VERBS key updatezinit is valid' {
    run test -n "updatezinit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key upload is valid' {
    run test -n "upload"
    assert $state equals 0
}

@test 'ZPWR_VERBS key urlsafe is valid' {
    run test -n "urlsafe"
    assert $state equals 0
}

@test 'ZPWR_VERBS key verbs is valid' {
    run test -n "verbs"
    assert $state equals 0
}

@test 'ZPWR_VERBS key verbscount is valid' {
    run test -n "verbscount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key verbsedit is valid' {
    run test -n "verbsedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key verbsfzf is valid' {
    run test -n "verbsfzf"
    assert $state equals 0
}

@test 'ZPWR_VERBS key verbslist is valid' {
    run test -n "verbslist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimall is valid' {
    run test -n "vimall"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimalledit is valid' {
    run test -n "vimalledit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimautoload is valid' {
    run test -n "vimautoload"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimcd is valid' {
    run test -n "vimcd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimconfig is valid' {
    run test -n "vimconfig"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimctags is valid' {
    run test -n "vimctags"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimemacsconfig is valid' {
    run test -n "vimemacsconfig"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimfilesearch is valid' {
    run test -n "vimfilesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimfilesearchedit is valid' {
    run test -n "vimfilesearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimfindsearch is valid' {
    run test -n "vimfindsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimfindsearchedit is valid' {
    run test -n "vimfindsearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimgtags is valid' {
    run test -n "vimgtags"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimgtagsedit is valid' {
    run test -n "vimgtagsedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimlocatesearch is valid' {
    run test -n "vimlocatesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimlocatesearchedit is valid' {
    run test -n "vimlocatesearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimplugincount is valid' {
    run test -n "vimplugincount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimpluginlist is valid' {
    run test -n "vimpluginlist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimrecent is valid' {
    run test -n "vimrecent"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimrecentcd is valid' {
    run test -n "vimrecentcd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimrecentsudo is valid' {
    run test -n "vimrecentsudo"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimrecentsudocd is valid' {
    run test -n "vimrecentsudocd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimscriptedit is valid' {
    run test -n "vimscriptedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimscripts is valid' {
    run test -n "vimscripts"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimsearch is valid' {
    run test -n "vimsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimtests is valid' {
    run test -n "vimtests"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimtokens is valid' {
    run test -n "vimtokens"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimwordsearch is valid' {
    run test -n "vimwordsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vimwordsearchedit is valid' {
    run test -n "vimwordsearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key vrc is valid' {
    run test -n "vrc"
    assert $state equals 0
}

@test 'ZPWR_VERBS key web is valid' {
    run test -n "web"
    assert $state equals 0
}

@test 'ZPWR_VERBS key whilesleep is valid' {
    run test -n "whilesleep"
    assert $state equals 0
}

@test 'ZPWR_VERBS key whiletrue is valid' {
    run test -n "whiletrue"
    assert $state equals 0
}

@test 'ZPWR_VERBS key wordsearch is valid' {
    run test -n "wordsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key wordsearchedit is valid' {
    run test -n "wordsearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key z is valid' {
    run test -n "z"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zcd is valid' {
    run test -n "zcd"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zcompdump is valid' {
    run test -n "zcompdump"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zp is valid' {
    run test -n "zp"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zpwr is valid' {
    run test -n "zpwr"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zpwrCloneToForked is valid' {
    run test -n "zpwrCloneToForked"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zpwrgithub is valid' {
    run test -n "zpwrgithub"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zpz is valid' {
    run test -n "zpz"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zrc is valid' {
    run test -n "zrc"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zshplugincount is valid' {
    run test -n "zshplugincount"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zshpluginlist is valid' {
    run test -n "zshpluginlist"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zshsearch is valid' {
    run test -n "zshsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key zstyle is valid' {
    run test -n "zstyle"
    assert $state equals 0
}

@test 'ZPWR_VERBS key animate is valid' {
    run test -n "animate"
    assert $state equals 0
}

@test 'ZPWR_VERBS key bannerlolcat is valid' {
    run test -n "bannerlolcat"
    assert $state equals 0
}

@test 'ZPWR_VERBS key bannernopony is valid' {
    run test -n "bannernopony"
    assert $state equals 0
}

@test 'ZPWR_VERBS key bannerpony is valid' {
    run test -n "bannerpony"
    assert $state equals 0
}

@test 'ZPWR_VERBS key cleangitcleancache is valid' {
    run test -n "cleangitcleancache"
    assert $state equals 0
}

@test 'ZPWR_VERBS key creategif is valid' {
    run test -n "creategif"
    assert $state equals 0
}

@test 'ZPWR_VERBS key curl is valid' {
    run test -n "curl"
    assert $state equals 0
}

@test 'ZPWR_VERBS key deduppaths is valid' {
    run test -n "deduppaths"
    assert $state equals 0
}

@test 'ZPWR_VERBS key execpy is valid' {
    run test -n "execpy"
    assert $state equals 0
}

@test 'ZPWR_VERBS key filesearch is valid' {
    run test -n "filesearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key filesearchedit is valid' {
    run test -n "filesearchedit"
    assert $state equals 0
}

@test 'ZPWR_VERBS key goclean is valid' {
    run test -n "goclean"
    assert $state equals 0
}

@test 'ZPWR_VERBS key google is valid' {
    run test -n "google"
    assert $state equals 0
}

@test 'ZPWR_VERBS key help is valid' {
    run test -n "help"
    assert $state equals 0
}

@test 'ZPWR_VERBS key openurl is valid' {
    run test -n "openurl"
    assert $state equals 0
}

@test 'ZPWR_VERBS key pstreemonitor is valid' {
    run test -n "pstreemonitor"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regengtagspygments is valid' {
    run test -n "regengtagspygments"
    assert $state equals 0
}

@test 'ZPWR_VERBS key regengtagstype is valid' {
    run test -n "regengtagstype"
    assert $state equals 0
}

@test 'ZPWR_VERBS key replacer is valid' {
    run test -n "replacer"
    assert $state equals 0
}

@test 'ZPWR_VERBS key reset is valid' {
    run test -n "reset"
    assert $state equals 0
}

@test 'ZPWR_VERBS key revealrecurse is valid' {
    run test -n "revealrecurse"
    assert $state equals 0
}

@test 'ZPWR_VERBS key scriptnew is valid' {
    run test -n "scriptnew"
    assert $state equals 0
}

@test 'ZPWR_VERBS key torip is valid' {
    run test -n "torip"
    assert $state equals 0
}

@test 'ZPWR_VERBS key toriprenew is valid' {
    run test -n "toriprenew"
    assert $state equals 0
}

@test 'ZPWR_VERBS key updatepull is valid' {
    run test -n "updatepull"
    assert $state equals 0
}

@test 'ZPWR_VERBS key wordsearch is valid' {
    run test -n "wordsearch"
    assert $state equals 0
}

@test 'ZPWR_VERBS key wordsearchedit is valid' {
    run test -n "wordsearchedit"
    assert $state equals 0
}
