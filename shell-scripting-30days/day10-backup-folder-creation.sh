#!/bin/bash

# Folder to back up
SOURCE_FOLDER="my_folder"

# Backup filename with date and time
BACKUP_FILE="another_file.txt_$(date +%F_%H-%M-%S).tar.gz"

# Create the backup
echo " Creating backup of '$SOURCE_FOLDER' into '$BACKUP_FILE'..."
tar -czvf "$BACKUP_FILE" "$SOURCE_FOLDER"

# 🎉 Done
echo " Backup completed: $BACKUP_FILE"


