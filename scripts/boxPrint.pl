#!/usr/bin/env perl
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Nov 16 21:18:20 EST 2018
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************

use strict;
use warnings;

use feature 'say';

my $width = 70;
my $str = $ARGV[0];
my $len = length $str;
my $spacerlen = 2;
my $boxesChar = '/';
my $spaceChar = ' ';
my $sidelen = (($width - $len - $spacerlen * 2) + 1) / 2;

my $proposedTextLength = $len + $spacerlen * 2 + 4;

if ($proposedTextLength > $width) {

    say "too long at $len";
    say "max text length is $proposedTextLength";

    my $lineCounter = 0;
    while ($len > $proposedTextLength) {
        $len /= 2;
        ++$lineCounter;
    }
    my $numchars = $len / $lineCounter;

    say $boxesChar x $width;

    for (my $i=0; $i<$lineCounter; $i++) {
        print $boxesChar x $sidelen;
        print $spaceChar x $spacerlen;
        # print $str[$numchars*$i..$numchars*($i+1)];
        print $str;
        print $spaceChar x $spacerlen;
    }

    say $boxesChar x $width;

} else {
    my $side2len = $sidelen;

    if ($len % 2 == 1) {
        --$side2len;
    }

    say $boxesChar x $width;
    print $boxesChar x $sidelen;
    print $spaceChar x $spacerlen;
    print $str;
    print $spaceChar x $spacerlen;
    say $boxesChar x $side2len;
    say $boxesChar x $width;

}

