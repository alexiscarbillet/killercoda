# Step 3: Unmount and Verify

When you’re done using the disk, unmount it safely:

```bash
sudo umount /mnt/data
```

## Check that it’s unmounted

```bash
lsblk
```

The MOUNTPOINT column should now be empty for /dev/sdb.

You can also confirm with:

```bash
df -h
```

Great job! You’ve learned how to:

- Identify disks

- Mount and unmount them

- Verify mounts using multiple commands