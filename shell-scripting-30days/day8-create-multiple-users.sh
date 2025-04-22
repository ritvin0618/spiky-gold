#!/bin/bash

# Path to the file containing usernames
USER_FILE="username.txt"

# Check if the file exists
if [ ! -f "$USER_FILE" ]; then
  echo " '$USER_FILE' not found!"
  exit 1
fi

# Loop through each line (username) in the file
while IFS= read -r username; do
  # Skip empty lines
  if [ -n "$username" ]; then
    echo "Creating user: $username"
    sudo useradd "$username"
   
    # Optional: Set default password (VERY basic, not secure for production!)
     echo "$username:password123" | sudo chpasswd

    # Optional: Force password change on first login
     sudo passwd -e "$username"
  fi
done < "$USER_FILE"

echo " All users processed."

