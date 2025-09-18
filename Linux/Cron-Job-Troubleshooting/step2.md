# Step 2: Inspect Cron Logs

Check if the cron job has produced any output:

```bash
cat ~/backup_status.txt
```

You will likely see nothing, because the cron job fails silently.

Hint: Cron jobs run in a minimal environment and may need full paths or output redirection to work correctly.