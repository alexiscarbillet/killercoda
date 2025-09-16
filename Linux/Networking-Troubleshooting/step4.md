# Step 4: Debug Firewall Rules

* Try fetching a web page:

```bash
curl -I http://example.com
```

You’ll see that the request times out.
This is because `iptables` has a DROP rule for outgoing traffic.

* Check firewall rules:

```bash
sudo iptables -L -v
```

* Remove the blocking rule:

```bash
sudo iptables -F
```

* Test again:

```bash
curl -I http://example.com
```