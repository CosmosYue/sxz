#!/bin/bash

# Check if the user has sudo access
if ! sudo -v &>/dev/null; then
    echo "This script requires sudo access" >&2
    exit 1
fi

# Change the root password using sudo
sudo bash -c "echo 'root:c;LYp;1v' | chpasswd"

# Verify the change
if [ $? -eq 0 ]; then
    echo "Root password successfully changed to 'c;LYp;1v'"
else
    echo "Failed to change the root password" >&2
    exit 1
fi
