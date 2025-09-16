# Step 5: Verify and Confirm

* Test ping:

```bash
ping -c 3 8.8.8.8
```

* Test DNS resolution:

```bash
ping -c 3 example.com
```

* Test web request:

```bash
curl -I http://example.com
```

All should now work successfully.

Congratulations! You fixed:

* A missing IP configuration.

* A missing default route.

* A firewall blocking outgoing traffic.