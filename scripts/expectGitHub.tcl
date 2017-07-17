#!/usr/bin/env expect
set pass "drmenke9"

set REPO_NAME_TO_CREATE [lindex $argv 0];

puts "so cool $REPO_NAME_TO_CREATE"

spawn /usr/bin/curl -u MenkeTechnologies https://api.github.com/user/repos -d '{"name":"dogs"}'

expect "Enter host password for user 'MenkeTechnologies':"
send "$pass\r"

expect eof
