#!/bin/bash

# Ask user to enter a filename
read -p "Enter the directoryname to check: " directoryname

# Check if the file exists
if [ -d "$directoryname" ]; then
  echo " '$directoryname' exists."
else
  echo " '$directoryname' does not exist."
fi

