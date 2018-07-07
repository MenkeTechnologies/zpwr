#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Jul  7 11:20:08 EDT 2018
#####   Purpose: perl script to
#####   Notes:
#}}}***********************************************************

use feature 'say';

sub removeSpaces {
    if (-d $_[0]) {
        #say "it a dir $_[0]";
        for (glob("$_[0]/* $_[0]/.[!.]*")){
            removeSpaces($_);
        }
    } else {
        say "working on $_[0]";
        my $tmp=$_[0].".bak";
        rename($_[0], $tmp);
        open($in, "<$_[0].bak");
        open($out, ">$_[0]");
        while (<$in>) {
            $_ =~ s@\s+$@\n@g;
            $_ =~ s@\x09$@    @g;
            $_ =~ s@\x20@ @g;
            $_ =~ s@^s*\n$@@;
            $_ =~ s@(\S)[\x20]{2,}@$1\x20@;
            print $out $_;
        }
        
        unlink($tmp);
        close($in);
        close($out);
    }
}

removeSpaces($_) for @ARGV;

