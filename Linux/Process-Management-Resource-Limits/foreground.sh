#!/bin/bash

# Simulate runaway processes
# High CPU process
yes > /dev/null &

# High memory process (~500MB)
dd if=/dev/zero of=/tmp/mem_hog bs=1M count=500 &

# Another CPU-heavy background process
bash -c "while :; do :; done" &

echo "Runaway CPU and memory processes have been started for the learner to diagnose."
echo "Use 'ps', 'top', 'htop', 'kill', 'pkill', or 'ulimit' to manage them."

# Keep container running
tail -f /dev/null
