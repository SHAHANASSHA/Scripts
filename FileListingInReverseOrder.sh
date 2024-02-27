#!/bin/bash
read -p "Enter the path for the file: " directory
if [ -d $directory ]
then
	echo "Directory exist"
        files=$(find $directory -maxdepth 1 -type f ! -path '*/.*'|sort -r)
	echo "The files are:$files"
else
	echo "No such Directory"
fi

