#compdef sync.sh
# Source: script source ~/.zpwr/scripts/sync.sh

function _sync.sh(){

    local -a arguments

    arguments=(
        '1:source:_files'
        '2:destination:_files'
    )

    _arguments -s -S $arguments
}

_sync.sh "$@"
