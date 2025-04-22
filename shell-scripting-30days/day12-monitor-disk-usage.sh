#!/bin/bash

# Run df -h and fetch only the Usage Percentage for each filesystem
echo "Disk Usage Summary:"
df -h | awk 'NR==1 || /\/$/ {print $5, $6}'

