#!/usr/bin/env bash
# foreground.sh
# Prepare a reproducible "broken networking" environment for the Networking Troubleshooting scenario.
#
# Effects:
#  - flushes IPv4 addresses on the primary non-loopback interface
#  - flushes the main IPv4 routing table
#  - clears /etc/resolv.conf (backed up)
#  - adds iptables DROP rules for outgoing HTTP/HTTPS (ports 80,443)
#  - leaves the process running (tail -f /dev/null) so container stays alive
#
# Run as root. The script is idempotent (safe to run multiple times).

set -euo pipefail

echo "==> Preparing broken networking state for the scenario..."

if [ "$(id -u)" -ne 0 ]; then
  echo "ERROR: Please run this script as root (sudo)." >&2
  exit 2
fi

# 1) Determine a primary non-loopback interface that's UP.
PRIMARY_IFACE=""
# prefer interface that has a global IPv4 address (if present)
PRIMARY_IFACE="$(ip -o -4 addr show scope global 2>/dev/null | awk '{print $2; exit}' || true)"
if [ -z "$PRIMARY_IFACE" ]; then
  # fallback: first non-loopback interface that is UP
  PRIMARY_IFACE="$(ip -o link show | awk -F': ' '{print $2}' | grep -v lo | head -n1 || true)"
fi

if [ -z "$PRIMARY_IFACE" ]; then
  echo "WARNING: Could not determine a primary interface. Defaulting to enp1s0"
  PRIMARY_IFACE="enp1s0"
fi

echo "Primary interface selected: $PRIMARY_IFACE"

# 2) Flush IPv4 addresses on that interface (idempotent)
if ip link show "$PRIMARY_IFACE" >/dev/null 2>&1; then
  echo "Flushing IPv4 addresses on $PRIMARY_IFACE..."
  ip -4 addr flush dev "$PRIMARY_IFACE" || true
else
  echo "Warning: interface $PRIMARY_IFACE not present. Skipping address flush."
fi

# 3) Flush the main IPv4 routing table so there is no default route
echo "Flushing main IPv4 routing table..."
ip route flush table main || true

# 4) Backup and clear /etc/resolv.conf so DNS doesn't work
RESOLV_BAK="/etc/resolv.conf.kc_backup"
if [ ! -f "$RESOLV_BAK" ]; then
  echo "Backing up /etc/resolv.conf -> $RESOLV_BAK"
  cp -a /etc/resolv.conf "$RESOLV_BAK" || true
fi
echo "Clearing /etc/resolv.conf (no DNS)..."
: > /etc/resolv.conf

# 5) Add iptables rules to drop outgoing HTTP/HTTPS (idempotent)
if command -v iptables >/dev/null 2>&1; then
  echo "Applying iptables rules to DROP outgoing HTTP/HTTPS (ports 80,443)."

  # ensure OUTPUT chain exists; then add rules if not present
  if ! iptables -C OUTPUT -p tcp --dport 80 -j DROP >/dev/null 2>&1; then
    iptables -A OUTPUT -p tcp --dport 80 -j DROP || true
  fi
  if ! iptables -C OUTPUT -p tcp --dport 443 -j DROP >/dev/null 2>&1; then
    iptables -A OUTPUT -p tcp --dport 443 -j DROP || true
  fi

  echo "iptables rules applied."
else
  echo "Note: iptables not found. HTTP/HTTPS blocking skipped."
fi

# 6) Print explanation for the learner / instructor
cat <<EOF

Broken networking state prepared.

What the learner will observe:
 - 'ip addr' -> $PRIMARY_IFACE will show no IPv4 address (no 'inet' line).
 - 'ip route' -> no default route.
 - DNS resolution will fail (resolv.conf cleared).
 - After adding an IP and route, 'ping 8.8.8.8' should work.
 - However, 'curl -I http://example.com' will still fail until iptables rules are removed (if iptables exists).

Instructor restore commands (run as root):
 - Restore DNS from backup:
     cp -a /etc/resolv.conf.kc_backup /etc/resolv.conf

 - Remove the iptables rules we added:
     iptables -D OUTPUT -p tcp --dport 80 -j DROP || true
     iptables -D OUTPUT -p tcp --dport 443 -j DROP || true

 - (Optional) Flush routes and re-request DHCP or set routes:
     ip route flush table main
     # add a default route example (adjust gateway to your network)
     ip addr add 192.168.56.10/24 dev $PRIMARY_IFACE
     ip link set $PRIMARY_IFACE up
     ip route add default via 192.168.56.1

 - A one-line reset (if you trust it) to flush iptables and restore resolv:
     iptables -F && cp -a /etc/resolv.conf.kc_backup /etc/resolv.conf

EOF

# 7) Keep the process in foreground (so container doesn't exit)
# If you prefer the script to exit instead of blocking the container, remove the tail line.
tail -f /dev/null
