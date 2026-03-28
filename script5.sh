#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer a few questions..."

read -p "Favorite open-source tool: " TOOL
read -p "Meaning of freedom (one word): " FREEDOM
read -p "What will you build? " BUILD

DATE=$(date)
FILE="my_manifesto.txt"

echo "On $DATE, I believe in open source." > $FILE
echo "I use $TOOL and value $FREEDOM." >> $FILE
echo "I will create $BUILD and share it freely." >> $FILE

echo "Your manifesto is saved in $FILE"
cat $FILE