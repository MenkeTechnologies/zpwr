#!/usr/bin/env zsh

echo deleting git modified _comps dups

while read f; do
    cmd=$(echo $f | cut -c2-)
   if [[ -n $_comps[$cmd] ]]; then
       echo remove $f
       rm $f
   else
       echo keeping $f
   fi 
done < <(git status -u | \grep _ | perl -pe 's@\s@@')

