#!/usr/bin/bash

read -rp "which package? " package

if command -v "$package"; then 
	echo "package already installed"
	exit 0
else
	echo "package isn't installed do you want to install it? (y/n)"
	read -rp "" choice
	if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
		sudo apt install "$package"
		exit 0
	elif [ "$choice" = "N" ] || [ "$choice" = "n" ]; then
		echo "Bye"
		exit 0
	else
		echo "Please enter a valid option"
		exit 1
	fi
fi
