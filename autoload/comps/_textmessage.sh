#compdef textmessage.sh
# Source: script source ~/.zpwr/scripts/textmessage.sh

function _textmessage.sh(){

    local -a arguments

    arguments=(
        '1:subject:'
        '2:message body, or recipient when body is on stdin:'
        '3:recipient name, number or family:'
    )

    _arguments -s -S $arguments
}

_textmessage.sh "$@"
