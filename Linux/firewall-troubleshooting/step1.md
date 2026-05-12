Set up the scenario by starting a local web server and blocking access to it with iptables.

First, create a simple HTML file and start the server:

```bash
mkdir -p /tmp/firewall-web
echo '<html><body><h1>Firewall Troubleshooting</h1><p>Blocked by iptables</p></body></html>' > /tmp/firewall-web/index.html
python3 -m http.server 8080 --directory /tmp/firewall-web &
```

Then, block port 8080 with iptables:

```bash
iptables -F
iptables -A INPUT -p tcp --dport 8080 -j DROP
```

The server should be running in the background, but access is blocked.
