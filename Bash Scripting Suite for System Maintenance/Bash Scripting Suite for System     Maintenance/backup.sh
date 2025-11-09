#!/bin/bash

# Directory where backups will be stored
backup_dir="$HOME/Desktop/Assignment_5/backup"
timestamp=$(date +'%Y-%m-%d_%H-%M-%S')

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Print a message so user knows script is running
echo "Creating backup, please wait..."

# Create backup archive
tar -czf "$backup_dir/backup_$timestamp.tar.gz" "$HOME/Documents" "$HOME/Desktop" 2>/dev/null

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "✅ Backup completed: $backup_dir/backup_$timestamp.tar.gz"
else
    echo "❌ Backup failed!"
fi

