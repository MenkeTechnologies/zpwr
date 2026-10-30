#compdef tailZOU.sh
# Source: script source ~/.zpwr/scripts/tailZOU.sh

function _tailZOU.sh(){

    local -a arguments

    arguments=(
        '1:number of lines (default 100):'
        '2:colorize output:(yes no)'
        '3:restart ufw ovpn zabbix-agent first:(yes no)'
    )

    _arguments -s -S $arguments
}

_tailZOU.sh "$@"
