#compdef openAll.sh
# Source: script source ~/.zpwr/scripts/openAll.sh

function _openAll.sh(){

    local -a arguments

    arguments=(
        '1:file extension:'
        '2:directory to search (also matched as extension):_files -/'
        '*:file extension:'
    )

    _arguments -s -S $arguments
}

_openAll.sh "$@"
