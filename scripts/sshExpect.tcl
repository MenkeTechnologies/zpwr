#!/usr/bin/env expect
set login "jmenke"
set addr "russet.wccnet.edu"
set pw "Drmenke9"
spawn ssh $login@$addr
expect "$login@$addr's password:"
send "$pw\r"
expect "#"
send "pwd;id;whoami\r"
expect eof
