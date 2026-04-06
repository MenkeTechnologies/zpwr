#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Author: MenkeTechnologies
##### Purpose: ci.yml workflow skeleton anchors; darwin/linux/comps autoload zsh -n; zal* syntax
##### Notes: Complements batch12–28; patterns with leading -- use grep -- when needed elsewhere
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

#--------------------------------------------------------------
# .github/workflows/ci.yml — workflow metadata (YAML anchors)
#--------------------------------------------------------------
@test 'ci.yml concurrency group references github.workflow' {
    run grep -Fq 'github.workflow' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml job sets timeout-minutes 120' {
    run grep -Fq 'timeout-minutes: 120' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml job env sets GIT_TERMINAL_PROMPT 0' {
    run grep -Fq 'GIT_TERMINAL_PROMPT: 0' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml on block includes push' {
    run grep -Fq 'push:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml on block includes pull_request' {
    run grep -Fq 'pull_request:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml jobs defines test job' {
    run grep -Fq '  test:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml defines concurrency block' {
    run grep -Fq 'concurrency:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml defines strategy matrix' {
    run grep -Fq 'strategy:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml matrix defines zsh-version' {
    run grep -Fq 'zsh-version:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml strategy sets fail-fast' {
    run grep -Fq 'fail-fast:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml defines cancel-in-progress' {
    run grep -Fq 'cancel-in-progress:' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'ci.yml job env sets DEBIAN_FRONTEND noninteractive' {
    run grep -Fq 'DEBIAN_FRONTEND: noninteractive' "$ZPWR/.github/workflows/ci.yml"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (darwin + linux, not covered in batch15 subset)
#--------------------------------------------------------------
@test 'autoload darwin zpwrScriptToPDF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/zpwrScriptToPDF"
    assert $state equals 0
}

@test 'autoload darwin nn passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/nn"
    assert $state equals 0
}

@test 'autoload darwin exe passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/exe"
    assert $state equals 0
}

@test 'autoload darwin db2 passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/db2"
    assert $state equals 0
}

@test 'autoload darwin db passes zsh -n' {
    run zsh -n "$ZPWR/autoload/darwin/db"
    assert $state equals 0
}

@test 'autoload linux zpwrLinuxBanner passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrLinuxBanner"
    assert $state equals 0
}

@test 'autoload linux zpwrAttachSetup passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/zpwrAttachSetup"
    assert $state equals 0
}

@test 'autoload linux tailufw passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/tailufw"
    assert $state equals 0
}

@test 'autoload linux scriptToPDF passes zsh -n' {
    run zsh -n "$ZPWR/autoload/linux/scriptToPDF"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (comps)
#--------------------------------------------------------------
@test 'autoload comps _c passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_c"
    assert $state equals 0
}

@test 'autoload comps _cl passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_cl"
    assert $state equals 0
}

@test 'autoload comps _commandExists passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_commandExists"
    assert $state equals 0
}

@test 'autoload comps _dfimage passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_dfimage"
    assert $state equals 0
}

@test 'autoload comps _digs passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_digs"
    assert $state equals 0
}

@test 'autoload comps _f passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_f"
    assert $state equals 0
}

@test 'autoload comps _p passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_p"
    assert $state equals 0
}

@test 'autoload comps _r passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_r"
    assert $state equals 0
}

@test 'autoload comps _ssd passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_ssd"
    assert $state equals 0
}

@test 'autoload comps _ssu passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_ssu"
    assert $state equals 0
}

@test 'autoload comps _zcommand passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zcommand"
    assert $state equals 0
}

@test 'autoload comps _zcommand_mult passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zcommand_mult"
    assert $state equals 0
}

@test 'autoload comps _zpwr passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test 'autoload comps _zpwrExists passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwrExists"
    assert $state equals 0
}

@test 'autoload comps _zpwrPrintMap passes zsh -n' {
    run zsh -n "$ZPWR/autoload/comps/_zpwrPrintMap"
    assert $state equals 0
}

#--------------------------------------------------------------
# Autoload — zsh -n (common zal* cluster)
#--------------------------------------------------------------
@test 'autoload common zal passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zal"
    assert $state equals 0
}

@test 'autoload common zalc passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zalc"
    assert $state equals 0
}

@test 'autoload common zald passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zald"
    assert $state equals 0
}

@test 'autoload common zalf passes zsh -n' {
    run zsh -n "$ZPWR/autoload/common/zalf"
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrExists — platform helpers (loaded in test harness)
#--------------------------------------------------------------
@test 'zpwrExists zpwrScriptToPDF returns 0' {
    run zpwrExists zpwrScriptToPDF
    assert $state equals 0
}

@test 'zpwrExists zpwrLinuxBanner returns 0' {
    run zpwrExists zpwrLinuxBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrAttachSetup returns 0' {
    run zpwrExists zpwrAttachSetup
    assert $state equals 0
}

@test 'zpwrExists tailufw returns 0' {
    run zpwrExists tailufw
    assert $state equals 0
}

@test 'zpwrExists zpwrDarwinBanner returns 0' {
    run zpwrExists zpwrDarwinBanner
    assert $state equals 0
}

@test 'zpwrExists zpwrLinuxPlugins returns 0' {
    run zpwrExists zpwrLinuxPlugins
    assert $state equals 0
}

#--------------------------------------------------------------
# zpwrCommandExists
#--------------------------------------------------------------
@test 'zpwrCommandExists env printf tr nl returns 0' {
    run zpwrCommandExists env printf tr nl
    assert $state equals 0
}

@test 'zpwrCommandExists stat chmod chown returns 0' {
    run zpwrCommandExists stat chmod chown
    assert $state equals 0
}

#--------------------------------------------------------------
# Env + init entrypoints
#--------------------------------------------------------------
@test 'env .zpwr_env.sh exists' {
    run test -f "$ZPWR/env/.zpwr_env.sh"
    assert $state equals 0
}

@test 'env .zpwr_re_env.sh exists' {
    run test -f "$ZPWR/env/.zpwr_re_env.sh"
    assert $state equals 0
}

@test 'scripts init.sh exists' {
    run test -f "$ZPWR/scripts/init.sh"
    assert $state equals 0
}
