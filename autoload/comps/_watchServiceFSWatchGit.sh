#compdef watchServiceFSWatchGit.sh
# Source: script source ~/.zpwr/scripts/watchServiceFSWatchGit.sh

function _watchServiceFSWatchGit.sh(){

    local -a arguments

    arguments=(
        '1:directory to watch:_files -/'
    )

    _arguments -s -S $arguments
}

_watchServiceFSWatchGit.sh "$@"
