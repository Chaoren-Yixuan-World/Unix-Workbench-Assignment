#!/usr/bin/env bash

directory=$(pwd)

echo "[Welcome to Guessing file numeber in the current directory: $directory]"

function ask {
	echo "Please guess the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
    if [[ $guess -lt $files ]] 
	then
	    echo "Your guess is too low."
	else
		echo "Your guess is too high."
    fi
	ask
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
