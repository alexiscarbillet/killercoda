#!/usr/bin/env bash
# foreground.sh — reliable broken networking for scenario

set -euo pipefail

echo "==> Preparing broken networking state with iptables drop..."

if [ "$(id -u)" -ne 0 ]; then
  echo "ERROR: Run as root (sudo)." >&2
  exit 2
fi

# Flush previous iptables OUTPUT rules and set default policy to ACCEPT first (idempotent)
iptables -P OUTPUT ACCEPT
iptables -F

# Allow local loopback
iptables -A OUTPUT -o lo -j ACCEPT

# Drop all outgoing IPv4 traffic
iptables -A OUTPUT -o enp1s0 -j DROP || true

echo "==> All outgoing traffic on enp1s0 is now blocked."
echo "ping 8.8.8.8 and curl requests will fail until the learner removes the DROP rule."

# Instructions for the learner to fix it
cat <<EOF

To restore connectivity (example for learner):
1) Remove the DROP rule:
   sudo iptables -D OUTPUT -o enp1s0 -j DROP

2) Optionally verify by ping:
   ping -c 3 8.8.8.8
   curl -I http://example.com

EOF

# Keep container running
tail -f /dev/null
