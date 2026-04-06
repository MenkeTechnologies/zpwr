#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps; wizard_pages zsh -n; scripts/*.sh zsh -n (info–pingordie)
##### Notes: Continues batch53 after zstyle; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (after zstyle)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[zcd]' {
    run grep -Fq 'ZPWR_VERBS[zcd]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[z]' {
    run grep -Fq 'ZPWR_VERBS[z]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[zcompdump]' {
    run grep -Fq 'ZPWR_VERBS[zcompdump]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[animate]' {
    run grep -Fq 'ZPWR_VERBS[animate]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[bannerlolcat]' {
    run grep -Fq 'ZPWR_VERBS[bannerlolcat]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch54 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_012.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_012.zsh"
    assert $state equals 0
}

@test 'wizard page_038.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_038.zsh"
    assert $state equals 0
}

@test 'wizard page_054.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_054.zsh"
    assert $state equals 0
}

@test 'wizard page_073.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_073.zsh"
    assert $state equals 0
}

@test 'wizard page_096.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_096.zsh"
    assert $state equals 0
}

@test 'wizard page_117.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_117.zsh"
    assert $state equals 0
}

@test 'wizard page_138.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_138.zsh"
    assert $state equals 0
}

@test 'wizard page_169.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_169.zsh"
    assert $state equals 0
}

@test 'wizard page_190.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_190.zsh"
    assert $state equals 0
}

@test 'wizard page_205.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_205.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# scripts — zsh -n (20 *.sh after indenterAndDuplicateLineDeleter alphabetically)
#--------------------------------------------------------------
@test 'scripts info.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/info.sh"
    assert $state equals 0
}

@test 'scripts init.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/init.sh"
    assert $state equals 0
}

@test 'scripts inotifyWatchLogAndEmailIfNAS.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/inotifyWatchLogAndEmailIfNAS.sh"
    assert $state equals 0
}

@test 'scripts iostatShower.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/iostatShower.sh"
    assert $state equals 0
}

@test 'scripts lib.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/lib.sh"
    assert $state equals 0
}

@test 'scripts listAllCommands.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/listAllCommands.sh"
    assert $state equals 0
}

@test 'scripts logs.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/logs.sh"
    assert $state equals 0
}

@test 'scripts memWatch.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/memWatch.sh"
    assert $state equals 0
}

@test 'scripts menkeTech.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/menkeTech.sh"
    assert $state equals 0
}

@test 'scripts menkeTechLolcat.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/menkeTechLolcat.sh"
    assert $state equals 0
}

@test 'scripts motd.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/motd.sh"
    assert $state equals 0
}

@test 'scripts mywatch.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/mywatch.sh"
    assert $state equals 0
}

@test 'scripts myWatchMaintainEscapes.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/myWatchMaintainEscapes.sh"
    assert $state equals 0
}

@test 'scripts myWatchNoBlink.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/myWatchNoBlink.sh"
    assert $state equals 0
}

@test 'scripts myWatchNoBlinkColorized.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/myWatchNoBlinkColorized.sh"
    assert $state equals 0
}

@test 'scripts odroidtemp.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/odroidtemp.sh"
    assert $state equals 0
}

@test 'scripts oldCounter.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/oldCounter.sh"
    assert $state equals 0
}

@test 'scripts openAll.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/openAll.sh"
    assert $state equals 0
}

@test 'scripts picture_finder.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/picture_finder.sh"
    assert $state equals 0
}

@test 'scripts pingordie.sh passes zsh -n' {
    run zsh -n "$ZPWR/scripts/pingordie.sh"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch54 (update / upload / verbs widget cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrToriprenew returns 0' {
    run zpwrExists zpwrToriprenew
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdate returns 0' {
    run zpwrExists zpwrUpdate
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdateDeps returns 0' {
    run zpwrExists zpwrUpdateDeps
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdateDepsClean returns 0' {
    run zpwrExists zpwrUpdateDepsClean
    assert $state equals 0
}

@test 'zpwrExists zpwrUpdater returns 0' {
    run zpwrExists zpwrUpdater
    assert $state equals 0
}

@test 'zpwrExists zpwrUpload returns 0' {
    run zpwrExists zpwrUpload
    assert $state equals 0
}

@test 'zpwrExists zpwrUrlSafe returns 0' {
    run zpwrExists zpwrUrlSafe
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsEditNoZLE returns 0' {
    run zpwrExists zpwrVerbsEditNoZLE
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsNoZLE returns 0' {
    run zpwrExists zpwrVerbsNoZLE
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsWidget returns 0' {
    run zpwrExists zpwrVerbsWidget
    assert $state equals 0
}

@test 'zpwrExists zpwrVerbsWidgetAccept returns 0' {
    run zpwrExists zpwrVerbsWidgetAccept
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists sort uniq returns 0' {
    run zpwrCommandExists sort uniq
    assert $state equals 0
}

@test 'zpwrCommandExists tee wc returns 0' {
    run zpwrCommandExists tee wc
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'ci.yml workflow exists' {
    run test -f "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'tests test_lib.zsh exists' {
    run test -f "$ZPWR/tests/test_lib.zsh"
    assert $state equals 0
}

@test 'install zpwr.yml exists' {
    run test -f "$ZPWR/install/zpwr.yml"
    assert $state equals 0
}
