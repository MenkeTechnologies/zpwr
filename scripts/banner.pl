#!/usr/bin/env perl
use utf8;

$width = `tput cols`;
$date =`date`;
$str=<<'EOM';
                   .-, .--. ,-. .-..---. ,---.             ,---.  .-. .-.,-. .-.,---.
                   | |/ /\ \| |/ // .-. )| .-.\   |\    /| | .-'  |  \| || |/ / | .-'
                   | / /__\ \ | / | | |(_) |-' \  |(\  / | | `-.  |   | || | /  | `-.
                   | |  __  | | \ | | | || |--. \ (_)\/  | | .-'  | |\  || | \  | .-'
                (`-' | |  |)| |) \\ `-' /| |`-' / | \  / | |  `--.| | |)|| |) \ |  `--.
                 \_ )|_|  (_)((_)-')---' /( `--'  | |\/| | /( __.'/(  (_)|((_)-'/( __.'
                   (_)      (_)   (_)   (__)      '-'  '-'(__)   (__)    (_)   (__)
EOM

sub printD{
    print "\x{1215}" x ($width), "\n";
}

$widthHalf = $width / 4;

sub printDate{
    print "\x{1215}" x ($width), "\n";

    print " " x ($widthHalf);
    print "$date";
    print "\x{1215}" x ($width), "\n";

}
printD;
#print $str;
print `bash figletRandomFontOnce.sh MenkeTechnologies`;
printD;
printDate
