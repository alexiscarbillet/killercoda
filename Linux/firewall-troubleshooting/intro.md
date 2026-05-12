# Linux Firewall Troubleshooting

In this scenario, you will set up a local HTTP service, block access to it with iptables, diagnose the issue, and restore connectivity.

You’ll use the following commands:
- `python3 -m http.server`
- `iptables -A INPUT`
- `iptables -L -n --line-numbers`
- `curl http://localhost:8080`
- `iptables -D INPUT <line>`

Click **Start Scenario** to begin!
