#!/bin/bash

#  List of websites to ping
WEBSITES=("google.com" "github.com" "amazon.com" "stackoverflow.com" "openai.com")

echo " Pinging websites..."

# Loop through each website
for site in "${WEBSITES[@]}"
do
  echo " Pinging $site..."
  
  #  Ping once and show only success or failure
  if ping -c 1 "$site" > /dev/null 2>&1; then
    echo " $site is reachable."
  else
    echo " $site is NOT reachable."
  fi

  echo "--------------------------"
done

echo " Pinging completed."

