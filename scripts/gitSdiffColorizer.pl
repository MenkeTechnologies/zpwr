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

print "\x1b[1;4mStatus\x1b[0m\n";
print `git status`;

open my $fh,
"git difftool -y -x 'printf \"\\x1b[1;4m\$REMOTE\\x1b[0m\\n\";sdiff --expand-tabs -w '$numColumns HEAD * | cat -n | ";

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
s@(^.*\s\|[ ]{1,2}.*$)@(\x1b[$changeColor;$changeFormatting;37m$1\x1b[0m)@g;
        $_ =~
s@(^.*\s>[ ]{1,2}.*$)@-(\x1b[$insertColor;$insertFormatting;37m$1\x1b[0m)@g;
        $_ =~
s@(^.*\s<[ ]{1,2}.*$)@-(\x1b[$deleteColor;$deleteFormatting;37m$1\x1b[0m)@g;
    }
    else {
        $_ =~
s@(^.*[ ]{2,}\|[ ]+.*$)@\x1b[$changeColor;$changeFormatting;37m$1\x1b[0m@g;
        $_ =~
s@(^.*[ ]{15,}\>.*$)@\x1b[$insertColor;$insertFormatting;37m$1\x1b[0m@g;
        $_ =~ s@(^.*\<[ ]+$)@\x1b[$deleteColor;$deleteFormatting;37m$1\x1b[0m@g;
    }

    print $_;
}
