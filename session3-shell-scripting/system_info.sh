#!/bin/bash

# Task: System Information Script

# Uses variables to store data
CURRENT_DATE=$(date)
HOST_NAME=$(hostname)
USER_NAME=$(whoami)

# Prints the current date
echo "Current Date: $CURRENT_DATE"

# Prints the hostname
echo "Hostname: $HOST_NAME"

# Prints the username
echo "Username: $USER_NAME"

# Prints the disk usage
echo "--- Disk Usage ---"
df -h

echo "-------------------"

# Takes user input using read -p
read -p "Enter a directory name to create for storing process logs: " LOG_DIR

# Creates a directory using mkdir
mkdir -p "$LOG_DIR"
echo "Directory '$LOG_DIR' created successfully."

# Creates a file using touch
LOG_FILE="$LOG_DIR/running_processes.txt"
touch "$LOG_FILE"
echo "File '$LOG_FILE' created successfully."

# Prints the running processes (console output)
echo "Gathering running processes..."

# Stores the running processes information in the file using > output redirection
ps -ef > "$LOG_FILE"

echo "Done! Running processes have been successfully saved to $LOG_FILE."
