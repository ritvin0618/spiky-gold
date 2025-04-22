#!/bin/bash

# create a folder
mkdir my_folder

# create two files in the folder
cd my_folder

echo "This is my first shell_scripting"> my_file.txt
echo "This is my second shell_scripting"> another_file.txt

#Concatenate content from one file to another
cat another_file.txt>>my_file.txt

#Display the updated content
cat my_file.txt

#List all files and directories
ls -l
