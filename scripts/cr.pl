#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Jun 20 11:37:12 EDT 2018
#####   Purpose: perl script to
#####   Notes:
#}}}***********************************************************

#open $less, "|-","less -MN" or die $!;
use feature 'say';
#select $less;

my @files=();

for (@ARGV) {
    if (! -d $_) {
        my $type = `file $_`;
        if ($type =~ /text/) {
            my $out = `cat $_`;
            if ($out =~ /\r/){
                say "\x1b[34m$_\x1b[0m has got carriage returns!";
                push @files, $_;
            }
        }
    }
}

if (scalar @files > 0){
    print "Remove CR?\x1b[1;34m>\x1b[0m ";
    my $answer = <STDIN>;
    chomp $answer;
    if ($answer eq 'y') {
        `perl -i -pe 's#\r##g' "$_"` for @files;
    } else {
        say "bye";
    }
}


#close $less;


