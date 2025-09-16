# Step 3: Test Connectivity

* Try pinging Google’s DNS:

```bash
ping -c 3 8.8.8.8
```

You’ll see that ping fails because the system has no default route.

* Add a default route:

```bash
sudo ip route add default via 192.168.56.1
```