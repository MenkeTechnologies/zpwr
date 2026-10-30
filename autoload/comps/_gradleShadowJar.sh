#compdef gradleShadowJar.sh
# Source: script source ~/.zpwr/scripts/macOnly/gradleShadowJar.sh

local -a arguments

arguments=(
  '1:project name:_files -/ -W $HOME/IdeaProjects'
)

_arguments -s -S $arguments
