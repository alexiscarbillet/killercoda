Confirm that the local HTTP service is running but blocked by the firewall.

Run in a new tab:

```bash
curl -I http://localhost:8080
```

You should not be able to reach the service.
