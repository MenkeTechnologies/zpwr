#compdef fsWatchLongRunning.sh
# Source: script source ~/.zpwr/scripts/fsWatchLongRunning.sh

local -a arguments

arguments=(
  '1:directory to watch:_files -/'
)

_arguments -s -S $arguments
