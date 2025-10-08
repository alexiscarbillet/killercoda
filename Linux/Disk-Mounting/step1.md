# Step 1: Inspect Available Disks

Start by listing the block devices attached to the system:

```bash
lsblk
```

This command displays:

- Disk names (e.g., `sda`, `sdb`)

- Sizes

- Mount points (if already mounted)

- Partition layout

## Example output

```pgsql
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda      8:0    0   10G  0 disk
├─sda1   8:1    0    1G  0 part /boot
└─sda2   8:2    0    9G  0 part /
sdb      8:16   0    2G  0 disk
```

Here:

- `/dev/sda` is the main disk (used by the OS).

- `/dev/sdb` is an extra disk not yet mounted.

## Check more details

You can see filesystem types and UUIDs using:

```bash
blkid
```

And check space usage on mounted disks with:

```bash
df -h
```
