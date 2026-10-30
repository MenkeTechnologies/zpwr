#compdef fzfGitOpts.sh
# Source: script source ~/.zpwr/scripts/fzfGitOpts.sh

local -a arguments

arguments=(
  '1:git revision to diff against:'
)

_arguments -s -S $arguments
