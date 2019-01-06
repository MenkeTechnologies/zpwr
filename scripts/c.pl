#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Jun 20 11:37:12 EDT 2018
#####   Purpose: perl script to
#####   Notes:
#}}}***********************************************************

use warnings;
use strict;

open my $less, "|-","less -MNFX" or die $!;

use Env '@PATH';
my $exe = 'pygmentize';
my $exe_exists = grep -x "$_/$exe", @PATH;

select $less;
for (@ARGV) {
    if (! -d $_) {
        if (`file $_` =~ /text/) {
            if ($exe_exists) {
                print "\x1b[4;1m$_\x1b[0m\n".`pygmentize -g "$_" | cat -n`."\n";
            } else {
                print "\x1b[4;1m$_\x1b[0m\n".`cat -n "$_"`."\n";
            }
        }
    }
}

close $less;



