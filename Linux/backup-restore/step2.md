Test the backup script by running it manually to verify it creates the backup archive correctly.

Run the backup script:

```bash
sudo /usr/local/bin/backup.sh
```

Check if the backup archive was created:

```bash
ls -lh /backup/backup.tar.gz
```

Verify the archive contents:

```bash
tar -tzf /backup/backup.tar.gz
```

If the archive was created successfully, the backup script is working correctly.