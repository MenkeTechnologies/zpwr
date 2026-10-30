#compdef zpwrRunner.sh
# Source: script source ~/.zpwr/scripts/zpwrRunner.sh

function _zpwrRunner.sh(){

    local -a arguments

    arguments=(
        '1:file to run:_files'
    )

    _arguments -s -S $arguments
}

_zpwrRunner.sh "$@"
