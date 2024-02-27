#!/bin/bash

#ADD A USER

read -p "Enter the username: " username
read -p "Enter the gcoz: " gcoz
read -p "Enter the shell: " shell

if id "$username" &>/dev/null
then
	echo "User $username already exist!!"
else
	sudo useradd -c $gcoz -md /home/$username -s /bin/$shell "$username"
	sudo passwd "$username"
	echo "User $username added successfully!!"
fi

#EXIST OR NOT

read -p "Enter shell: " shell
if grep /bin/$shell /etc/passwd
then
	echo "User with shell $shell found!!"
else
	echo "User with shell $shell not found!!"
fi

#REMOVE A USER

read -p "Enter user to remove: " username
if id "$username" &>/dev/null
then
        sudo userdel -r "$username"
        echo "User $username removed successfully!!"
else
        echo "User $username not found!!"
fi



