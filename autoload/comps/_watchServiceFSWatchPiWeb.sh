#compdef watchServiceFSWatchPiWeb.sh
# Source: script source ~/.zpwr/scripts/watchServiceFSWatchPiWeb.sh

function _watchServiceFSWatchPiWeb.sh(){

    local -a arguments

    arguments=(
        '1:directory to watch:_files -/'
    )

    _arguments -s -S $arguments
}

_watchServiceFSWatchPiWeb.sh "$@"
