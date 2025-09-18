# Step 3: Fix the Broken Cron Job

Now that you know why the job is failing, let’s fix it.  

Edit the user’s cron table:
```bash
crontab -e
```

Remove the invalid root field → correct entry should be:
```bash
*/5 * * * * /usr/local/bin/backup.sh
```

