# Step 3: Fix the Broken Cron Job

# Step 3: Fix the Broken Cron Job

Edit the cron job:

```bash
crontab -e
```

Replace the broken line with:

```bash
* * * * * /usr/local/bin/backup.sh >> ~/backup_status.txt 2>&1
```

This ensures the output is appended to the visible backup_status.txt file.

Save and exit. Wait one minute for the cron job to run.