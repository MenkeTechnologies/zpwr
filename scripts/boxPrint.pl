#!/usr/bin/env perl
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Fri Nov 16 21:18:20 EST 2018
##### Purpose: perl script to print boxes around text
##### Notes:
#}}}***********************************************************

use strict;
use warnings;
use feature 'say';
use POSIX;

my $width = 70;
my $str = '';
my $boxColor = "\x1b[0;32;1m";
my $textColor="\x1b[0;34;4m";
my $resetColor="\x1b[0m";

if (scalar @ARGV > 0) {
    $str .= "$_ " for @ARGV;
} else {
    while (<STDIN>) {
        chomp $_;
        $ ~= s@\s+@ @g;
        $str .= $_;

    }
}

my $inputStringLength = length $str;

my $spacerLength = 2;
my $boxesChar = '/';
my $spaceChar = ' ';
my $sideCharacterLength = (($width - $inputStringLength - $spacerLength * 2) + 1) / 2;

my $proposedTextLength = $inputStringLength + $spacerLength * 2 + 4;
my $maxTextLength = $width - (($spacerLength * 2) + 4);

if ($proposedTextLength > $maxTextLength) {

    my $lineCounter = int($inputStringLength / $maxTextLength) + 1;
    my $charactersPerLine = int($inputStringLength / $lineCounter);
    my $numSideCharLength = int(int($width - $charactersPerLine - 4 )/2);

    # say STDOUT '___________$lineCounter = ' . $lineCounter . '___________';
    # say STDOUT '___________$charactersPerLine = ' . $charactersPerLine . '___________';
    # say STDOUT '___________$numSideCharLength = ' . $numSideCharLength . '___________';


    print "$boxColor";
    say $boxesChar x $width;

    for (my $i = 0; $i < $lineCounter; $i++) {

        my $startIndex = $charactersPerLine * $i;

        print $boxesChar x $numSideCharLength;
        print $spaceChar x $spacerLength;
        print "$textColor";

        print substr $str, $startIndex, $charactersPerLine;

        print $spaceChar x $spacerLength;
        print "$boxColor";
        print $boxesChar x $numSideCharLength;
        print "\n";
    }

    say $boxesChar x $width;

}
else {
    my $side2len = $sideCharacterLength;

    if ($inputStringLength % 2 == 1) {
        --$side2len;
    }

    print "$boxColor";
    say $boxesChar x $width;
    print $boxesChar x $sideCharacterLength;
    print $spaceChar x $spacerLength;
    print "$textColor";
    print $str;
    print "$boxColor";
    print $spaceChar x $spacerLength;
    say $boxesChar x $side2len;
    say $boxesChar x $width;

}

print "$resetColor";
