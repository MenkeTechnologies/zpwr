#compdef forDir.sh
# Source: script source ~/.zpwr/scripts/forDir.sh

local -a arguments

arguments=(
  '1:command to eval in each directory:'
  '*:directory:_files -/'
)

_arguments -s -S $arguments
