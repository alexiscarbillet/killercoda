# Step 1: Check Existing Cron Jobs

Cron jobs are scheduled using the `crontab`. Let’s start by listing the user’s cron jobs.

Run:
```bash
crontab -l
```

You should see:
```bash
* * * * * /usr/local/bin/backup.sh
```

The problem is that the script do not print anything in the file `~/backup_status.txt`.
