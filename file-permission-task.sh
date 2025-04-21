#!/bin/bash

# Create a file at /home/demo.txt
sudo touch /home/demo.txt

# Change permissions:
# - Owner: read, write, execute (7)
# - Group: read and write (6)
# - Others: read (4)
sudo chmod 764 /home/demo.txt

# Show the final permissions
ls -l /home/demo.txt

# make the script executable
chmod +x file-permission-task.sh
