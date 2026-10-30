#compdef boiler_gen.py
# Source: script source ~/.zpwr/scripts/boiler_gen.py

local -a arguments

arguments=(
  '1:framework:(spring s spr sp react r re rea)'
  '*:: :->rest'
)

_arguments -s -S $arguments && return

case $words[1] in
  (spring|s|spr|sp)
    if (( CURRENT == 2 )); then
      _message 'java package'
    else
      _message 'entity name'
    fi
    ;;
  (react|r|re|rea)
    _message 'component name'
    ;;
esac
