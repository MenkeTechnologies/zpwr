#compdef gitRemoteRepoInformation.sh
# Source: script source ~/.zpwr/scripts/gitRemoteRepoInformation.sh

local -a arguments

arguments=(
  '*:git repository directory:_files -/'
)

_arguments -s -S $arguments
