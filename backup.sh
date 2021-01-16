#!/bin/bash

SOURCE=/home/zigz/Mylearning/Ansible

if [ $# -ne 1 ]; then
	echo "One Argument Need"
	exit 1
fi

DESTINATION=$1
if [[ $DESTINATION != */backup ]]; then
	echo "Wrong destination"
else
	DATE=$(date +%Y-%m-%d_%H_%M_%S)
	mkdir -p $DESTINATION/$DATE
	cp $SOURCE/*.pdf $DESTINATION/$DATE
	if [ $? -eq 0 ]; then
		echo "Backup Success"
	else
		echo "Backup Failed"
	fi
fi
