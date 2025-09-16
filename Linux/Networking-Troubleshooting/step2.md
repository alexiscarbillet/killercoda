# Step 2: Fix Network Interface

* Assign an IP address to `eth0`:

```bash
sudo ip addr add 192.168.56.10/24 dev eth0
```

* Bring the interface up:

```bash
sudo ip link set eth0 up
```

* Verify:

```bash
ip addr show eth0
```

Now eth0 has an IP, but there’s still no default route, so internet access won’t work yet.

