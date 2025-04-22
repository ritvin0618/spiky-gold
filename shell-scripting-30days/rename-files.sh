#!/bin/bash

# Loop through all matching files
for file in day*-*.sh; do
  # Extract the day number (between 'day' and first '-')
  day_number=$(echo "$file" | grep -oP '^day\K[0-9]+')

  # If day number is less than 10 and filename doesn't already have 2 digits
  if [ "$day_number" -lt 10 ]; then
    # Build the new filename (prefix 0 before day number)
    new_file=$(echo "$file" | sed -E "s/^day${day_number}-/day0${day_number}-/")
    
    # Rename the file
    echo "Renaming '$file' -> '$new_file'"
    mv "$file" "$new_file"
  fi
done

echo "✅ All files renamed!"

