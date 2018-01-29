#!/bin/bash

COUNTER=0

RES=`ls -1 --file-type | grep -v '/$' | wc -l`

while [  $COUNTER -ne 1 ]; do
	echo "Please, guess number of files"
	read GSS
	if [ "$GSS" = "$RES" ]; then
		echo "Bravo!"
		let COUNTER=1
	elif [ "$GSS" -lt "$RES" ]; then
		echo "A little bit higher now..."
		echo "Try again!"
	else
		echo "A little bit lower now..."
		echo "Try again!"
	fi
done

echo "Great! Bye!!!"