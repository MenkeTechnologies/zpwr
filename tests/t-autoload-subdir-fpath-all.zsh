#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test fpath of all autoload subdir functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn nn file exists in darwin' {
    run test -f "$ZPWR/autoload/darwin/nn"
    assert $state equals 0
}

@test 'fn _megacomplete file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/_megacomplete"
    assert $state equals 0
}

@test 'fn _cl file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_cl"
    assert $state equals 0
}

@test 'fn _fzf_complete_zpwr file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_zpwr"
    assert $state equals 0
}

@test 'fn restartZabbixAgent file exists in systemctl' {
    run test -f "$ZPWR/autoload/systemctl/restartZabbixAgent"
    assert $state equals 0
}

@test 'fn _complete_plus_last_command_args file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/_complete_plus_last_command_args"
    assert $state equals 0
}

@test 'fn _ssd file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_ssd"
    assert $state equals 0
}

@test 'fn zpwrAttachSetup file exists in linux' {
    run test -f "$ZPWR/autoload/linux/zpwrAttachSetup"
    assert $state equals 0
}

@test 'fn _fzf_complete_killall file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_killall"
    assert $state equals 0
}

@test 'fn __zpwr_aliases file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/__zpwr_aliases"
    assert $state equals 0
}

@test 'fn _digs file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_digs"
    assert $state equals 0
}

@test 'fn zpwrDarwinBanner file exists in darwin' {
    run test -f "$ZPWR/autoload/darwin/zpwrDarwinBanner"
    assert $state equals 0
}

@test 'fn _fzf_complete_alias file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_alias"
    assert $state equals 0
}

@test 'fn exe file exists in darwin' {
    run test -f "$ZPWR/autoload/darwin/exe"
    assert $state equals 0
}

@test 'fn ssu file exists in systemctl' {
    run test -f "$ZPWR/autoload/systemctl/ssu"
    assert $state equals 0
}

@test 'fn _zcommand file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_zcommand"
    assert $state equals 0
}

@test 'fn ___fzf_complete_printf_post file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/___fzf_complete_printf_post"
    assert $state equals 0
}

@test 'fn _fzf_complete_c file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_c"
    assert $state equals 0
}

@test 'fn ___fzf_complete_git_post file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/___fzf_complete_git_post"
    assert $state equals 0
}

@test 'fn zpwrLinuxBanner file exists in linux' {
    run test -f "$ZPWR/autoload/linux/zpwrLinuxBanner"
    assert $state equals 0
}

@test 'fn _fzf_complete_f file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_f"
    assert $state equals 0
}

@test 'fn _ssu file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_ssu"
    assert $state equals 0
}

@test 'fn _fzf_complete_echo file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_echo"
    assert $state equals 0
}

@test 'fn __fasd_dirs_comp file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/__fasd_dirs_comp"
    assert $state equals 0
}

@test 'fn __fasd_files_comp file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/__fasd_files_comp"
    assert $state equals 0
}

@test 'fn _dfimage file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_dfimage"
    assert $state equals 0
}

@test 'fn restart file exists in systemctl' {
    run test -f "$ZPWR/autoload/systemctl/restart"
    assert $state equals 0
}

@test 'fn __zpwr_galiases file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/__zpwr_galiases"
    assert $state equals 0
}

@test 'fn _command_names file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/_command_names"
    assert $state equals 0
}

@test 'fn ___fzf_complete_zpwr_post file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/___fzf_complete_zpwr_post"
    assert $state equals 0
}

@test 'fn ___fzf_complete_r_post file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/___fzf_complete_r_post"
    assert $state equals 0
}

@test 'fn _zcommand_mult file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_zcommand_mult"
    assert $state equals 0
}

@test 'fn _fzf_complete_nvim file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_nvim"
    assert $state equals 0
}

@test 'fn _fzf_complete_emacsclient file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_emacsclient"
    assert $state equals 0
}

@test 'fn zpwrLinuxPlugins file exists in linux' {
    run test -f "$ZPWR/autoload/linux/zpwrLinuxPlugins"
    assert $state equals 0
}

@test 'fn scriptToPDF file exists in linux' {
    run test -f "$ZPWR/autoload/linux/scriptToPDF"
    assert $state equals 0
}

@test 'fn _fzf_complete_r file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_r"
    assert $state equals 0
}

@test 'fn _fzf_complete_git file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_git"
    assert $state equals 0
}

@test 'fn _c file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_c"
    assert $state equals 0
}

@test 'fn _fzf_complete_emacs file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_emacs"
    assert $state equals 0
}

@test 'fn _f file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_f"
    assert $state equals 0
}

@test 'fn _fzf_complete_z file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_z"
    assert $state equals 0
}

@test 'fn _fzf_complete_printf file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_printf"
    assert $state equals 0
}

@test 'fn _fzf_complete_vim file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_vim"
    assert $state equals 0
}

@test 'fn _zpwr file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_zpwr"
    assert $state equals 0
}

@test 'fn ___fzf_complete_echo_post file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/___fzf_complete_echo_post"
    assert $state equals 0
}

@test 'fn _p file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_p"
    assert $state equals 0
}

@test 'fn db2 file exists in darwin' {
    run test -f "$ZPWR/autoload/darwin/db2"
    assert $state equals 0
}

@test 'fn _r file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_r"
    assert $state equals 0
}

@test 'fn _files file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/_files"
    assert $state equals 0
}

@test 'fn _fzf_complete_clearList file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_clearList"
    assert $state equals 0
}

@test 'fn __z_dirs_comp file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/__z_dirs_comp"
    assert $state equals 0
}

@test 'fn zpwrScriptToPDF file exists in darwin' {
    run test -f "$ZPWR/autoload/darwin/zpwrScriptToPDF"
    assert $state equals 0
}

@test 'fn _commandExists file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_commandExists"
    assert $state equals 0
}

@test 'fn _parameters file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/_parameters"
    assert $state equals 0
}

@test 'fn tailufw file exists in linux' {
    run test -f "$ZPWR/autoload/linux/tailufw"
    assert $state equals 0
}

@test 'fn _fzf_complete_mvim file exists in fzf' {
    run test -f "$ZPWR/autoload/fzf/_fzf_complete_mvim"
    assert $state equals 0
}

@test 'fn _zpwrPrintMap file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_zpwrPrintMap"
    assert $state equals 0
}

@test 'fn ssd file exists in systemctl' {
    run test -f "$ZPWR/autoload/systemctl/ssd"
    assert $state equals 0
}

@test 'fn _zpwrExists file exists in comps' {
    run test -f "$ZPWR/autoload/comps/_zpwrExists"
    assert $state equals 0
}

@test 'fn db file exists in darwin' {
    run test -f "$ZPWR/autoload/darwin/db"
    assert $state equals 0
}

@test 'fn _complete_clipboard file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/_complete_clipboard"
    assert $state equals 0
}

@test 'fn _complete_hist file exists in comp_utils' {
    run test -f "$ZPWR/autoload/comp_utils/_complete_hist"
    assert $state equals 0
}
