#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test body of all autoload subdir functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'fn nn body non-empty in darwin' {
    run functions nn
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _megacomplete body non-empty in comp_utils' {
    run functions _megacomplete
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _cl body non-empty in comps' {
    run functions _cl
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_zpwr body non-empty in fzf' {
    run functions _fzf_complete_zpwr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn restartZabbixAgent body non-empty in systemctl' {
    run functions restartZabbixAgent
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _complete_plus_last_command_args body non-empty in comp_utils' {
    run functions _complete_plus_last_command_args
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _ssd body non-empty in comps' {
    run functions _ssd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrAttachSetup body non-empty in linux' {
    run functions zpwrAttachSetup
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_killall body non-empty in fzf' {
    run functions _fzf_complete_killall
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn __zpwr_aliases body non-empty in comp_utils' {
    run functions __zpwr_aliases
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _digs body non-empty in comps' {
    run functions _digs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrDarwinBanner body non-empty in darwin' {
    run functions zpwrDarwinBanner
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_alias body non-empty in fzf' {
    run functions _fzf_complete_alias
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn exe body non-empty in darwin' {
    run functions exe
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ssu body non-empty in systemctl' {
    run functions ssu
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _zcommand body non-empty in comps' {
    run functions _zcommand
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ___fzf_complete_printf_post body non-empty in fzf' {
    run functions ___fzf_complete_printf_post
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_c body non-empty in fzf' {
    run functions _fzf_complete_c
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ___fzf_complete_git_post body non-empty in fzf' {
    run functions ___fzf_complete_git_post
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLinuxBanner body non-empty in linux' {
    run functions zpwrLinuxBanner
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_f body non-empty in fzf' {
    run functions _fzf_complete_f
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _ssu body non-empty in comps' {
    run functions _ssu
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_echo body non-empty in fzf' {
    run functions _fzf_complete_echo
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn __fasd_dirs_comp body non-empty in comp_utils' {
    run functions __fasd_dirs_comp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn __fasd_files_comp body non-empty in comp_utils' {
    run functions __fasd_files_comp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _dfimage body non-empty in comps' {
    run functions _dfimage
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn restart body non-empty in systemctl' {
    run functions restart
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn __zpwr_galiases body non-empty in comp_utils' {
    run functions __zpwr_galiases
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _command_names body non-empty in comp_utils' {
    run functions _command_names
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ___fzf_complete_zpwr_post body non-empty in fzf' {
    run functions ___fzf_complete_zpwr_post
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ___fzf_complete_r_post body non-empty in fzf' {
    run functions ___fzf_complete_r_post
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _zcommand_mult body non-empty in comps' {
    run functions _zcommand_mult
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_nvim body non-empty in fzf' {
    run functions _fzf_complete_nvim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_emacsclient body non-empty in fzf' {
    run functions _fzf_complete_emacsclient
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrLinuxPlugins body non-empty in linux' {
    run functions zpwrLinuxPlugins
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn scriptToPDF body non-empty in linux' {
    run functions scriptToPDF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_r body non-empty in fzf' {
    run functions _fzf_complete_r
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_git body non-empty in fzf' {
    run functions _fzf_complete_git
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _c body non-empty in comps' {
    run functions _c
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_emacs body non-empty in fzf' {
    run functions _fzf_complete_emacs
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _f body non-empty in comps' {
    run functions _f
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_z body non-empty in fzf' {
    run functions _fzf_complete_z
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_printf body non-empty in fzf' {
    run functions _fzf_complete_printf
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_vim body non-empty in fzf' {
    run functions _fzf_complete_vim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _zpwr body non-empty in comps' {
    run functions _zpwr
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ___fzf_complete_echo_post body non-empty in fzf' {
    run functions ___fzf_complete_echo_post
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _p body non-empty in comps' {
    run functions _p
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn db2 body non-empty in darwin' {
    run functions db2
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _r body non-empty in comps' {
    run functions _r
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _files body non-empty in comp_utils' {
    run functions _files
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_clearList body non-empty in fzf' {
    run functions _fzf_complete_clearList
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn __z_dirs_comp body non-empty in comp_utils' {
    run functions __z_dirs_comp
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn zpwrScriptToPDF body non-empty in darwin' {
    run functions zpwrScriptToPDF
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _commandExists body non-empty in comps' {
    run functions _commandExists
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _parameters body non-empty in comp_utils' {
    run functions _parameters
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn tailufw body non-empty in linux' {
    run functions tailufw
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _fzf_complete_mvim body non-empty in fzf' {
    run functions _fzf_complete_mvim
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _zpwrPrintMap body non-empty in comps' {
    run functions _zpwrPrintMap
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn ssd body non-empty in systemctl' {
    run functions ssd
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _zpwrExists body non-empty in comps' {
    run functions _zpwrExists
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn db body non-empty in darwin' {
    run functions db
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _complete_clipboard body non-empty in comp_utils' {
    run functions _complete_clipboard
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'fn _complete_hist body non-empty in comp_utils' {
    run functions _complete_hist
    assert $state equals 0
    assert "$output" is_not_empty
}
