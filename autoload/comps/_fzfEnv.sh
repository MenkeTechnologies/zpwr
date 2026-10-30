#compdef fzfEnv.sh
# Source: script source ~/.zpwr/scripts/fzfEnv.sh

local -a arguments

arguments=(
  '1::preview mode:(plain reg)'
)

_arguments -s -S $arguments
