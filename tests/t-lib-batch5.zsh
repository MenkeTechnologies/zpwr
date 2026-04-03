#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: lib.sh shellcheck-free parse check + late-map ZPWR_VERBS
##### Notes: Verbs that are conditional on systemd/py are skipped
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# scripts/lib.sh (bash)
#--------------------------------------------------------------
@test 'lib.sh passes bash -n' {
    run bash -n "$ZPWR_LIB"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — verbs / vim / zsh meta
#--------------------------------------------------------------
@test 'verb verbs registered' {
    run test -n "${ZPWR_VERBS[verbs]+x}"
    assert $state equals 0
}

@test 'verb verbsedit registered' {
    run test -n "${ZPWR_VERBS[verbsedit]+x}"
    assert $state equals 0
}

@test 'verb verbsfzf registered' {
    run test -n "${ZPWR_VERBS[verbsfzf]+x}"
    assert $state equals 0
}

@test 'verb verbslist registered' {
    run test -n "${ZPWR_VERBS[verbslist]+x}"
    assert $state equals 0
}

@test 'verb verbscount registered' {
    run test -n "${ZPWR_VERBS[verbscount]+x}"
    assert $state equals 0
}

@test 'verb vimall registered' {
    run test -n "${ZPWR_VERBS[vimall]+x}"
    assert $state equals 0
}

@test 'verb vimscripts registered' {
    run test -n "${ZPWR_VERBS[vimscripts]+x}"
    assert $state equals 0
}

@test 'verb vimtests registered' {
    run test -n "${ZPWR_VERBS[vimtests]+x}"
    assert $state equals 0
}

@test 'verb vrc registered' {
    run test -n "${ZPWR_VERBS[vrc]+x}"
    assert $state equals 0
}

@test 'verb zrc registered' {
    run test -n "${ZPWR_VERBS[zrc]+x}"
    assert $state equals 0
}

@test 'verb zshplugincount registered' {
    run test -n "${ZPWR_VERBS[zshplugincount]+x}"
    assert $state equals 0
}

@test 'verb zshpluginlist registered' {
    run test -n "${ZPWR_VERBS[zshpluginlist]+x}"
    assert $state equals 0
}

@test 'verb zstyle registered' {
    run test -n "${ZPWR_VERBS[zstyle]+x}"
    assert $state equals 0
}

@test 'verb zcompdump registered' {
    run test -n "${ZPWR_VERBS[zcompdump]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — zpwr / repo shortcuts
#--------------------------------------------------------------
@test 'verb zp registered' {
    run test -n "${ZPWR_VERBS[zp]+x}"
    assert $state equals 0
}

@test 'verb zpwr registered' {
    run test -n "${ZPWR_VERBS[zpwr]+x}"
    assert $state equals 0
}

@test 'verb zpwrgithub registered' {
    run test -n "${ZPWR_VERBS[zpwrgithub]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — misc block (animate, curl, dedup, reset)
#--------------------------------------------------------------
@test 'verb animate registered' {
    run test -n "${ZPWR_VERBS[animate]+x}"
    assert $state equals 0
}

@test 'verb curl registered' {
    run test -n "${ZPWR_VERBS[curl]+x}"
    assert $state equals 0
}

@test 'verb deduppaths registered' {
    run test -n "${ZPWR_VERBS[deduppaths]+x}"
    assert $state equals 0
}

@test 'verb reset registered' {
    run test -n "${ZPWR_VERBS[reset]+x}"
    assert $state equals 0
}

@test 'verb replacer registered' {
    run test -n "${ZPWR_VERBS[replacer]+x}"
    assert $state equals 0
}

@test 'verb updatepull registered' {
    run test -n "${ZPWR_VERBS[updatepull]+x}"
    assert $state equals 0
}

@test 'verb onchange registered' {
    run test -n "${ZPWR_VERBS[onchange]+x}"
    assert $state equals 0
}

@test 'verb web registered' {
    run test -n "${ZPWR_VERBS[web]+x}"
    assert $state equals 0
}

@test 'verb whiletrue registered' {
    run test -n "${ZPWR_VERBS[whiletrue]+x}"
    assert $state equals 0
}

@test 'verb whilesleep registered' {
    run test -n "${ZPWR_VERBS[whilesleep]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — networking / build (where present)
#--------------------------------------------------------------
@test 'zpwrCommandExists nc returns 0' {
    run zpwrCommandExists nc
    assert $state equals 0
}

@test 'zpwrCommandExists netstat returns 0' {
    run zpwrCommandExists netstat
    assert $state equals 0
}

@test 'zpwrCommandExists awk returns 0' {
    run zpwrCommandExists awk
    assert $state equals 0
}

@test 'zpwrCommandExists sed returns 0' {
    run zpwrCommandExists sed
    assert $state equals 0
}

@test 'zpwrCommandExists grep returns 0' {
    run zpwrCommandExists grep
    assert $state equals 0
}

#--------------------------------------------------------------
# ZPWR_VERBS — banner / media / search (late map)
#--------------------------------------------------------------
@test 'verb bannerlolcat registered' {
    run test -n "${ZPWR_VERBS[bannerlolcat]+x}"
    assert $state equals 0
}

@test 'verb bannerpony registered' {
    run test -n "${ZPWR_VERBS[bannerpony]+x}"
    assert $state equals 0
}

@test 'verb creategif registered' {
    run test -n "${ZPWR_VERBS[creategif]+x}"
    assert $state equals 0
}

@test 'verb filesearch registered' {
    run test -n "${ZPWR_VERBS[filesearch]+x}"
    assert $state equals 0
}

@test 'verb google registered' {
    run test -n "${ZPWR_VERBS[google]+x}"
    assert $state equals 0
}

@test 'verb wordsearch registered' {
    run test -n "${ZPWR_VERBS[wordsearch]+x}"
    assert $state equals 0
}

@test 'verb execpy registered' {
    run test -n "${ZPWR_VERBS[execpy]+x}"
    assert $state equals 0
}

@test 'verb goclean registered' {
    run test -n "${ZPWR_VERBS[goclean]+x}"
    assert $state equals 0
}
