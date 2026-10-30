#compdef sdiffColorizer.pl
# Source: script source ~/.zpwr/scripts/sdiffColorizer.pl

function _sdiffColorizer.pl(){

    local -a arguments

    arguments=(
        '1:first file:_files'
        '2:second file:_files'
    )

    _arguments -s -S $arguments
}

_sdiffColorizer.pl "$@"
