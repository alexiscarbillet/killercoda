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

Confirm disk space:
```bash
df -h
```