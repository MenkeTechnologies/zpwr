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
use feature qw/say/;
use Env '@PATH';

open my $less, "|-", "less" or die $!;

my $exe_bat        = 'bat';
my $exe_bat_exists = grep -x "$_/$exe_bat", @PATH;

my $exe        = 'pygmentize';
my $exe_exists = grep -x "$_/$exe", @PATH;

my $colorizer        = $ENV{ZPWR_COLORIZER};
my $PYGMENTIZE_COLOR = $ENV{ZPWR_PYGMENTIZE_COLOR};

#expand $var
$PYGMENTIZE_COLOR =~ s/(\$\w+)/$1/eeg;

select $less;
for (@ARGV) {
    if ( !-d ) {
        if ( `file "$_"` =~ /text/ ) {
            if ( $colorizer =~ "pygmentize" ) {
                say $exe_exists
                  ? "\x1b[4;1m$_\x1b[0m\n" . `$colorizer "$_" | cat -n`
                  : "\x1b[4;1m$_\x1b[0m\n" . `cat -n "$_"`;
            }
            else {
                say $exe_bat_exists
                  ? "\x1b[4;1m$_\x1b[0m\n" . `$colorizer "$_"`
                  : "\x1b[4;1m$_\x1b[0m\n" . `cat -n "$_"`;
            }

        }

    }
}

close $less;

