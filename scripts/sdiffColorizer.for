#!/usr/bin/env forge

my $numColumns = qx "tput cols"
$numColumns |> chomp
my ($changeColor, $insertColor, $deleteColor) = ("41", "43", "42")
my $fmt = "1;4"
my ($file1, $file2) = @ARGV[0, 1]
open(my $less, "|-", "less -M") or die $!
$less |> select
open(my $fh, "sdiff --expand-tabs -w ${numColumns} ${file1} ${file2} | cat -n |")

p "\e[1;4m${file1}\e[0m"
my $numSpaces = ($numColumns / 2 |> int) - ($file1 |> length)
p " " x $numSpaces
p "\e[1;4m${file2} \e[0m\n"

while (<$fh>) {
    my $len = $_ |> length
    if ($len < $numColumns) {
        chomp
        $_ .= " " x ($numColumns - $len) . "\n"
    }
    $_ =~ s/(^.*\|[ ]{1,2}.*$)/\e[${changeColor};${fmt};37m$1\e[0m/g
    $_ =~ s/(^.*>[ ]{1,2}.*$)/\e[${insertColor};${fmt};37m$1\e[0m/g
    $_ =~ s/(^.*<[ ]{1,2}.*$)/\e[${deleteColor};${fmt};37m$1\e[0m/g
    p
}

$less |> close
