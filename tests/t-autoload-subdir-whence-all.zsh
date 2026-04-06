#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test whence of all autoload subdir functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'whence nn resolves in darwin' {
    run whence nn
    assert $state equals 0
}

@test 'whence _megacomplete resolves in comp_utils' {
    run whence _megacomplete
    assert $state equals 0
}

@test 'whence _cl resolves in comps' {
    run whence _cl
    assert $state equals 0
}

@test 'whence _fzf_complete_zpwr resolves in fzf' {
    run whence _fzf_complete_zpwr
    assert $state equals 0
}

@test 'whence restartZabbixAgent resolves in systemctl' {
    run whence restartZabbixAgent
    assert $state equals 0
}

@test 'whence _complete_plus_last_command_args resolves in comp_utils' {
    run whence _complete_plus_last_command_args
    assert $state equals 0
}

@test 'whence _ssd resolves in comps' {
    run whence _ssd
    assert $state equals 0
}

@test 'whence zpwrAttachSetup resolves in linux' {
    run whence zpwrAttachSetup
    assert $state equals 0
}

@test 'whence _fzf_complete_killall resolves in fzf' {
    run whence _fzf_complete_killall
    assert $state equals 0
}

@test 'whence __zpwr_aliases resolves in comp_utils' {
    run whence __zpwr_aliases
    assert $state equals 0
}

@test 'whence _digs resolves in comps' {
    run whence _digs
    assert $state equals 0
}

@test 'whence zpwrDarwinBanner resolves in darwin' {
    run whence zpwrDarwinBanner
    assert $state equals 0
}

@test 'whence _fzf_complete_alias resolves in fzf' {
    run whence _fzf_complete_alias
    assert $state equals 0
}

@test 'whence exe resolves in darwin' {
    run whence exe
    assert $state equals 0
}

@test 'whence ssu resolves in systemctl' {
    run whence ssu
    assert $state equals 0
}

@test 'whence _zcommand resolves in comps' {
    run whence _zcommand
    assert $state equals 0
}

@test 'whence ___fzf_complete_printf_post resolves in fzf' {
    run whence ___fzf_complete_printf_post
    assert $state equals 0
}

@test 'whence _fzf_complete_c resolves in fzf' {
    run whence _fzf_complete_c
    assert $state equals 0
}

@test 'whence ___fzf_complete_git_post resolves in fzf' {
    run whence ___fzf_complete_git_post
    assert $state equals 0
}

@test 'whence zpwrLinuxBanner resolves in linux' {
    run whence zpwrLinuxBanner
    assert $state equals 0
}

@test 'whence _fzf_complete_f resolves in fzf' {
    run whence _fzf_complete_f
    assert $state equals 0
}

@test 'whence _ssu resolves in comps' {
    run whence _ssu
    assert $state equals 0
}

@test 'whence _fzf_complete_echo resolves in fzf' {
    run whence _fzf_complete_echo
    assert $state equals 0
}

@test 'whence __fasd_dirs_comp resolves in comp_utils' {
    run whence __fasd_dirs_comp
    assert $state equals 0
}

@test 'whence __fasd_files_comp resolves in comp_utils' {
    run whence __fasd_files_comp
    assert $state equals 0
}

@test 'whence _dfimage resolves in comps' {
    run whence _dfimage
    assert $state equals 0
}

@test 'whence restart resolves in systemctl' {
    run whence restart
    assert $state equals 0
}

@test 'whence __zpwr_galiases resolves in comp_utils' {
    run whence __zpwr_galiases
    assert $state equals 0
}

@test 'whence _command_names resolves in comp_utils' {
    run whence _command_names
    assert $state equals 0
}

@test 'whence ___fzf_complete_zpwr_post resolves in fzf' {
    run whence ___fzf_complete_zpwr_post
    assert $state equals 0
}

