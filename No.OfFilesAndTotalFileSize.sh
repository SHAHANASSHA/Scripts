#!/bin/bash
read -p "Enter the path of the directory: " directory
if [ -d $directory ]
then
	echo "Directory exist"

	file_count=$(find $directory -maxdepth 1 -type f -not -name ".*" |wc -l)
	file_size=$(find $directory -maxdepth 1 -type f -exec du -ch {} +|grep total|cut -f1)
	
	echo "Number of files in a directory:$file_count"
	echo "File size:$file_size"
else
	echo "No such directory"
fi 
