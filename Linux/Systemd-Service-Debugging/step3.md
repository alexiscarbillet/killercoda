# Step 3: Debug Service Failures

Let’s investigate why the service failed.

1. Check the status again:

```bash
systemctl status myapp.service
```

2. Use the logs:

```bash
journalctl -xeu myapp.service
```

You should see an error message indicating that the executable file could not be found: `/opt/myapp/myappp.sh: No such file or directory`.

This means our `ExecStart` command is wrong.