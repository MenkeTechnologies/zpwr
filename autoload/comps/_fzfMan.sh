#compdef fzfMan.sh
# Source: script source ~/.zpwr/scripts/fzfMan.sh

local -a arguments

arguments=(
  '1:manual page:_command_names -e'
)

_arguments -s -S $arguments
