#!/bin/bash
# Script 3: Directory Checker

FOLDERS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Checking important system directories..."
echo "--------------------------------------"

for FOLDER in "${FOLDERS[@]}"
do
 if [ -d "$FOLDER" ]; then
 SIZE=$(du -sh $FOLDER 2>/dev/null | cut -f1)
 PERM=$(ls -ld $FOLDER | awk '{print $1}')
 echo "$FOLDER exists | Size: $SIZE | Permissions: $PERM"
 else
 echo "$FOLDER does not exist"
 fi
done