#!/usr/bin/env bash

while true; do
    { {
        cat
        perl -E 'say "dogs are $_" foreach @INC' | tr a-z A-Z | figlet -f alligator
        cat
        cat | figlet
        whoami | toilet | figlet -f ntgreek
        echo $PATH
        cat
    } | cowsay -f daemon -W 120 | cowsay -f elephant-in-snake -W 150 | cowsay -f cheese -W 150 | cowsay -f dragon-and-cow -W 150; } | cowsay -f moofasa -W 150 | cowsay -f stegosaurus -W 150 | ponysay -W 150 | lolcat
    sleep 1
done
