#compdef tutorialConfigUpdater.sh
# Source: script source ~/.zpwr/scripts/macOnly/tutorialConfigUpdater.sh

function _tutorialConfigUpdater.sh(){

    local -a arguments

    arguments=(
        '1:commit message (default update):'
    )

    _arguments -s -S $arguments
}

_tutorialConfigUpdater.sh "$@"
