#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Jul  7 11:20:08 EDT 2018
#####   Purpose: perl script to
#####   Notes:
#}}}***********************************************************

use feature qw/say/;

sub removeSpaces {
    if ( -d $_[0] ) {
        removeSpaces $_ for glob("$_[0]/* $_[0]/.[!.]*");
    }
    else {
        say "working on $_[0]";
        my $tmp = $_[0] . ".bak";
        rename $_[0], $tmp;
        open $in,  "<$tmp";
        open $out, ">$_[0]";
        while (<$in>) {
            $_ =~ s@\s+$@\n@g;
            $_ =~ s@\x20@ @g;
            $_ =~ s@^\s*\n$@@;

            #$_ =~ s@(\S)[\x20]{2,}@$1\x20@;
            $_ =~ s@\x09$@    @g;
            print $out $_;
        }

        unlink $tmp;
        close $in;
        close $out;
    }
}

removeSpaces $_ for @ARGV;

