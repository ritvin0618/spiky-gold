#!/bin/bash

echo "Monitoring System Resources..."
echo "-------------------------------"

# Display CPU Usage
echo "CPU Usage:"
top -b -n1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 "% user, " $4 "% system, " $8 "% idle"}'
echo "-------------------------------"

# Display Memory Usage
echo "Memory Usage:"
free -h | awk 'NR==2{print "Memory Usage: "$3" used / "$2" total ("$7" available)"}'
echo "-------------------------------"

# 🕰️ Display Uptime
echo "System Uptime:"
uptime | awk -F'(,| up)' '{print "Uptime:" $2}'
echo "-------------------------------"

