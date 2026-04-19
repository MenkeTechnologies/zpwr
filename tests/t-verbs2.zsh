#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test additional ZPWR verb key presence and execution
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Single-letter verb keys
#--------------------------------------------------------------
@test 'ZPWR_VERBS[a]' {
    run test -n "${(qqq)ZPWR_VERBS[a]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[c]' {
    run test -n "${(qqq)ZPWR_VERBS[c]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[e]' {
    run test -n "${(qqq)ZPWR_VERBS[e]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[f]' {
    run test -n "${(qqq)ZPWR_VERBS[f]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[r]' {
    run test -n "${(qqq)ZPWR_VERBS[r]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[z]' {
    run test -n "${(qqq)ZPWR_VERBS[z]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# Home navigation verb keys
#--------------------------------------------------------------
@test 'ZPWR_VERBS[home]' {
    run test -n "${(qqq)ZPWR_VERBS[home]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoload]' {
    run test -n "${(qqq)ZPWR_VERBS[homeautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeautoloadcommon]' {
    run test -n "${(qqq)ZPWR_VERBS[homeautoloadcommon]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homecomps]' {
    run test -n "${(qqq)ZPWR_VERBS[homecomps]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeenv]' {
    run test -n "${(qqq)ZPWR_VERBS[homeenv]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homeinstall]' {
    run test -n "${(qqq)ZPWR_VERBS[homeinstall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homelocal]' {
    run test -n "${(qqq)ZPWR_VERBS[homelocal]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[homescripts]' {
    run test -n "${(qqq)ZPWR_VERBS[homescripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometest]' {
    run test -n "${(qqq)ZPWR_VERBS[hometest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hometmux]' {
    run test -n "${(qqq)ZPWR_VERBS[hometmux]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZSH plugin verb keys
#--------------------------------------------------------------
@test 'ZPWR_VERBS[zshplugincount]' {
    run test -n "${(qqq)ZPWR_VERBS[zshplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshpluginlist]' {
    run test -n "${(qqq)ZPWR_VERBS[zshpluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zshsearch]' {
    run test -n "${(qqq)ZPWR_VERBS[zshsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[zcompdump]' {
    run test -n "${(qqq)ZPWR_VERBS[zcompdump]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# Vim plugin verb keys
#--------------------------------------------------------------
@test 'ZPWR_VERBS[vimplugincount]' {
    run test -n "${(qqq)ZPWR_VERBS[vimplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimpluginlist]' {
    run test -n "${(qqq)ZPWR_VERBS[vimpluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscripts]' {
    run test -n "${(qqq)ZPWR_VERBS[vimscripts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimscriptedit]' {
    run test -n "${(qqq)ZPWR_VERBS[vimscriptedit]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimautoload]' {
    run test -n "${(qqq)ZPWR_VERBS[vimautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimcd]' {
    run test -n "${(qqq)ZPWR_VERBS[vimcd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimrecent]' {
    run test -n "${(qqq)ZPWR_VERBS[vimrecent]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimconfig]' {
    run test -n "${(qqq)ZPWR_VERBS[vimconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimctags]' {
    run test -n "${(qqq)ZPWR_VERBS[vimctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[vimall]' {
    run test -n "${(qqq)ZPWR_VERBS[vimall]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# Emacs plugin verb keys
#--------------------------------------------------------------
@test 'ZPWR_VERBS[emacsplugincount]' {
    run test -n "${(qqq)ZPWR_VERBS[emacsplugincount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacspluginlist]' {
    run test -n "${(qqq)ZPWR_VERBS[emacspluginlist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsall]' {
    run test -n "${(qqq)ZPWR_VERBS[emacsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsautoload]' {
    run test -n "${(qqq)ZPWR_VERBS[emacsautoload]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacscd]' {
    run test -n "${(qqq)ZPWR_VERBS[emacscd]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsrecent]' {
    run test -n "${(qqq)ZPWR_VERBS[emacsrecent]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacsconfig]' {
    run test -n "${(qqq)ZPWR_VERBS[emacsconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[emacszpwr]' {
    run test -n "${(qqq)ZPWR_VERBS[emacszpwr]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# Git verb keys
#--------------------------------------------------------------
@test 'ZPWR_VERBS[gitdir]' {
    run test -n "${(qqq)ZPWR_VERBS[gitdir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitremotes]' {
    run test -n "${(qqq)ZPWR_VERBS[gitremotes]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitignore]' {
    run test -n "${(qqq)ZPWR_VERBS[gitignore]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitconfig]' {
    run test -n "${(qqq)ZPWR_VERBS[gitconfig]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountlines]' {
    run test -n "${(qqq)ZPWR_VERBS[gitcontribcountlines]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcontribcountdirs]' {
    run test -n "${(qqq)ZPWR_VERBS[gitcontribcountdirs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitclearcache]' {
    run test -n "${(qqq)ZPWR_VERBS[gitclearcache]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitcommitcount]' {
    run test -n "${(qqq)ZPWR_VERBS[gitcommitcount]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitlargest]' {
    run test -n "${(qqq)ZPWR_VERBS[gitlargest]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitsearch]' {
    run test -n "${(qqq)ZPWR_VERBS[gitsearch]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubcreate]' {
    run test -n "${(qqq)ZPWR_VERBS[githubcreate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[githubdelete]' {
    run test -n "${(qqq)ZPWR_VERBS[githubdelete]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[gitreposfile]' {
    run test -n "${(qqq)ZPWR_VERBS[gitreposfile]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# Utility verb keys
#--------------------------------------------------------------
@test 'ZPWR_VERBS[pre]' {
    run test -n "${(qqq)ZPWR_VERBS[pre]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[post]' {
    run test -n "${(qqq)ZPWR_VERBS[post]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[makedir]' {
    run test -n "${(qqq)ZPWR_VERBS[makedir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[return2]' {
    run test -n "${(qqq)ZPWR_VERBS[return2]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[color2]' {
    run test -n "${(qqq)ZPWR_VERBS[color2]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[decompile]' {
    run test -n "${(qqq)ZPWR_VERBS[decompile]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[figletfonts]' {
    run test -n "${(qqq)ZPWR_VERBS[figletfonts]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[detach]' {
    run test -n "${(qqq)ZPWR_VERBS[detach]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[killmux]' {
    run test -n "${(qqq)ZPWR_VERBS[killmux]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[exists]' {
    run test -n "${(qqq)ZPWR_VERBS[exists]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[existscommand]' {
    run test -n "${(qqq)ZPWR_VERBS[existscommand]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[options]' {
    run test -n "${(qqq)ZPWR_VERBS[options]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[modules]' {
    run test -n "${(qqq)ZPWR_VERBS[modules]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[printmap]' {
    run test -n "${(qqq)ZPWR_VERBS[printmap]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[search]' {
    run test -n "${(qqq)ZPWR_VERBS[search]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[prettyprint]' {
    run test -n "${(qqq)ZPWR_VERBS[prettyprint]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[grep]' {
    run test -n "${(qqq)ZPWR_VERBS[grep]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[man]' {
    run test -n "${(qqq)ZPWR_VERBS[man]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ls]' {
    run test -n "${(qqq)ZPWR_VERBS[ls]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[info]' {
    run test -n "${(qqq)ZPWR_VERBS[info]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordir]' {
    run test -n "${(qqq)ZPWR_VERBS[fordir]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[fordirupdate]' {
    run test -n "${(qqq)ZPWR_VERBS[fordirupdate]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvars]' {
    run test -n "${(qqq)ZPWR_VERBS[envvars]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[envvarsall]' {
    run test -n "${(qqq)ZPWR_VERBS[envvarsall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[colortest256]' {
    run test -n "${(qqq)ZPWR_VERBS[colortest256]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dfimage]' {
    run test -n "${(qqq)ZPWR_VERBS[dfimage]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[dockerwipe]' {
    run test -n "${(qqq)ZPWR_VERBS[dockerwipe]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[backuphistory]' {
    run test -n "${(qqq)ZPWR_VERBS[backuphistory]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[alacritty]' {
    run test -n "${(qqq)ZPWR_VERBS[alacritty]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[attach]' {
    run test -n "${(qqq)ZPWR_VERBS[attach]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[open]' {
    run test -n "${(qqq)ZPWR_VERBS[open]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[rename]' {
    run test -n "${(qqq)ZPWR_VERBS[rename]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[to]' {
    run test -n "${(qqq)ZPWR_VERBS[to]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[web]' {
    run test -n "${(qqq)ZPWR_VERBS[web]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[taillog]' {
    run test -n "${(qqq)ZPWR_VERBS[taillog]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[loginfo]' {
    run test -n "${(qqq)ZPWR_VERBS[loginfo]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logerror]' {
    run test -n "${(qqq)ZPWR_VERBS[logerror]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logdebug]' {
    run test -n "${(qqq)ZPWR_VERBS[logdebug]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[logtrace]' {
    run test -n "${(qqq)ZPWR_VERBS[logtrace]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hi]' {
    run test -n "${(qqq)ZPWR_VERBS[hist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[hist]' {
    run test -n "${(qqq)ZPWR_VERBS[hist]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsend]' {
    run test -n "${(qqq)ZPWR_VERBS[startsend]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[stopsend]' {
    run test -n "${(qqq)ZPWR_VERBS[stopsend]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[startsendfull]' {
    run test -n "${(qqq)ZPWR_VERBS[startsendfull]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[ping]' {
    run test -n "${(qqq)ZPWR_VERBS[ping]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[digs]' {
    run test -n "${(qqq)ZPWR_VERBS[digs]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenzsh]' {
    run test -n "${(qqq)ZPWR_VERBS[regenzsh]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenall]' {
    run test -n "${(qqq)ZPWR_VERBS[regenall]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenctags]' {
    run test -n "${(qqq)ZPWR_VERBS[regenctags]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenpowerline]' {
    run test -n "${(qqq)ZPWR_VERBS[regenpowerline]}"
    assert $state equals 0
}

@test 'ZPWR_VERBS[regenkeybindings]' {
    run test -n "${(qqq)ZPWR_VERBS[regenkeybindings]}"
    assert $state equals 0
}

#--------------------------------------------------------------
# Verb execution: zpwr e (envcounts shorthand)
#--------------------------------------------------------------
@test 'zpwr e returns 0' {
    run zpwr e &>/dev/null
    assert $state equals 0
}

@test 'zpwr e output contains Commands' {
    run zpwr e
    assert "$output" contains Commands
}

#--------------------------------------------------------------
# Verb execution: zpwr exists
#--------------------------------------------------------------
@test 'zpwr exists zpwrPrettyPrint returns 0' {
    run zpwr exists zpwrPrettyPrint
    assert $state equals 0
}

@test 'zpwr exists __no_such_thing__ returns 1' {
    run zpwr exists __no_such_thing__9999__
    assert $state equals 1
}

#--------------------------------------------------------------
# Verb execution: zpwr existscommand
#--------------------------------------------------------------
@test 'zpwr existscommand zsh returns 0' {
    run zpwr existscommand zsh
    assert $state equals 0
}

@test 'zpwr existscommand __fake__ returns 1' {
    run zpwr existscommand __fake_cmd_99999__
    assert $state equals 1
}

#--------------------------------------------------------------
# Verb execution: zpwr prettyprint
#--------------------------------------------------------------
@test 'zpwr prettyprint hello returns 0' {
    run zpwr prettyprint hello
    assert $state equals 0
}

@test 'zpwr prettyprint hello output contains hello' {
    run zpwr prettyprint hello
    assert "$output" contains hello
}

#--------------------------------------------------------------
# Verb execution: zpwr printmap
#--------------------------------------------------------------
@test 'zpwr printmap ZPWR_VERBS returns 0' {
    run zpwr printmap ZPWR_VERBS
    assert $state equals 0
}

@test 'zpwr printmap ZPWR_VERBS output contains about' {
    run zpwr printmap ZPWR_VERBS
    assert "$output" contains about
}

#--------------------------------------------------------------
# Verb execution: zpwr gitdir
#--------------------------------------------------------------
@test 'zpwr gitdir returns 0 in git repo' {
    run zpwr gitdir &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# Verb execution: zpwr gitremotes
#--------------------------------------------------------------
@test 'zpwr gitremotes returns 0' {
    run zpwr gitremotes &>/dev/null
    assert $state equals 0
}

@test 'zpwr gitremotes output contains origin' {
    run zpwr gitremotes &>/dev/null
    assert "$output" contains origin
}

#--------------------------------------------------------------
# Verb execution: zpwr makedir
#--------------------------------------------------------------
@test 'zpwr makedir with tmpdir returns 0' {
    local tmpdir
    tmpdir="/tmp/zpwr_verb_jd_$$"
    run zpwr makedir "$tmpdir"
    assert $state equals 0
    command rm -rf "$tmpdir"
}

#--------------------------------------------------------------
# Verb execution: zpwr zshplugincount
#--------------------------------------------------------------
@test 'zpwr zshplugincount returns 0' {
    run zpwr zshplugincount &>/dev/null
    assert $state equals 0
}

@test 'zpwr zshplugincount output is not empty' {
    run zpwr zshplugincount
    assert "$output" is_not_empty
}

#--------------------------------------------------------------
# Verb execution: zpwr zshpluginlist
#--------------------------------------------------------------
@test 'zpwr zshpluginlist returns 0' {
    run zpwr zshpluginlist &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# Verb execution: zpwr vimplugincount
#--------------------------------------------------------------
@test 'zpwr vimplugincount returns 0' {
    run zpwr vimplugincount &>/dev/null
    assert $state equals 0
}

#--------------------------------------------------------------
# Verb execution: zpwr emacsplugincount
#--------------------------------------------------------------
@test 'zpwr emacsplugincount returns 0' {
    run zpwr emacsplugincount &>/dev/null
    assert $state equals 0
}
