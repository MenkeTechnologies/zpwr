#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jun 15 17:04:26 EDT 2018
#####   Purpose: bash script to
#####   Notes:
#}}}***********************************************************

my $numColumns = `tput cols`;
chomp $numColumns;

my $changeColor      = "41";
my $changeFormatting = "1;4";
my $insertColor      = "43";
my $insertFormatting = "1;4";
my $deleteColor      = "42";
my $deleteFormatting = "1;4";

my $file1 = $ARGV[0];
my $file2 = $ARGV[1];

open my $less, "|-", "less -M" or die "$!";
select $less;

open my $fh, "sdiff --expand-tabs -w $numColumns $file1 $file2 | cat -n | ";

printf "\x1b[1;4m$file1\x1b[0m";

my $numSpaces = int( ( $numColumns / 2 ) ) - length($file1);

print "\x20" x $numSpaces;

printf "\x1b[1;4m$file2 \x1b[0m\n";

while (<$fh>) {
    my $length = length $_;
    if ( $length < $numColumns ) {
        $numspaces = $numColumns - $length;
        chomp $_;
        $_ = $_ . " " x $numspaces . "\n";
    }

    my $debug = 0;

    if ($debug) {
        $_ =~
s@(^.*\|[ ]{1,2}.*$)@(\x1b[$changeColor;$changeFormatting;37m$1\x1b[0m)@g;
        $_ =~
s@(^.*>[ ]{1,2}.*$)@-(\x1b[$insertColor;$insertFormatting;37m$1\x1b[0m)@g;
        $_ =~
s@(^.*<[ ]{1,2}.*$)@-(\x1b[$deleteColor;$deleteFormatting;37m$1\x1b[0m)@g;
    }
    else {
        $_ =~
s@(^.*\|[ ]{1,2}.*$)@\x1b[$changeColor;$changeFormatting;37m$1\x1b[0m@g;
        $_ =~
s@(^.*>[ ]{1,2}.*$)@\x1b[$insertColor;$insertFormatting;37m$1\x1b[0m@g;
        $_ =~
s@(^.*<[ ]{1,2}.*$)@\x1b[$deleteColor;$deleteFormatting;37m$1\x1b[0m@g;

    }

    print $_;
}

close $less;
