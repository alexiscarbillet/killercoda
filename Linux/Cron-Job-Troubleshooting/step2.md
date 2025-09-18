# Step 2: Inspect Cron Logs

Cron logs help determine whether the job is being triggered.  

On Ubuntu/Debian systems, cron logs are usually in `syslog`. Check them with:
```bash
grep CRON /var/log/syslog
```

Look for entries about your broken job. You may see errors like:

* command not found

* permission denied

* incorrect file paths

These clues will help you fix the job.