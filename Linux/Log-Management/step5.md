# Step 5: Verify the Fix

Test your configuration:

Force a log rotation:
```bash
sudo logrotate -f /etc/logrotate.conf
```

Check /var/log again:
```bash
ls -lh /var/log/biglog*
```

You should see:

* The main log file truncated or rotated

* Older logs compressed (.gz)

Confirm disk space:
```bash
df -h
```