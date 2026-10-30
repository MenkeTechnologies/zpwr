#compdef transfer.sh
# Source: script source ~/.zpwr/scripts/transfer.sh

function _transfer.sh(){

    local -a arguments

    arguments=(
        '1:file to transfer:_files'
    )

    _arguments -s -S $arguments
}

_transfer.sh "$@"
