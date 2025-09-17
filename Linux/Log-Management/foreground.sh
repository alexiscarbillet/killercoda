#!/usr/bin/env bash
# foreground.sh — simulate disk full in /var/log

set -euo pipefail

# Create a large fake log file to fill disk space
fallocate -l 1G /var/log/biglog.log || dd if=/dev/zero of=/var/log/biglog.log bs=100M count=10

# Another rotated file for realism
fallocate -l 500M /var/log/biglog.log.1 || dd if=/dev/zero of=/var/log/biglog.log.1 bs=50M count=10

echo "Disk artificially filled with log files. Learner must diagnose and clean up."

# Keep container running
tail -f /dev/null
