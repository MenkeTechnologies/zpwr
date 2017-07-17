#!/usr/bin/env expect
# spawn passwd jacob
# set password "jacob"
# expect "password:"
# send "$password\r"
# expect "password:"
# send "$password\r"
# expect eof

spawn sudo cpan -u
set password "drmenke9"
expect "Password:"
send "$password\r"
# expect "$ "
# send "cpan -l\r"
expect eof
