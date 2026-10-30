#compdef minifySpaces.pl
# Source: script source ~/.zpwr/scripts/minifySpaces.pl

function _minifySpaces.pl(){

    local -a arguments

    arguments=(
        '*:file or directory:_files'
    )

    _arguments -s -S $arguments
}

_minifySpaces.pl "$@"
