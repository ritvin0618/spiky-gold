#!/bin/bash

# Folder to search in (you can change this)
SEARCH_PATH="/home/vineeth/Dev/spiky-gold-practice/shell-scripting-30days"

# Size threshold
SIZE_THRESHOLD="+200c"

echo "Searching for files larger than 100MB in '$SEARCH_PATH'..."

# Find and list large files
find "$SEARCH_PATH" -type f -size "$SIZE_THRESHOLD" -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'

echo " Search completed."

