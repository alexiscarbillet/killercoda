# Linux Backup and Restore Troubleshooting

In this scenario, you will troubleshoot a failed backup script, create the required backup directories and source content, and restore data from a backup archive.

You’ll use the following commands:
- `ls -la /backup/`
- `cat /usr/local/bin/backup.sh`
- `mkdir -p /backup /original /restore`
- `tar -tzf /backup/backup.tar.gz`
- `rsync -av /backup/ /restore/`
- `systemctl status backup.service`

Click **Start Scenario** to begin!