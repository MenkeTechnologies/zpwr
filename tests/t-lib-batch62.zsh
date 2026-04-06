#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: env verb greps (aliasusage/all/allsearch/altprettyprint/attach); wizard_pages; zpl..zpwrBannerCounts zsh -n; keybind/all-updates zpwrExists
##### Notes: Continues batch61; env greps use grep -Fq 'ZPWR_VERBS[key]='
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (early alphabet)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[aliasusage]' {
    run grep -Fq 'ZPWR_VERBS[aliasusage]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[all]' {
    run grep -Fq 'ZPWR_VERBS[all]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[allsearch]' {
    run grep -Fq 'ZPWR_VERBS[allsearch]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[altprettyprint]' {
    run grep -Fq 'ZPWR_VERBS[altprettyprint]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[attach]' {
    run grep -Fq 'ZPWR_VERBS[attach]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch62 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_020.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_020.zsh"
    assert $state equals 0
}

@test 'wizard page_050.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_050.zsh"
    assert $state equals 0
}

@test 'wizard page_068.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_068.zsh"
    assert $state equals 0
}

@test 'wizard page_088.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_088.zsh"
    assert $state equals 0
}

@test 'wizard page_108.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_108.zsh"
    assert $state equals 0
}

@test 'wizard page_129.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_129.zsh"
    assert $state equals 0
}

@test 'wizard page_150.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_150.zsh"
    assert $state equals 0
}

@test 'wizard page_181.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_181.zsh"
    assert $state equals 0
}

@test 'wizard page_194.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_194.zsh"
    assert $state equals 0
}

@test 'wizard page_203.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_203.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# autoload/common — zpl through zpwrBannerCounts (zsh -n)
#--------------------------------------------------------------
@test 'autoload common zpl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpl"
    assert $state equals 0
}

@test 'autoload common zpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwr"
    assert $state equals 0
}

@test 'autoload common zpwr256ColorTest passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwr256ColorTest"
    assert $state equals 0
}

@test 'autoload common zpwrAbout passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAbout"
    assert $state equals 0
}

@test 'autoload common zpwrAcceptLine passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAcceptLine"
    assert $state equals 0
}

@test 'autoload common zpwrAddOMZAttrib passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAddOMZAttrib"
    assert $state equals 0
}

@test 'autoload common zpwrAgIntoFzf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAgIntoFzf"
    assert $state equals 0
}

@test 'autoload common zpwrAlacritty passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAlacritty"
    assert $state equals 0
}

@test 'autoload common zpwrAliasRank passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAliasRank"
    assert $state equals 0
}

@test 'autoload common zpwrAllRemotes passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAllRemotes"
    assert $state equals 0
}

@test 'autoload common zpwrAllUpdates passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAllUpdates"
    assert $state equals 0
}

@test 'autoload common zpwrAlternateQuotes passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAlternateQuotes"
    assert $state equals 0
}

@test 'autoload common zpwrAnimate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAnimate"
    assert $state equals 0
}

@test 'autoload common zpwrArrayToJson passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrArrayToJson"
    assert $state equals 0
}

@test 'autoload common zpwrAsVar passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAsVar"
    assert $state equals 0
}

@test 'autoload common zpwrAutoloadCount passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAutoloadCount"
    assert $state equals 0
}

@test 'autoload common zpwrAutoloadList passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrAutoloadList"
    assert $state equals 0
}

@test 'autoload common zpwrBackup passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBackup"
    assert $state equals 0
}

@test 'autoload common zpwrBackupHistfile passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBackupHistfile"
    assert $state equals 0
}

@test 'autoload common zpwrBannerCounts passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBannerCounts"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch62 (alias / all-keybind / lib pretty-print cluster)
#--------------------------------------------------------------
@test 'zpwrExists zpwrFzfAllKeybind returns 0' {
    run zpwrExists zpwrFzfAllKeybind
    assert $state equals 0
}

@test 'zpwrExists zpwrAlternatingPrettyPrint returns 0' {
    run zpwrExists zpwrAlternatingPrettyPrint
    assert $state equals 0
}

@test 'zpwrExists zpwrAllRemotes returns 0' {
    run zpwrExists zpwrAllRemotes
    assert $state equals 0
}

@test 'zpwrExists zpwrAllUpdates returns 0' {
    run zpwrExists zpwrAllUpdates
    assert $state equals 0
}

@test 'zpwrExists zpwrAlternateQuotes returns 0' {
    run zpwrExists zpwrAlternateQuotes
    assert $state equals 0
}

@test 'zpwrExists zpwrAnimate returns 0' {
    run zpwrExists zpwrAnimate
    assert $state equals 0
}

@test 'zpwrExists zpwrArrayToJson returns 0' {
    run zpwrExists zpwrArrayToJson
    assert $state equals 0
}

@test 'zpwrExists zpwrAsVar returns 0' {
    run zpwrExists zpwrAsVar
    assert $state equals 0
}

@test 'zpwrExists zpwrBackupHistfile returns 0' {
    run zpwrExists zpwrBackupHistfile
    assert $state equals 0
}

@test 'zpwrExists zpwrBannerLolcat returns 0' {
    run zpwrExists zpwrBannerLolcat
    assert $state equals 0
}

@test 'zpwrExists zal returns 0' {
    run zpwrExists zal
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists find xargs returns 0' {
    run zpwrCommandExists find xargs
    assert $state equals 0
}

@test 'zpwrCommandExists basename dirname returns 0' {
    run zpwrCommandExists basename dirname
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