@test 'whence ___fzf_complete_r_post resolves in fzf' {
    run whence ___fzf_complete_r_post
    assert $state equals 0
}

@test 'whence _zcommand_mult resolves in comps' {
    run whence _zcommand_mult
    assert $state equals 0
}

@test 'whence _fzf_complete_nvim resolves in fzf' {
    run whence _fzf_complete_nvim
    assert $state equals 0
}

@test 'whence _fzf_complete_emacsclient resolves in fzf' {
    run whence _fzf_complete_emacsclient
    assert $state equals 0
}

@test 'whence zpwrLinuxPlugins resolves in linux' {
    run whence zpwrLinuxPlugins
    assert $state equals 0
}

@test 'whence scriptToPDF resolves in linux' {
    run whence scriptToPDF
    assert $state equals 0
}

@test 'whence _fzf_complete_r resolves in fzf' {
    run whence _fzf_complete_r
    assert $state equals 0
}

@test 'whence _fzf_complete_git resolves in fzf' {
    run whence _fzf_complete_git
    assert $state equals 0
}

@test 'whence _c resolves in comps' {
    run whence _c
    assert $state equals 0
}

@test 'whence _fzf_complete_emacs resolves in fzf' {
    run whence _fzf_complete_emacs
    assert $state equals 0
}

@test 'whence _f resolves in comps' {
    run whence _f
    assert $state equals 0
}

@test 'whence _fzf_complete_z resolves in fzf' {
    run whence _fzf_complete_z
    assert $state equals 0
}

@test 'whence _fzf_complete_printf resolves in fzf' {
    run whence _fzf_complete_printf
    assert $state equals 0
}

@test 'whence _fzf_complete_vim resolves in fzf' {
    run whence _fzf_complete_vim
    assert $state equals 0
}

@test 'whence _zpwr resolves in comps' {
    run whence _zpwr
    assert $state equals 0
}

@test 'whence ___fzf_complete_echo_post resolves in fzf' {
    run whence ___fzf_complete_echo_post
    assert $state equals 0
}

@test 'whence _p resolves in comps' {
    run whence _p
    assert $state equals 0
}

@test 'whence db2 resolves in darwin' {
    run whence db2
    assert $state equals 0
}

@test 'whence _r resolves in comps' {
    run whence _r
    assert $state equals 0
}

@test 'whence _files resolves in comp_utils' {
    run whence _files
    assert $state equals 0
}

@test 'whence _fzf_complete_clearList resolves in fzf' {
    run whence _fzf_complete_clearList
    assert $state equals 0
}

@test 'whence __z_dirs_comp resolves in comp_utils' {
    run whence __z_dirs_comp
    assert $state equals 0
}

@test 'whence zpwrScriptToPDF resolves in darwin' {
    run whence zpwrScriptToPDF
    assert $state equals 0
}

@test 'whence _commandExists resolves in comps' {
    run whence _commandExists
    assert $state equals 0
}

@test 'whence _parameters resolves in comp_utils' {
    run whence _parameters
    assert $state equals 0
}

@test 'whence tailufw resolves in linux' {
    run whence tailufw
    assert $state equals 0
}

@test 'whence _fzf_complete_mvim resolves in fzf' {
    run whence _fzf_complete_mvim
    assert $state equals 0
}

@test 'whence _zpwrPrintMap resolves in comps' {
    run whence _zpwrPrintMap
    assert $state equals 0
}

@test 'whence ssd resolves in systemctl' {
    run whence ssd
    assert $state equals 0
}

@test 'whence _zpwrExists resolves in comps' {
    run whence _zpwrExists
    assert $state equals 0
}

@test 'whence db resolves in darwin' {
    run whence db
    assert $state equals 0
}

@test 'whence _complete_clipboard resolves in comp_utils' {
    run whence _complete_clipboard
    assert $state equals 0
}

@test 'whence _complete_hist resolves in comp_utils' {
    run whence _complete_hist
    assert $state equals 0
}
