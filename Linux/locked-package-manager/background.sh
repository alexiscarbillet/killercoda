#!/bin/bash
# Create manual lock files to simulate a stuck apt process
touch /var/lib/dpkg/lock-frontend
touch /var/lib/dpkg/lock
touch /var/lib/apt/lists/lock

# Start a 'fake' background process that holds the lock
sleep 1000 &
echo $! > /tmp/fake_apt_pid