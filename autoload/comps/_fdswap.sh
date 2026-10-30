#compdef fdswap.sh
# Source: script source ~/.zpwr/scripts/fdswap.sh

local -a arguments

arguments=(
  '1:old file:_files'
  '2:new file:_files'
  '*:pid:_pids'
)

_arguments -s -S $arguments
