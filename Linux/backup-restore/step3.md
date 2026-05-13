Perform and verify the restore from the backup archive.

Restore from tar, stripping the first path component:

```bash
sudo tar -xzf /backup/backup.tar.gz -C /restore/ --strip-components=1
```

Verify the restored data:

```bash
ls -la /restore/
sudo diff -r /original/ /restore/
```

If the files are restored correctly and match the originals, the backup and restore workflow is working.