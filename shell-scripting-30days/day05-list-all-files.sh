#!/bin/bash

# Folder to list files from (change this to your path if needed)
TARGET_DIR="/home/vineeth/Dev/spiky-gold-practice"


# Move into the target directory
cd "$TARGET_DIR" || { echo "Failed to navigate to $TARGET_DIR"; exit 1; }


# Loop through all files
echo "Listing all files in $TARGET_DIR:"
for file in *; do
  if [ -f "$file" ]; then
    echo "$file"
  fi
done

