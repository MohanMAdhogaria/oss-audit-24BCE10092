#!/bin/bash
# Script 4: Log Checker

FILE=$1
WORD=${2:-"error"}
COUNT=0

if [ ! -f "$FILE" ]; then
 echo "File not found!"
 exit 1
fi

while read LINE
do
 if echo "$LINE" | grep -iq "$WORD"; then
 COUNT=$((COUNT+1))
 fi
done < "$FILE"

echo "The word '$WORD' appeared $COUNT times."

echo "Last 5 matching lines:"
grep -i "$WORD" "$FILE" | tail -5