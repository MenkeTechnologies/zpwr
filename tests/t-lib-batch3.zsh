#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ZPWR_VERBS registration + extra command resolution
##### Notes: Verb keys sourced from env/zpwr.zsh; cardinality is lower-bounded
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# Verb map size (dynamic — file unique keys vs loaded; allows conditional skips)
#--------------------------------------------------------------
@test 'ZPWR_VERBS loaded count within gap of unique zpwr.zsh keys' {
    local -i uniq loaded gap
    uniq=$(awk -F'[][]' '/ZPWR_VERBS\[/ {print $2}' "$ZPWR/env/zpwr.zsh" | sort -u | wc -l | tr -d ' ')
    loaded="${#ZPWR_VERBS[@]}"
    (( gap = uniq - loaded ))
    run test "$gap" -le 50
    assert $state equals 0
}

#--------------------------------------------------------------
# Representative verb registrations (beyond t-new-verbs spot checks)
#--------------------------------------------------------------
@test 'verb about registered' {
    run test -n "${ZPWR_VERBS[about]+x}"
    assert $state equals 0
}

@test 'verb backup registered' {
    run test -n "${ZPWR_VERBS[backup]+x}"
    assert $state equals 0
}

@test 'verb banner registered' {
    run test -n "${ZPWR_VERBS[banner]+x}"
    assert $state equals 0
}

@test 'verb bannercounts registered' {
    run test -n "${ZPWR_VERBS[bannercounts]+x}"
    assert $state equals 0
}

@test 'verb cleanlog registered' {
    run test -n "${ZPWR_VERBS[cleanlog]+x}"
    assert $state equals 0
}

@test 'verb cleancache registered' {
    run test -n "${ZPWR_VERBS[cleancache]+x}"
    assert $state equals 0
}

@test 'verb compile registered' {
    run test -n "${ZPWR_VERBS[compile]+x}"
    assert $state equals 0
}

@test 'verb decompile registered' {
    run test -n "${ZPWR_VERBS[decompile]+x}"
    assert $state equals 0
}

@test 'verb colortest registered' {
    run test -n "${ZPWR_VERBS[colortest]+x}"
    assert $state equals 0
}

@test 'verb colortest256 registered' {
    run test -n "${ZPWR_VERBS[colortest256]+x}"
    assert $state equals 0
}

@test 'verb exists registered' {
    run test -n "${ZPWR_VERBS[exists]+x}"
    assert $state equals 0
}

@test 'verb detach registered' {
    run test -n "${ZPWR_VERBS[detach]+x}"
    assert $state equals 0
}

@test 'verb edit registered' {
    run test -n "${ZPWR_VERBS[edit]+x}"
    assert $state equals 0
}

@test 'verb clone registered' {
    run test -n "${ZPWR_VERBS[clone]+x}"
    assert $state equals 0
}

@test 'verb autoload registered' {
    run test -n "${ZPWR_VERBS[autoload]+x}"
    assert $state equals 0
}

@test 'verb autoloadcount registered' {
    run test -n "${ZPWR_VERBS[autoloadcount]+x}"
    assert $state equals 0
}

@test 'verb autoloadlist registered' {
    run test -n "${ZPWR_VERBS[autoloadlist]+x}"
    assert $state equals 0
}

@test 'verb compilefpath registered' {
    run test -n "${ZPWR_VERBS[compilefpath]+x}"
    assert $state equals 0
}

@test 'verb compilefiles registered' {
    run test -n "${ZPWR_VERBS[compilefiles]+x}"
    assert $state equals 0
}

@test 'verb copycommand registered' {
    run test -n "${ZPWR_VERBS[copycommand]+x}"
    assert $state equals 0
}

@test 'verb cleandirs registered' {
    run test -n "${ZPWR_VERBS[cleandirs]+x}"
    assert $state equals 0
}

