#!/usr/bin/env bash
#: created by JAKOBMENKE --> Thu Mar  2 17:26:28 EST 2017 

tput civis

cols=`tput cols`

printf "Starting..."

startCursor(){
  #cursor is invisible
  tput civis

  #startCursor in background
  displayProgress &
  #store its PID so can kill later
  progress_pid=$!
}

killCursor(){
  #kill cursor with PID store in startCursor
  kill $progress_pid
  #discard error message
  wait $progress_pid 2>/dev/null
  #restore prompt
  tput cnorm
}

displayProgress(){

local arr=(  '|' '\' '-' '/' )
local revarr=( '|' '/' '-' '\')

while [[ 1 ]]; do

	for i in {0..1}; do

		for k in "${arr[@]}"; do
			printf "$k"

			tput cub 1
			sleep 0.1
		done

	done

done

}

startCursor

trap 'killCursor; echo; exit' INT
###################
sleep 1
###################
killCursor
echo

#user gives the output directory 
read -p "What is the output directory: " destinationDirectory
read -p "What is the directory to search: " searchDirectory

if [[ ! -d $destinationDirectory ]]; then
	echo "Making $destinationDirectory ..."
	mkdir $destinationDirectory
fi

while read picture; do
	# echo "the picture is $picture"

	#pool all files into one destinationDirectory
	destinationFile=$destinationDirectory/${picture##*/}
	#file ending
	ending=${destinationFile##*.}

	# echo "the destination is $destinationFile"

	if [[ -e $destinationFile ]]; then
		echo "The file $destinationFile already exists....Creating duplicate"
		#add random number and timestap to duplicate files while maintaining file
		#ending to allow easy previewing of file
		cp $picture ${destinationFile}-`date +%s`$RANDOM.$ending
	else
		#unique file
		echo "Copying to $destinationDirectory"
		cp $picture $destinationFile
	fi

#find all jpeg, jpg and png files	
done < <(find $searchDirectory -iname "*png" -o -iname "*jpeg" -o -iname "*jpg")

exit 0
