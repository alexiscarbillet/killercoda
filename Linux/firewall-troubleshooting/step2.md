Confirm that the local HTTP service is running but blocked by the firewall.

Run:

```bash
curl -I http://localhost:8080
```

If you cannot reach the service, note the error and proceed to inspect firewall rules.
