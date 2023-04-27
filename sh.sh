#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Set the root password
echo "root:c;LYp;1v" | chpasswd

# Verify the change
if [ $? -eq 0 ]; then
    echo "Root password successfully changed to 'c;LYp;1v'"
else
    echo "Failed to change the root password" >&2
    exit 1
fi
