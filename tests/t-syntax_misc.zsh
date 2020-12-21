#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Wed Jun  3 22:47:49 EDT 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

@setup {
    load "test_lib.zsh"
}

@test 'misc syntax banner' {
    run zpwrPrettyPrintBox "syntax json/yaml etc"
    assert $state equals 0
    assert "$output" is_not_empty
}

@test 'ZPWR_INSTALL/**/*.json syntax check' {
	for file in "$ZPWR_INSTALL/"**/*.json;do
        run python3 -m json.tool &>/dev/null < "$file"
        assert $state equals 0
    done
}

@test 'ZPWR_INSTALL/**/*.yml/yaml syntax check' {
	for file in "$ZPWR_INSTALL/"**/*.{yaml,yml};do
        run python3 -c 'import yaml, sys; yaml.safe_load(sys.stdin)' < "$file"
        assert $state equals 0
    done
}

