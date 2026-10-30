#compdef inotifyWatchLogAndEmailIfNAS.sh
# Source: script source ~/.zpwr/scripts/inotifyWatchLogAndEmailIfNAS.sh

local -a arguments

arguments=(
  '1:log file to watch:_files'
)

_arguments -s -S $arguments
