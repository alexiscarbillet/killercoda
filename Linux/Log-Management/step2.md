# Step 2: Identify Large Log Files

Next, find out which log files are taking the most space.

Run:
```bash
du -sh /var/log/* | sort -h
```

Look for files that are unusually large (hundreds of MB or more).

Which file is the biggest?