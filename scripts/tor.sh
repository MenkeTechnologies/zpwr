#!/usr/bin/env bash
#!/usr/bin/env bash
#created by JAKOBMENKE --> Fri May 19 00:16:00 EDT 2017 
INTERFACE=Wi-Fi

sudo -v

#keep sudo alive
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$"
    exit
done 2>/dev/null &

function disable_proxy() {
    sudo networksetup -setsocksfirewallproxystate "$INTERFACE" off
    echo "SOCKS proxy disabled."
}

trap disable_proxy INT

sudo networksetup -setsocksfirewallproxy "$INTERFACE" 127.0.0.1 9050 off
sudo networksetup -setsocksfirewallproxystate "$INTERFACE" on

echo "SOCKS proxy 127.0.0.1:9050 enabled."
echo "Starting Tor..."
tor
