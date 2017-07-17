#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:11:11 EDT 2017
#####   Purpose: perl script to remove escape sequences
#####   Notes: 
#}}}***********************************************************
## uncolor — remove terminal escape sequences such as color changes
while (<>) {
s/ \e[ #%()*+\-.\/]. |
\r | # Remove extra carriage returns also
(?:\e\[|\x9b) [ -?]* [@-~] | # CSI ... Cmd
(?:\e\]|\x9d) .*? (?:\e\\|[\a\x9c]) | # OSC ... (ST|BEL)
(?:\e[P^_]|[\x90\x9e\x9f]) .*? (?:\e\\|\x9c) | # (DCS|PM|APC) ... ST
\e.|[\x80-\x9f] //xg;
1 while s/[^\b][\b]//g;  # remove all non-backspace followed by backspace
print;
}
