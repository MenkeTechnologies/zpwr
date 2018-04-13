#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Mon Jul 10 19:35:57 EDT 2017
#####   Purpose: bash script to compile rust file on file change
#####   Notes:
#}}}***********************************************************
#example usage = bash "$SCRIPTS/watchServiceFSWatchRustCompile.sh" . "untitled.rs"
dir_watching="$1"
while read -d "" event; do

	fileName=`basename $event`
	watchingFile=`basename $2`

	#ignored the intermediate files that are changing
	if [[ $fileName == $watchingFile ]]; then
		#grab error output
		output="$(rustc $2 2>&1)" && {
			#if successful compilation get compiled file name
			compiled=${fileName%*.rs}
			#clear screen to maintain
		    clear
		    #execute compiled file and then delete it
		    ./$compiled && rm $compiled
		} || {
			#we have and error in compilation so show the error
		    clear
			# echo "match @ $fileName"
		    echo "$output"
		}

	else
		:
		# echo "no match @ $fileName"
	fi

done < <(fswatch -r -0 -E "$dir_watching" -e "/\.." )
