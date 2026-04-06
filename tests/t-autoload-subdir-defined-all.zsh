#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test defined of all autoload subdir functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn nn defined in darwin' {
    run test -n "${functions[nn]+x}"
    assert $state equals 0
}

@test 'fn _megacomplete defined in comp_utils' {
    run test -n "${functions[_megacomplete]+x}"
    assert $state equals 0
}

@test 'fn _cl defined in comps' {
    run test -n "${functions[_cl]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_zpwr defined in fzf' {
    run test -n "${functions[_fzf_complete_zpwr]+x}"
    assert $state equals 0
}

@test 'fn restartZabbixAgent defined in systemctl' {
    run test -n "${functions[restartZabbixAgent]+x}"
    assert $state equals 0
}

@test 'fn _complete_plus_last_command_args defined in comp_utils' {
    run test -n "${functions[_complete_plus_last_command_args]+x}"
    assert $state equals 0
}

@test 'fn _ssd defined in comps' {
    run test -n "${functions[_ssd]+x}"
    assert $state equals 0
}

@test 'fn zpwrAttachSetup defined in linux' {
    run test -n "${functions[zpwrAttachSetup]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_killall defined in fzf' {
    run test -n "${functions[_fzf_complete_killall]+x}"
    assert $state equals 0
}

@test 'fn __zpwr_aliases defined in comp_utils' {
    run test -n "${functions[__zpwr_aliases]+x}"
    assert $state equals 0
}

@test 'fn _digs defined in comps' {
    run test -n "${functions[_digs]+x}"
    assert $state equals 0
}

@test 'fn zpwrDarwinBanner defined in darwin' {
    run test -n "${functions[zpwrDarwinBanner]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_alias defined in fzf' {
    run test -n "${functions[_fzf_complete_alias]+x}"
    assert $state equals 0
}

@test 'fn exe defined in darwin' {
    run test -n "${functions[exe]+x}"
    assert $state equals 0
}

@test 'fn ssu defined in systemctl' {
    run test -n "${functions[ssu]+x}"
    assert $state equals 0
}

@test 'fn _zcommand defined in comps' {
    run test -n "${functions[_zcommand]+x}"
    assert $state equals 0
}

@test 'fn ___fzf_complete_printf_post defined in fzf' {
    run test -n "${functions[___fzf_complete_printf_post]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_c defined in fzf' {
    run test -n "${functions[_fzf_complete_c]+x}"
    assert $state equals 0
}

@test 'fn ___fzf_complete_git_post defined in fzf' {
    run test -n "${functions[___fzf_complete_git_post]+x}"
    assert $state equals 0
}

@test 'fn zpwrLinuxBanner defined in linux' {
    run test -n "${functions[zpwrLinuxBanner]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_f defined in fzf' {
    run test -n "${functions[_fzf_complete_f]+x}"
    assert $state equals 0
}

@test 'fn _ssu defined in comps' {
    run test -n "${functions[_ssu]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_echo defined in fzf' {
    run test -n "${functions[_fzf_complete_echo]+x}"
    assert $state equals 0
}

@test 'fn __fasd_dirs_comp defined in comp_utils' {
    run test -n "${functions[__fasd_dirs_comp]+x}"
    assert $state equals 0
}

@test 'fn __fasd_files_comp defined in comp_utils' {
    run test -n "${functions[__fasd_files_comp]+x}"
    assert $state equals 0
}

@test 'fn _dfimage defined in comps' {
    run test -n "${functions[_dfimage]+x}"
    assert $state equals 0
}

@test 'fn restart defined in systemctl' {
    run test -n "${functions[restart]+x}"
    assert $state equals 0
}

@test 'fn __zpwr_galiases defined in comp_utils' {
    run test -n "${functions[__zpwr_galiases]+x}"
    assert $state equals 0
}

@test 'fn _command_names defined in comp_utils' {
    run test -n "${functions[_command_names]+x}"
    assert $state equals 0
}

@test 'fn ___fzf_complete_zpwr_post defined in fzf' {
    run test -n "${functions[___fzf_complete_zpwr_post]+x}"
    assert $state equals 0
}

