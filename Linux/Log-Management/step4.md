# Step 4: Configure Log Rotation

To prevent logs from filling the disk again, configure `logrotate`.

Check existing config:
```bash
cat /etc/logrotate.conf
```

Now create a new config for biglog.log:
```bash
sudo nano /etc/logrotate.d/biglog
```

Add:
```bash
/var/log/biglog.log {
    weekly
    rotate 4
    compress
    missingok
    notifempty
    create 0640 root root
}
```

This should keep logs small and automatically rotated every week.