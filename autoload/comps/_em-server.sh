#compdef em-server.sh
# Source: script source ~/.zpwr/scripts/em-server.sh

local -a arguments

arguments=(
  '*:file:_files'
)

_arguments -s -S $arguments
