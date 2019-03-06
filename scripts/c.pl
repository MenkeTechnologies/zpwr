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

open my $less, "|-","less" or die $!;

use Env '@PATH';
my $exe_bat = 'bat';
my $exe_bat_exists = grep -x "$_/$exe_bat", @PATH;

my $exe = 'pygmentize';
my $exe_exists = grep -x "$_/$exe", @PATH;

my $colorizer= $ENV{COLORIZER};
my $PYGMENTIZE_COLOR = $ENV{PYGMENTIZE_COLOR};
#expand $var
$PYGMENTIZE_COLOR=~ s/(\$\w+)/$1/eeg;

select $less;
for (@ARGV) {
    if (! -d $_) {
        if (`file "$_"` =~ /text/) {
            if ($colorizer=~ "pygmentize") {
                if ($exe_exists) {
                    print "\x1b[4;1m$_\x1b[0m\n".`$colorizer "$_" | cat -n`."\n";
                } else {
                    print "\x1b[4;1m$_\x1b[0m\n".`cat -n "$_"`."\n";
                }
            } else {
                if ($exe_bat_exists) {
                    print "\x1b[4;1m$_\x1b[0m\n".`$colorizer "$_"`."\n";
                } else {
                    print "\x1b[4;1m$_\x1b[0m\n".`cat -n "$_"`."\n";
                }
            
            }

        }
    }
}

close $less;



