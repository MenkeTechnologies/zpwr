#compdef eyes.sh
# Source: script source ~/.zpwr/scripts/eyes.sh

local -a arguments

arguments=(
  '1::figlet font:'
  '2::filter command:_command_names -e'
)

_arguments -s -S $arguments
