#compdef fzfEnvCurrent.sh
# Source: script source ~/.zpwr/scripts/fzfEnvCurrent.sh

local -a arguments

arguments=(
  '1::preview mode:(plain reg)'
)

_arguments -s -S $arguments
