#!/bin/bash
read -p "Enter the path of the file: " file
if test -f $file
then
	echo "File exists!!"
	getfacl $file
	echo "Do you want to change file permission?" permission
	read -p "permission= "
	if permission="yes"
	read -p "user: " user
	read -p "group: " group
	read -p "other: " other
permission="${user}${group}${other}"
        chmod $permisssion $file
	echo "Permission changed to $permission"
else
	echo "No changes"
	fi
	getfacl $file





