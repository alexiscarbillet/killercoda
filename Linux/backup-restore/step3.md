Perform and verify the restore from the backup archive.

Restore from tar:

```bash
sudo tar -xzf /backup/backup.tar.gz -C /restore/
```

Verify the restored data:

```bash
ls -la /restore/
sudo diff -r /original/ /restore/
```

If the files are restored correctly, the backup and restore workflow is working.