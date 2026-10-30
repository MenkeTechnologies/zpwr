#compdef watchServiceFSWatchLS-ALH.sh
# Source: script source ~/.zpwr/scripts/watchServiceFSWatchLS-ALH.sh

function _watchServiceFSWatchLS-ALH.sh(){

    local -a arguments

    arguments=(
        '1:directory to watch:_files -/'
    )

    _arguments -s -S $arguments
}

_watchServiceFSWatchLS-ALH.sh "$@"
