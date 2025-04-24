#!/bin/bash

# URL to download
URL="https://example.com/sample.zip"

# Where to save the file
DESTINATION_DIR="$/home/vineeth/Dev/spiky-gold-practice/Neon"

# Check if destination directory exists, else create it
if [ ! -d "$DESTINATION_DIR" ]; then
  echo "Destination folder not found. Creating..."
  mkdir -p "$DESTINATION_DIR"
fi

# Download the file using wget
echo "Downloading file from $URL..."
wget -P "$DESTINATION_DIR" "$URL"

# Alternatively, you can use curl like this:
# echo " Downloading file from $URL with curl..."
# curl -o "$DESTINATION_DIR/sample.zip" "$URL"

# Done
echo "Download completed. Saved in $DESTINATION_DIR"

