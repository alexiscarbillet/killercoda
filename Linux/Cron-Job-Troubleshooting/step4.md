# Step 4: Verify the Job Runs

Finally, let’s make sure the job works as expected.  

Run manually:

```bash
/usr/local/bin/backup.sh
```

Check `/var/log/backup.log` has a new line.

Wait a few minutes, then:

```bash
grep CRON /var/log/syslog
tail -f /var/log/backup.log
```

Should show cron triggering every 5 minutes.