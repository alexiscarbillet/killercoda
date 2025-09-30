#!/bin/bash

# --- CPU hog process ---
# Runs "yes" endlessly, eating 100% CPU
yes > /dev/null &

# --- Memory hog process ---
# Uses dd to fill RAM with zeros in the background
dd if=/dev/zero of=/dev/null bs=1M &

# --- Infinite loop (CPU hog) ---
bash -c 'while :; do :; done' &

echo "⚠️ Runaway processes started. Use ps/top to diagnose and fix."
echo "Try 'ps aux --sort=-%cpu | head' and 'ps aux --sort=-%mem | head'"
