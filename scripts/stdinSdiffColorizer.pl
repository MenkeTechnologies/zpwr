#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Fri Jun 15 17:04:26 EDT 2018
#####   Purpose: bash script to
#####   Notes:
#}}}***********************************************************

my $num_args   = $#ARGV + 1;
my $numColumns = 0;
if ( $num_args == 1 ) {
    $numColumns = $ARGV[0];
}
else {
    $numColumns = `tput cols`;
    chomp $numColumns;
}

my $changeColor      = "41";
my $changeFormatting = "1;4";
my $insertColor      = "43";
my $insertFormatting = "1;4";
my $deleteColor      = "42";
my $deleteFormatting = "1;4";

open my $less, "|-", "less -M" or die "$!";
select $less;

my $numSpaces = int( ( $numColumns / 2 ) ) - length($file1);

print "\x20" x $numSpaces;

while (<STDIN>) {
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
