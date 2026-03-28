#!/bin/bash
# Script 2: Package Checker

PACKAGE="git"

echo "Checking for $PACKAGE..."

if command -v $PACKAGE >/dev/null 2>&1; then
 echo "$PACKAGE is installed on this system."
 VERSION=$($PACKAGE --version)
 echo "Version: $VERSION"
else
 echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
 git) echo "Git helps developers manage code efficiently." ;;
 firefox) echo "Firefox is a popular open-source browser." ;;
 vlc) echo "VLC plays almost all types of media." ;;
 mysql) echo "MySQL is used to manage databases." ;;
 *) echo "Package not recognized" ;;
esac