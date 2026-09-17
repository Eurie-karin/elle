#!/bin/bash

FILE="words.txt"
SCRIPT="script.py"

source ./venv/bin/activate

for line in $(cat "$FILE"); do
	if (echo "$line" | python "$SCRIPT") | grep "true"; then
		echo found: "$line"
		break
	fi	
done

