#!/bin/bash

# Create a large file to simulate disk usage
dd if=/dev/zero of=/var/log/bigfile bs=1M count=12000 status=none

# Print a message so the user knows what happened
echo "A large file was created to simulate a fuller disk."
echo "You can now run 'df -h' to inspect disk usage."
