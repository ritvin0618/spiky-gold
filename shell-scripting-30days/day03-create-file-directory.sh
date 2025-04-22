#!/bin/bash

#Define directory and file name
directory_name="myfolder"
file_name="my-file.txt"

#create directory if it does not exist
if [ ! -d "$directory_name" ]; then
	mkdir "$directory_name"
	echo "Directory '$directory_name' created."
else
	echo "Directory '$directory_name' already exsits."
fi

#Create the file inside the directory
echo "This is the file for shell-scripting-day3.">$file_name
echo "File '$file_name' created inside '$directory_name'."
