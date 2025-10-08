# Step 2: Mount a Disk

Let’s mount `/dev/sdb` to a new directory.

First, create a mount point:

```bash
sudo mkdir /mnt/data
```

Then, mount the disk:

```bash
sudo mount /dev/sdb /mnt/data
```

Note: If `/dev/sdb` is not formatted, you can create a filesystem with:

```bash
sudo mkfs.ext4 /dev/sdb
```

## Verify the mount

Run:

```bash
lsblk
```

You should now see `/mnt/data` listed under the MOUNTPOINT column for `/dev/sdb`.

Also, check:

```bash
df -h
```

You’ll notice a new entry showing the mounted disk and its available space.