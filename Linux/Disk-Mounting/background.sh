#!/bin/bash
# Create a 1 GB fake disk file
dd if=/dev/zero of=/tmp/fakedisk.img bs=1M count=1024

# Format the file with ext4
mkfs.ext4 /tmp/fakedisk.img

# Create a loop device (e.g., /dev/loop10)
LOOPDEV=$(losetup -f)
losetup $LOOPDEV /tmp/fakedisk.img

echo "✅ Fake disk created as $LOOPDEV (1 GB)"
lsblk
