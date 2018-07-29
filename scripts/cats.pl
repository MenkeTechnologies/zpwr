#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Jun 20 11:37:12 EDT 2018
#####   Purpose: perl script to
#####   Notes:
#}}}***********************************************************

open $less, "|-","less -MN" or die $!;

use Env '@PATH';
my $exe = 'rougify';
my $exe_exists = grep -x "$_/$exe", @PATH;

select $less;
for (@ARGV) {
    if (! -d $_) {
        if ($exe_exists) {
            print "\x1b[4;1m$_\x1b[0m\n".`cat "$_" | rougify -t github - | cat -n`."\n";
        } else {
            print "\x1b[4;1m$_\x1b[0m\n".`cat -n "$_"`."\n";
        }
        
    }

}

close $less;



