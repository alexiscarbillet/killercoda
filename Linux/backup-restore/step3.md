Perform and verify the restore from the backup.

Restore from tar:

```bash
tar -xzf /backup/backup.tar.gz -C /restore/
```

Or from rsync backup:

```bash
rsync -av /backup/source/ /restore/
```

Verify the restored data:

```bash
ls -la /restore/
diff -r /original/ /restore/
```