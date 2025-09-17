# Step 3: Free Disk Space

Now free up space by truncating or archiving the big log file.

Option A – truncate (clears content but keeps file):

```bash
> /var/log/biglog.log
```

Option B – compress old logs (saves space but keeps history):

```bash
gzip /var/log/biglog.log.1
```

Verify space is freed:

```bash
df -h
```

Confirm that usage dropped.