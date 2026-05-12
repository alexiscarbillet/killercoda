Inspect the current firewall rules and identify the rule blocking port 8080.

Run:

```bash
iptables -L INPUT -n --line-numbers
```

Find the line that drops traffic on `tcp dpt:8080`.

Then remove the blocking rule using the rule number or the exact rule specification.
