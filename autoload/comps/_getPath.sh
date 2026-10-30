#compdef getPath.sh
# Source: script source ~/.zpwr/scripts/macOnly/getPath.sh

local -a arguments

arguments=(
  '1:path:_files'
)

_arguments -s -S $arguments
