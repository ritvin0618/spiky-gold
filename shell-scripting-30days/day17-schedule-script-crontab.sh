#!/bin/bash

# Define the schedule for the cron job
CRON_SCHEDULE="*/2 * * * *"

# Define the command to run
COMMAND="/home/vineeth/Dev/spiky-gold-practice/shell-scripting-30days/day01-hello-world.sh >> /home/vineeth/Dev/spiky-gold-practice/shell-scripting-30days/cron.log 2>&1"

# Combine the schedule and command
CRON_JOB="$CRON_SCHEDULE $COMMAND"

# Check if the cron job already exists
(crontab -l 2>/dev/null | grep -F "$COMMAND") && echo "Cron job already exists!" && exit 0

# Add the new cron job
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -

# Confirm to the user
echo "Cron job added successfully!"

