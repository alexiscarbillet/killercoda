# Step 3: Free Disk Space

Now free up space by truncating or archiving the big log file.

truncate (clears content but keeps file):
```bash
> /var/log/biglog.log
```

Verify space is freed:
```bash
df -h
```

Confirm that usage dropped.