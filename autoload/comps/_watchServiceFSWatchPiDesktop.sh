#compdef watchServiceFSWatchPiDesktop.sh
# Source: script source ~/.zpwr/scripts/watchServiceFSWatchPiDesktop.sh

function _watchServiceFSWatchPiDesktop.sh(){

    local -a arguments

    arguments=(
        '1:directory to watch:_files -/'
    )

    _arguments -s -S $arguments
}

_watchServiceFSWatchPiDesktop.sh "$@"
