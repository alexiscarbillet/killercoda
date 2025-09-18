# Step 1: Check Existing Cron Jobs

Cron jobs are scheduled using the `crontab`. Let’s start by listing the user’s cron jobs.

Run:
```bash
crontab -l
```

This will display all cron jobs for the current user.

If you don’t see any jobs, try checking the system-wide cron jobs:

```bash
cat /etc/crontab
ls /etc/cron.d/
```

Make a note of any suspicious or failing jobs. In this exercise, you’ll find a job that isn’t working correctly.