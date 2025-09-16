# Step 1: Check IP Configuration

* List network interfaces:

```bash
ip addr
```

* Check routing:

```bash
ip route
```

You should notice that the interface eth0 exists but has no IP address assigned.
This will cause connectivity issues.

