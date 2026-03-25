#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Mar 25 00:00:00 EST 2026
##### Purpose: zsh script to test non-common autoload functions in subdirs
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn db exists in darwin' {
    run type db
    assert $state equals 0
}

@test 'fn db2 exists in darwin' {
    run type db2
    assert $state equals 0
}

@test 'fn exe exists in darwin' {
    run type exe
    assert $state equals 0
}

@test 'fn nn exists in darwin' {
    run type nn
    assert $state equals 0
}

@test 'fn zpwrDarwinBanner exists in darwin' {
    run type zpwrDarwinBanner
    assert $state equals 0
}

@test 'fn zpwrScriptToPDF exists in darwin' {
    run type zpwrScriptToPDF
    assert $state equals 0
}

@test 'fn scriptToPDF exists in linux' {
    run type scriptToPDF
    assert $state equals 0
}

@test 'fn tailufw exists in linux' {
    run type tailufw
    assert $state equals 0
}

@test 'fn zpwrAttachSetup exists in linux' {
    run type zpwrAttachSetup
    assert $state equals 0
}

@test 'fn zpwrLinuxBanner exists in linux' {
    run type zpwrLinuxBanner
    assert $state equals 0
}

@test 'fn zpwrLinuxPlugins exists in linux' {
    run type zpwrLinuxPlugins
    assert $state equals 0
}

@test 'fn restart exists in systemctl' {
    run type restart
    assert $state equals 0
}

@test 'fn restartZabbixAgent exists in systemctl' {
    run type restartZabbixAgent
    assert $state equals 0
}

@test 'fn ssd exists in systemctl' {
    run type ssd
    assert $state equals 0
}

@test 'fn ssu exists in systemctl' {
    run type ssu
    assert $state equals 0
}

@test 'fn ___fzf_complete_echo_post exists in fzf' {
    run type ___fzf_complete_echo_post
    assert $state equals 0
}

@test 'fn ___fzf_complete_git_post exists in fzf' {
    run type ___fzf_complete_git_post
    assert $state equals 0
}

@test 'fn ___fzf_complete_printf_post exists in fzf' {
    run type ___fzf_complete_printf_post
    assert $state equals 0
}

@test 'fn ___fzf_complete_r_post exists in fzf' {
    run type ___fzf_complete_r_post
    assert $state equals 0
}

@test 'fn ___fzf_complete_zpwr_post exists in fzf' {
    run type ___fzf_complete_zpwr_post
    assert $state equals 0
}

@test 'fn _fzf_complete_alias exists in fzf' {
    run type _fzf_complete_alias
    assert $state equals 0
}

@test 'fn _fzf_complete_c exists in fzf' {
    run type _fzf_complete_c
    assert $state equals 0
}

@test 'fn _fzf_complete_clearList exists in fzf' {
    run type _fzf_complete_clearList
    assert $state equals 0
}

@test 'fn _fzf_complete_echo exists in fzf' {
    run type _fzf_complete_echo
    assert $state equals 0
}

@test 'fn _fzf_complete_emacs exists in fzf' {
    run type _fzf_complete_emacs
    assert $state equals 0
}

@test 'fn _fzf_complete_emacsclient exists in fzf' {
    run type _fzf_complete_emacsclient
    assert $state equals 0
}

@test 'fn _fzf_complete_f exists in fzf' {
    run type _fzf_complete_f
    assert $state equals 0
}

@test 'fn _fzf_complete_git exists in fzf' {
    run type _fzf_complete_git
    assert $state equals 0
}

@test 'fn _fzf_complete_killall exists in fzf' {
    run type _fzf_complete_killall
    assert $state equals 0
}

@test 'fn _fzf_complete_mvim exists in fzf' {
    run type _fzf_complete_mvim
    assert $state equals 0
}

@test 'fn _fzf_complete_nvim exists in fzf' {
    run type _fzf_complete_nvim
    assert $state equals 0
}

@test 'fn _fzf_complete_printf exists in fzf' {
    run type _fzf_complete_printf
    assert $state equals 0
}

@test 'fn _fzf_complete_r exists in fzf' {
    run type _fzf_complete_r
    assert $state equals 0
}

@test 'fn _fzf_complete_vim exists in fzf' {
    run type _fzf_complete_vim
    assert $state equals 0
}

@test 'fn _fzf_complete_z exists in fzf' {
    run type _fzf_complete_z
    assert $state equals 0
}

@test 'fn _fzf_complete_zpwr exists in fzf' {
    run type _fzf_complete_zpwr
    assert $state equals 0
}

@test 'fn __fasd_dirs_comp exists in comp_utils' {
    run type __fasd_dirs_comp
    assert $state equals 0
}

@test 'fn __fasd_files_comp exists in comp_utils' {
    run type __fasd_files_comp
    assert $state equals 0
}

@test 'fn __z_dirs_comp exists in comp_utils' {
    run type __z_dirs_comp
    assert $state equals 0
}

@test 'fn __zpwr_aliases exists in comp_utils' {
    run type __zpwr_aliases
    assert $state equals 0
}

@test 'fn __zpwr_galiases exists in comp_utils' {
    run type __zpwr_galiases
    assert $state equals 0
}

@test 'fn _command_names exists in comp_utils' {
    run type _command_names
    assert $state equals 0
}

@test 'fn _complete_clipboard exists in comp_utils' {
    run type _complete_clipboard
    assert $state equals 0
}

@test 'fn _complete_hist exists in comp_utils' {
    run type _complete_hist
    assert $state equals 0
}

@test 'fn _complete_plus_last_command_args exists in comp_utils' {
    run type _complete_plus_last_command_args
    assert $state equals 0
}

@test 'fn _files exists in comp_utils' {
    run type _files
    assert $state equals 0
}

@test 'fn _megacomplete exists in comp_utils' {
    run type _megacomplete
    assert $state equals 0
}

@test 'fn _parameters exists in comp_utils' {
    run type _parameters
    assert $state equals 0
}

@test 'fn _c exists in comps' {
    run type _c
    assert $state equals 0
}

@test 'fn _cl exists in comps' {
    run type _cl
    assert $state equals 0
}

@test 'fn _commandExists exists in comps' {
    run type _commandExists
    assert $state equals 0
}

@test 'fn _dfimage exists in comps' {
    run type _dfimage
    assert $state equals 0
}

@test 'fn _digs exists in comps' {
    run type _digs
    assert $state equals 0
}

@test 'fn _f exists in comps' {
    run type _f
    assert $state equals 0
}

@test 'fn _p exists in comps' {
    run type _p
    assert $state equals 0
}

@test 'fn _r exists in comps' {
    run type _r
    assert $state equals 0
}

@test 'fn _ssd exists in comps' {
    run type _ssd
    assert $state equals 0
}

@test 'fn _ssu exists in comps' {
    run type _ssu
    assert $state equals 0
}

@test 'fn _zcommand exists in comps' {
    run type _zcommand
    assert $state equals 0
}

@test 'fn _zcommand_mult exists in comps' {
    run type _zcommand_mult
    assert $state equals 0
}

@test 'fn _zpwr exists in comps' {
    run type _zpwr
    assert $state equals 0
}

@test 'fn _zpwrExists exists in comps' {
    run type _zpwrExists
    assert $state equals 0
}

@test 'fn _zpwrPrintMap exists in comps' {
    run type _zpwrPrintMap
    assert $state equals 0
}
