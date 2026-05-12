After removing the blocking firewall rule, verify the service is reachable:

```bash
curl -I http://localhost:8080
```

The service should now return an HTTP response header instead of a connection error.