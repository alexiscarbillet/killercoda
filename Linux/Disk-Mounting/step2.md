# Step 2: Mount a Disk

Let’s mount the fake disk to a new directory.

First, create a mount point:

```bash
sudo mkdir /mnt/data
```

Then, mount the disk:

```bash
sudo mount /dev/loop10 /mnt/data
```

## Verify the mount

Run:

```bash
lsblk
```

You should now see `/mnt/data` listed under the MOUNTPOINT column of the loop device.

Also, check:

```bash
df -h
```

You’ll notice a new entry showing the mounted disk and its available space.