@test 'fn ___fzf_complete_r_post defined in fzf' {
    run test -n "${functions[___fzf_complete_r_post]+x}"
    assert $state equals 0
}

@test 'fn _zcommand_mult defined in comps' {
    run test -n "${functions[_zcommand_mult]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_nvim defined in fzf' {
    run test -n "${functions[_fzf_complete_nvim]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_emacsclient defined in fzf' {
    run test -n "${functions[_fzf_complete_emacsclient]+x}"
    assert $state equals 0
}

@test 'fn zpwrLinuxPlugins defined in linux' {
    run test -n "${functions[zpwrLinuxPlugins]+x}"
    assert $state equals 0
}

@test 'fn scriptToPDF defined in linux' {
    run test -n "${functions[scriptToPDF]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_r defined in fzf' {
    run test -n "${functions[_fzf_complete_r]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_git defined in fzf' {
    run test -n "${functions[_fzf_complete_git]+x}"
    assert $state equals 0
}

@test 'fn _c defined in comps' {
    run test -n "${functions[_c]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_emacs defined in fzf' {
    run test -n "${functions[_fzf_complete_emacs]+x}"
    assert $state equals 0
}

@test 'fn _f defined in comps' {
    run test -n "${functions[_f]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_z defined in fzf' {
    run test -n "${functions[_fzf_complete_z]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_printf defined in fzf' {
    run test -n "${functions[_fzf_complete_printf]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_vim defined in fzf' {
    run test -n "${functions[_fzf_complete_vim]+x}"
    assert $state equals 0
}

@test 'fn _zpwr defined in comps' {
    run test -n "${functions[_zpwr]+x}"
    assert $state equals 0
}

@test 'fn ___fzf_complete_echo_post defined in fzf' {
    run test -n "${functions[___fzf_complete_echo_post]+x}"
    assert $state equals 0
}

@test 'fn _p defined in comps' {
    run test -n "${functions[_p]+x}"
    assert $state equals 0
}

@test 'fn db2 defined in darwin' {
    run test -n "${functions[db2]+x}"
    assert $state equals 0
}

@test 'fn _r defined in comps' {
    run test -n "${functions[_r]+x}"
    assert $state equals 0
}

@test 'fn _files defined in comp_utils' {
    run test -n "${functions[_files]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_clearList defined in fzf' {
    run test -n "${functions[_fzf_complete_clearList]+x}"
    assert $state equals 0
}

@test 'fn __z_dirs_comp defined in comp_utils' {
    run test -n "${functions[__z_dirs_comp]+x}"
    assert $state equals 0
}

@test 'fn zpwrScriptToPDF defined in darwin' {
    run test -n "${functions[zpwrScriptToPDF]+x}"
    assert $state equals 0
}

@test 'fn _commandExists defined in comps' {
    run test -n "${functions[_commandExists]+x}"
    assert $state equals 0
}

@test 'fn _parameters defined in comp_utils' {
    run test -n "${functions[_parameters]+x}"
    assert $state equals 0
}

@test 'fn tailufw defined in linux' {
    run test -n "${functions[tailufw]+x}"
    assert $state equals 0
}

@test 'fn _fzf_complete_mvim defined in fzf' {
    run test -n "${functions[_fzf_complete_mvim]+x}"
    assert $state equals 0
}

@test 'fn _zpwrPrintMap defined in comps' {
    run test -n "${functions[_zpwrPrintMap]+x}"
    assert $state equals 0
}

@test 'fn ssd defined in systemctl' {
    run test -n "${functions[ssd]+x}"
    assert $state equals 0
}

@test 'fn _zpwrExists defined in comps' {
    run test -n "${functions[_zpwrExists]+x}"
    assert $state equals 0
}

@test 'fn db defined in darwin' {
    run test -n "${functions[db]+x}"
    assert $state equals 0
}

@test 'fn _complete_clipboard defined in comp_utils' {
    run test -n "${functions[_complete_clipboard]+x}"
    assert $state equals 0
}

@test 'fn _complete_hist defined in comp_utils' {
    run test -n "${functions[_complete_hist]+x}"
    assert $state equals 0
}
