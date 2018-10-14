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

sub addToAry {
    if (-d $_[0]) {
        for (glob("$_[0]/* $_[0]/.[!.]*")){
            addToAry($_);
        }
    } else {
    say "working on $_[0]";
        my $type = `file $_[0]`;
        if ($type =~ /text/) {
            my $out = `cat $_[0]`;
            if ($out =~ /\r/){
                say "\x1b[34m$_[0]\x1b[0m has got \x1b[34;1mcarriage returns!\x1b[0m";
                push @files, $_[0];
            }
        }
    }
}

addToAry $_ for @ARGV;

if (scalar @files > 0){
    say "";
    say "*"x80 for (0..2);
    say "";
    say "\x1b[34m$_\x1b[0m has got \x1b[34;1mcarriage returns!\x1b[0m" for @files;
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


