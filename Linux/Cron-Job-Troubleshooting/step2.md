# Step 2: Inspect Cron Logs

Cron logs help determine whether the job is being triggered.

On Ubuntu/Debian systems, cron logs are usually in `syslog`. Check them with:

```bash
grep CRON /var/log/syslog
```

Since the job is broken, you **won’t see the expected log file entries**:

```bash
cat /var/log/backup.log
# Output: No such file or directory
```

Look at the `syslog` entries — you may notice clues like:

* The job is listed with an **unexpected extra field** (`root /usr/local/bin/backup.sh`)
* Cron attempts to run the job but fails silently due to **permissions**

These clues tell you:

1. The cron entry syntax is incorrect.
2. The script is not executable.

Fixing these issues will allow the job to run and create `/var/log/backup.log`.
