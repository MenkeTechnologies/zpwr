#compdef memWatch.sh
# Source: script source ~/.zpwr/scripts/memWatch.sh

function _memWatch.sh(){

    local -a arguments

    arguments=(
        '1:used memory threshold in KiB (default 30000000):'
    )

    _arguments -s -S $arguments
}

_memWatch.sh "$@"
