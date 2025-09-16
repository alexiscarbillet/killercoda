# Step 5: Verify and Test

Finally, let’s confirm everything is working.

* Check that the process is running:

```bash
ps aux | grep myapp
```

* View logs:

```bash
journalctl -u myapp.service -f
```

You should see output like:

```yaml
MyApp running: Mon Sep 16 14:32:21 UTC 2025
MyApp running: Mon Sep 16 14:32:26 UTC 2025
```

Congratulations! You successfully:

* Created a custom service.

* Debugged a failure.

* Fixed and verified it.

This is a common skill for system administrators and DevOps engineers.