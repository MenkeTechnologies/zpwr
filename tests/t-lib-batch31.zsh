#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ci.yml github.ref/branches; env verb greps; wizard_pages; zpwr* autoload zsh -n
##### Notes: env ZPWR_VERBS greps use grep -Fq 'ZPWR_VERBS[key]=' (single-quoted)
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — concurrency + branch filters
#--------------------------------------------------------------
@test 'ci.yml concurrency group references github.ref' {
    run grep -Fq 'github.ref' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml on push and pull_request target branches main dev' {
    run grep -Fq 'branches: [main, dev]' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# env/zpwr.zsh — verb assignment anchors (source greps)
#--------------------------------------------------------------
@test 'env zpwr.zsh defines ZPWR_VERBS[recompile]' {
    run grep -Fq 'ZPWR_VERBS[recompile]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[refreshzwc]' {
    run grep -Fq 'ZPWR_VERBS[refreshzwc]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[wordsearchedit]' {
    run grep -Fq 'ZPWR_VERBS[wordsearchedit]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[recompilefiles]' {
    run grep -Fq 'ZPWR_VERBS[recompilefiles]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

@test 'env zpwr.zsh defines ZPWR_VERBS[reset]' {
    run grep -Fq 'ZPWR_VERBS[reset]=' "$ZPWR/env/zpwr.zsh"
    assert $state equals 0
}

#--------------------------------------------------------------
# docs/wizard_pages — zsh -n (batch31 stratified samples)
#--------------------------------------------------------------
@test 'wizard page_002.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_002.zsh"
    assert $state equals 0
}

@test 'wizard page_010.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_010.zsh"
    assert $state equals 0
}

@test 'wizard page_030.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_030.zsh"
    assert $state equals 0
}

@test 'wizard page_055.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_055.zsh"
    assert $state equals 0
}

@test 'wizard page_088.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_088.zsh"
    assert $state equals 0
}

@test 'wizard page_120.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_120.zsh"
    assert $state equals 0
}

@test 'wizard page_145.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_145.zsh"
    assert $state equals 0
}

@test 'wizard page_165.zsh passes zsh -n' {
    run zsh -n "$ZPWR/docs/wizard_pages/page_165.zsh"
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
# Autoload — zsh -n (zpwr* cluster after zpwrAddOMZAttrib)
#--------------------------------------------------------------
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

@test 'autoload common zpwrBannerLolcat passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBannerLolcat"
    assert $state equals 0
}

@test 'autoload common zpwrBench passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBench"
    assert $state equals 0
}

@test 'autoload common zpwrBindAliasesLate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindAliasesLate"
    assert $state equals 0
}

@test 'autoload common zpwrBindAliasesZshLate passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindAliasesZshLate"
    assert $state equals 0
}

@test 'autoload common zpwrBindDirs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindDirs"
    assert $state equals 0
}

@test 'autoload common zpwrBindFinal passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindFinal"
    assert $state equals 0
}

@test 'autoload common zpwrBindForGit passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zpwrBindForGit"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — batch31 autoload names
#--------------------------------------------------------------
@test 'zpwrExists zpwrAgIntoFzf returns 0' {
    run zpwrExists zpwrAgIntoFzf
    assert $state equals 0
}

@test 'zpwrExists zpwrAlacritty returns 0' {
    run zpwrExists zpwrAlacritty
    assert $state equals 0
}

@test 'zpwrExists zpwrBench returns 0' {
    run zpwrExists zpwrBench
    assert $state equals 0
}

@test 'zpwrExists zpwrBackup returns 0' {
    run zpwrExists zpwrBackup
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

@test 'zpwrExists zpwrAutoloadCount returns 0' {
    run zpwrExists zpwrAutoloadCount
    assert $state equals 0
}

@test 'zpwrExists zpwrBannerLolcat returns 0' {
    run zpwrExists zpwrBannerLolcat
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists pgrep pkill returns 0' {
    run zpwrCommandExists pgrep pkill
    assert $state equals 0
}

@test 'zpwrCommandExists timeout returns 0' {
    run zpwrCommandExists timeout
    assert $state equals 0
}

#--------------------------------------------------------------
# Repository layout
#--------------------------------------------------------------
@test 'root .gitignore exists' {
    run test -f "$ZPWR/.gitignore"
    assert $state equals 0
}

@test 'tests directory exists' {
    run test -d "$ZPWR/tests"
    assert $state equals 0
}

@test 'autoload tree exists' {
    run test -d "$ZPWR/autoload"
    assert $state equals 0
}
