#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Mar 30 00:00:00 EST 2026
##### Purpose: zsh script to test wordtype of all autoload subdir functions
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'whence -w nn is function in darwin' {
    run whence -w nn
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _megacomplete is function in comp_utils' {
    run whence -w _megacomplete
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _cl is function in comps' {
    run whence -w _cl
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_zpwr is function in fzf' {
    run whence -w _fzf_complete_zpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w restartZabbixAgent is function in systemctl' {
    run whence -w restartZabbixAgent
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _complete_plus_last_command_args is function in comp_utils' {
    run whence -w _complete_plus_last_command_args
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _ssd is function in comps' {
    run whence -w _ssd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrAttachSetup is function in linux' {
    run whence -w zpwrAttachSetup
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_killall is function in fzf' {
    run whence -w _fzf_complete_killall
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w __zpwr_aliases is function in comp_utils' {
    run whence -w __zpwr_aliases
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _digs is function in comps' {
    run whence -w _digs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrDarwinBanner is function in darwin' {
    run whence -w zpwrDarwinBanner
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_alias is function in fzf' {
    run whence -w _fzf_complete_alias
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w exe is function in darwin' {
    run whence -w exe
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ssu is function in systemctl' {
    run whence -w ssu
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _zcommand is function in comps' {
    run whence -w _zcommand
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ___fzf_complete_printf_post is function in fzf' {
    run whence -w ___fzf_complete_printf_post
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_c is function in fzf' {
    run whence -w _fzf_complete_c
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ___fzf_complete_git_post is function in fzf' {
    run whence -w ___fzf_complete_git_post
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLinuxBanner is function in linux' {
    run whence -w zpwrLinuxBanner
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_f is function in fzf' {
    run whence -w _fzf_complete_f
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _ssu is function in comps' {
    run whence -w _ssu
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_echo is function in fzf' {
    run whence -w _fzf_complete_echo
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w __fasd_dirs_comp is function in comp_utils' {
    run whence -w __fasd_dirs_comp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w __fasd_files_comp is function in comp_utils' {
    run whence -w __fasd_files_comp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _dfimage is function in comps' {
    run whence -w _dfimage
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w restart is function in systemctl' {
    run whence -w restart
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w __zpwr_galiases is function in comp_utils' {
    run whence -w __zpwr_galiases
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _command_names is function in comp_utils' {
    run whence -w _command_names
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ___fzf_complete_zpwr_post is function in fzf' {
    run whence -w ___fzf_complete_zpwr_post
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ___fzf_complete_r_post is function in fzf' {
    run whence -w ___fzf_complete_r_post
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _zcommand_mult is function in comps' {
    run whence -w _zcommand_mult
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_nvim is function in fzf' {
    run whence -w _fzf_complete_nvim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_emacsclient is function in fzf' {
    run whence -w _fzf_complete_emacsclient
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrLinuxPlugins is function in linux' {
    run whence -w zpwrLinuxPlugins
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w scriptToPDF is function in linux' {
    run whence -w scriptToPDF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_r is function in fzf' {
    run whence -w _fzf_complete_r
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_git is function in fzf' {
    run whence -w _fzf_complete_git
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _c is function in comps' {
    run whence -w _c
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_emacs is function in fzf' {
    run whence -w _fzf_complete_emacs
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _f is function in comps' {
    run whence -w _f
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_z is function in fzf' {
    run whence -w _fzf_complete_z
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_printf is function in fzf' {
    run whence -w _fzf_complete_printf
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_vim is function in fzf' {
    run whence -w _fzf_complete_vim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _zpwr is function in comps' {
    run whence -w _zpwr
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ___fzf_complete_echo_post is function in fzf' {
    run whence -w ___fzf_complete_echo_post
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _p is function in comps' {
    run whence -w _p
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w db2 is function in darwin' {
    run whence -w db2
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _r is function in comps' {
    run whence -w _r
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _files is function in comp_utils' {
    run whence -w _files
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_clearList is function in fzf' {
    run whence -w _fzf_complete_clearList
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w __z_dirs_comp is function in comp_utils' {
    run whence -w __z_dirs_comp
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w zpwrScriptToPDF is function in darwin' {
    run whence -w zpwrScriptToPDF
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _commandExists is function in comps' {
    run whence -w _commandExists
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _parameters is function in comp_utils' {
    run whence -w _parameters
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w tailufw is function in linux' {
    run whence -w tailufw
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _fzf_complete_mvim is function in fzf' {
    run whence -w _fzf_complete_mvim
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _zpwrPrintMap is function in comps' {
    run whence -w _zpwrPrintMap
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w ssd is function in systemctl' {
    run whence -w ssd
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _zpwrExists is function in comps' {
    run whence -w _zpwrExists
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w db is function in darwin' {
    run whence -w db
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _complete_clipboard is function in comp_utils' {
    run whence -w _complete_clipboard
    assert $state equals 0
    assert "$output" contains function
}

@test 'whence -w _complete_hist is function in comp_utils' {
    run whence -w _complete_hist
    assert $state equals 0
    assert "$output" contains function
}
