# Step 3: Fix the Broken Cron Job

You’ve seen in the logs that the job is failing with **“Permission denied”** when trying to run `/usr/local/bin/backup.sh`.

This happens because the script exists but does **not** have execute permissions.

---

### Fix it

1. Make the script executable:

```bash
sudo chmod +x /usr/local/bin/backup.sh
```

2. Confirm the permission:

```bash
ls -l /usr/local/bin/backup.sh
```

It should now show an `x` in the permission string, for example:

```
-rwxr-xr-x 1 root root  75 Sep 18 21:20 /usr/local/bin/backup.sh
```

3. No changes are needed to the crontab — the entry:

```bash
*/5 * * * * /usr/local/bin/backup.sh
```

is correct.

Once fixed, cron will be able to execute the script every 5 minutes.
