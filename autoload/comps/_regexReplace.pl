#compdef regexReplace.pl
# Source: script source ~/.zpwr/scripts/regexReplace.pl

function _regexReplace.pl(){

    local -a arguments

    arguments=(
        '(- *)'{-h,--help}'[show usage and exit]'
        '--regex=[regex to replace (default carriage return)]:regex:'
        '--replacement=[string to replace regex with (default empty)]:replacement string:'
        '*:file or directory:_files'
    )

    _arguments -s -S $arguments
}

_regexReplace.pl "$@"
