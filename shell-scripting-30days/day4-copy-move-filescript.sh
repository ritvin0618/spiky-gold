#!/bin/bash

# Define directories (change these to your actual paths)
SOURCE_DIR="/home/vineeth/Dev/spiky-gold-practice/Demonic"
DEST_DIR="/home/vineeth/Dev/spiky-gold-practice/Trinity"


# Ensure source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
	echo "Source directory does not exsist!"
	exit 1
fi


# Copy files from source to destination
echo "Copying files from $SOURCE_DIR to $DEST_DIR..."
cp -v $SOURCE_DIR/* $DEST_DIR/
echo "Files copied successfully."


# Move files from source to destination (with renaming example)
echo "Moving files from $SOURCE_DIR to $DEST_DIR..."
mv -v $SOURCE_DIR/file1.txt $DEST_DIR/demo4.txt
echo "File moved and renamed successfully."


# Optional: Handle interactive overwrite
echo "Copying with interactive overwrite (ask before overwriting)..."
cp -iv $SOURCE_DIR/* $DEST_DIR/
echo "Copy operation completed."


# Optional: Copy directories recursively
echo "Copying directories recursively..."
cp -r $SOURCE_DIR/* $DEST_DIR/
echo "Directories copied successfully."
