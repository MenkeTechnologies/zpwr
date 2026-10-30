#compdef watchServiceFSWatchRustCompile.sh
# Source: script source ~/.zpwr/scripts/watchServiceFSWatchRustCompile.sh

function _watchServiceFSWatchRustCompile.sh(){

    local -a arguments

    arguments=(
        '1:directory to watch:_files -/'
        '2:rust source file to compile and run:_files -g "*.rs"'
    )

    _arguments -s -S $arguments
}

_watchServiceFSWatchRustCompile.sh "$@"
