#!/usr/bin/env perl
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Wed Jun 20 11:37:12 EDT 2018
#####   Purpose: perl script to remove carriage returns
#####   Notes: works recursively
#}}}***********************************************************

use feature 'say';

my @files=();

sub addToAry {
    if (-d $_[0]) {
        if ($_[0] =~ /\.git/) {
            return;
        }
        for (glob("$_[0]/* $_[0]/.[!.]*")){
            addToAry($_);
        }
    } else {
    say "<<<($_[0])>>>";
        my $type = `file $_[0]`;
        if ($type =~ /text/) {
            my $out = `cat $_[0]`;
            if ($out =~ /\r/){
                say "\x1b[34;1m<<<(\x1b[0;34m$_[0]\x1b[0m has got \x1b[34mcarriage returns!\x1b[0;34;1m)>>>\x1b[0m";
                push @files, $_[0];
            }
        }
    }
}

addToAry $_ for @ARGV;
my $length = scalar @files;

if ($length > 0){
    #open $less, "|-","less -MN" or die $!;
    #select $less;
    say "";
    say "*"x80 for (0..2);
    say "";
    say "\x1b[34;1m<<<(\x1b[0;34m$_\x1b[0m has got \x1b[34mcarriage returns!\x1b[0;34;1m)>>>\x1b[0m" for @files;

    say "\x1b[34;1m<<<(\x1b[0;34m$length \x1b[0;34mfiles!\x1b[0;34;1m)>>>\x1b[0m";
    print "Remove CR?\x1b[1;34m>\x1b[0m ";
    my $answer = <STDIN>;
    chomp $answer;
    if ($answer =~ /y|yes/i) {
        `perl -i -pe 's#\r##g' "$_"` for @files;
    } else {
        say "bye";
    }
    #close $less;
}




