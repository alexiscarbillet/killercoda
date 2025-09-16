#!/usr/bin/env bash
# foreground.sh -- prepare a broken networking state for the Networking Troubleshooting scenario
# - flush IPv4 address on primary interface
# - remove default route(s)
# - add iptables rules to drop outgoing HTTP/HTTPS

set -u

echo "==> Preparing broken networking state for scenario..."

# determine primary IPv4 interface (non-loopback). Fallback to enp1s0.
PRIMARY_IFACE="$(ip -o -4 addr show scope global 2>/dev/null | awk '{print $2; exit}')"
if [ -z "$PRIMARY_IFACE" ]; then
  PRIMARY_IFACE="enp1s0"
fi

echo "Primary interface chosen: $PRIMARY_IFACE"

# Flush IPv4 addresses on the interface (idempotent)
if ip link show "$PRIMARY_IFACE" >/dev/null 2>&1; then
  echo "Flushing IPv4 addresses on $PRIMARY_IFACE..."
  sudo ip addr flush dev "$PRIMARY_IFACE" || true
else
  echo "Warning: interface $PRIMARY_IFACE does not exist. Skipping ip addr flush."
fi

# Remove all default routes (if any)
DEFAULT_ROUTES="$(ip route show default 2>/dev/null || true)"
if [ -n "$DEFAULT_ROUTES" ]; then
  echo "Removing existing default route(s)..."
  # iterate and delete each default route
  while read -r line; do
    # attempt to delete using the same text (works in most cases)
    sudo ip route del $line 2>/dev/null || true
  done <<< "$DEFAULT_ROUTES"
else
  echo "No default route present (or none found)."
fi

# Make sure iptables is available
if command -v iptables >/dev/null 2>&1; then
  echo "Applying iptables rules to block outgoing HTTP/HTTPS (ports 80,443)..."

  # Add rule to DROP outgoing TCP to port 80 if not already present
  if ! sudo iptables -C OUTPUT -p tcp --dport 80 -j DROP >/dev/null 2>&1; then
    sudo iptables -A OUTPUT -p tcp --dport 80 -j DROP || true
  fi

  # Add rule to DROP outgoing TCP to port 443 if not already present
  if ! sudo iptables -C OUTPUT -p tcp --dport 443 -j DROP >/dev/null 2>&1; then
    sudo iptables -A OUTPUT -p tcp --dport 443 -j DROP || true
  fi

  echo "iptables rules applied."
else
  echo "Warning: iptables not found. Cannot add firewall rules to block HTTP/HTTPS."
  echo "If you want to simulate blocked HTTP/HTTPS, install iptables or adjust the container config."
fi

echo "Broken state prepared."
echo
echo "What the learner should see now:"
echo "- `ip addr` -> $PRIMARY_IFACE will show no inet address"
echo "- `ip route` -> no default route"
echo "- `ping 8.8.8.8` will fail until a default route is added"
echo "- after adding IP and default route, ping will work but `curl -I http://example.com` will still time out due to iptables rules"
echo
echo "To reset iptables (for instructors/testing):"
echo "  sudo iptables -F"
echo
# Keep script in foreground if desired (some platforms use foreground process to keep container alive)
# Sleep forever so the container doesn't exit (uncomment if you need the script to hold the container)
# tail -f /dev/null