@test 'verb cleanall registered' {
    run test -n "${ZPWR_VERBS[cleanall]+x}"
    assert $state equals 0
}

@test 'verb cleantemp registered' {
    run test -n "${ZPWR_VERBS[cleantemp]+x}"
    assert $state equals 0
}

@test 'verb dockerwipe registered' {
    run test -n "${ZPWR_VERBS[dockerwipe]+x}"
    assert $state equals 0
}

@test 'verb dfimage registered' {
    run test -n "${ZPWR_VERBS[dfimage]+x}"
    assert $state equals 0
}

@test 'verb exercism registered' {
    run test -n "${ZPWR_VERBS[exercism]+x}"
    assert $state equals 0
}

@test 'verb digs registered' {
    run test -n "${ZPWR_VERBS[digs]+x}"
    assert $state equals 0
}

@test 'verb dirsearch registered' {
    run test -n "${ZPWR_VERBS[dirsearch]+x}"
    assert $state equals 0
}

@test 'verb comps registered' {
    run test -n "${ZPWR_VERBS[comps]+x}"
    assert $state equals 0
}

@test 'verb completions registered' {
    run test -n "${ZPWR_VERBS[completions]+x}"
    assert $state equals 0
}

@test 'verb attach registered' {
    run test -n "${ZPWR_VERBS[attach]+x}"
    assert $state equals 0
}

@test 'verb altprettyprint registered' {
    run test -n "${ZPWR_VERBS[altprettyprint]+x}"
    assert $state equals 0
}

@test 'verb allsearch registered' {
    run test -n "${ZPWR_VERBS[allsearch]+x}"
    assert $state equals 0
}

@test 'verb aliasusage registered' {
    run test -n "${ZPWR_VERBS[aliasusage]+x}"
    assert $state equals 0
}

@test 'verb benchmark registered' {
    run test -n "${ZPWR_VERBS[benchmark]+x}"
    assert $state equals 0
}

@test 'verb brc registered' {
    run test -n "${ZPWR_VERBS[brc]+x}"
    assert $state equals 0
}

@test 'verb callers registered' {
    run test -n "${ZPWR_VERBS[callers]+x}"
    assert $state equals 0
}

@test 'verb cat registered' {
    run test -n "${ZPWR_VERBS[cat]+x}"
    assert $state equals 0
}

@test 'verb cd registered' {
    run test -n "${ZPWR_VERBS[cd]+x}"
    assert $state equals 0
}

@test 'verb checkup registered' {
    run test -n "${ZPWR_VERBS[checkup]+x}"
    assert $state equals 0
}

@test 'verb doc registered' {
    run test -n "${ZPWR_VERBS[doc]+x}"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists — additional portable tools
#--------------------------------------------------------------
@test 'zpwrCommandExists tee returns 0' {
    run zpwrCommandExists tee
    assert $state equals 0
}

@test 'zpwrCommandExists paste returns 0' {
    run zpwrCommandExists paste
    assert $state equals 0
}

@test 'zpwrCommandExists wc returns 0' {
    run zpwrCommandExists wc
    assert $state equals 0
}

@test 'zpwrCommandExists head returns 0' {
    run zpwrCommandExists head
    assert $state equals 0
}

@test 'zpwrCommandExists tail returns 0' {
    run zpwrCommandExists tail
    assert $state equals 0
}

@test 'zpwrCommandExists cat returns 0' {
    run zpwrCommandExists cat
    assert $state equals 0
}

@test 'zpwrCommandExists ls returns 0' {
    run zpwrCommandExists ls
    assert $state equals 0
}

@test 'zpwrCommandExists mv returns 0' {
    run zpwrCommandExists mv
    assert $state equals 0
}

@test 'zpwrCommandExists cp returns 0' {
    run zpwrCommandExists cp
    assert $state equals 0
}

@test 'zpwrCommandExists mkdir returns 0' {
    run zpwrCommandExists mkdir
    assert $state equals 0
}
