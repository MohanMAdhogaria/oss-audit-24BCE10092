#!/bin/bash
# Script 1: System Identity Report

NAME="Mohan Madhogaria"
PROJECT="OSS Audit Project"

KERNEL=$(uname -r)
USER=$(whoami)
UPTIME="Not available on this system"
DATE=$(date)

echo "----------------------------------"
echo " Welcome to $PROJECT"
echo " Student: $NAME"
echo "----------------------------------"
echo "Logged in user: $USER"
echo "Kernel version: $KERNEL"
echo "System uptime: $UPTIME"
echo "Current date: $DATE"
echo "This system uses open-source Linux (GPL License)"