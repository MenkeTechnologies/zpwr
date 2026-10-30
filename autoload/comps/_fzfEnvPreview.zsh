#compdef fzfEnvPreview.zsh
# Source: script source ~/.zpwr/scripts/fzfEnvPreview.zsh

local -a arguments

arguments=(
  '1:environment entry name:'
  '2::preview mode:(plain reg)'
  '3::entry source:(env verbs)'
)

_arguments -s -S $arguments
