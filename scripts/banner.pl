#!/usr/bin/env perl
use utf8;

use feature 'say';

my $width = 80;
my $date  = `date`;
my $str   = <<'EOM';
                   .-, .--. ,-. .-..---. ,---.             ,---.  .-. .-.,-. .-.,---.
                   | |/ /\ \| |/ // .-. )| .-.\   |\    /| | .-'  |  \| || |/ / | .-'
                   | / /__\ \ | / | | |(_) |-' \  |(\  / | | `-.  |   | || | /  | `-.
                   | |  __  | | \ | | | || |--. \ (_)\/  | | .-'  | |\  || | \  | .-'
                (`-' | |  |)| |) \\ `-' /| |`-' / | \  / | |  `--.| | |)|| |) \ |  `--.
                 \_ )|_|  (_)((_)-')---' /( `--'  | |\/| | /( __.'/(  (_)|((_)-'/( __.'
                   (_)      (_)   (_)   (__)      '-'  '-'(__)   (__)    (_)   (__
EOM

sub printD {
    say "\x{1215}" x $width;
}

my $widthHalf = $width / 4;

sub printDate {
    say "\x{1215}" x $width;
    print " " x $widthHalf;
    print "$date";
    say "\x{1215}" x $width;
}

printD;

#print $str;
print `bash figletRandomFontOnce.sh MenkeTechnologies`;
printD;
printDate
