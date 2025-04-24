#!/bin/bash

#  Define a function to greet a user
greet_user() {
  echo " Hello, $1! Welcome to the shell scripting world."
}

# List of users
users=("rocky" "sandy" "roman" "brock" "vineeth")

# Loop through each user and greet
for user in "${users[@]}"; do
  greet_user "$user"
done

# Define a function to show current system time
show_time() {
  echo " Current time is: $(date '+%Y-%m-%d %H:%M:%S')"
}

# Done
echo "All users greeted!"


