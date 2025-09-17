#!/bin/bash

# Create a large fake log file to fill disk space
fallocate -l 10G /var/log/biglog.log || dd if=/dev/zero of=/var/log/biglog.log bs=1M count=12000

# Another rotated file for realism
fallocate -l 500M /var/log/biglog.log.1 || dd if=/dev/zero of=/var/log/biglog.log.1 bs=50M count=10

echo "Disk artificially filled with log files. Learner must diagnose and clean up."

# Keep container running
tail -f /dev/null