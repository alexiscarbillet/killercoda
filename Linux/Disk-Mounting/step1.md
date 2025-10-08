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
NAME       MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
vda        253:0    0   20G  0 disk 
├─vda1     253:1    0   19G  0 part /
├─vda14    253:14   0    4M  0 part 
├─vda15    253:15   0  106M  0 part /boot/efi
└─vda16    259:0    0  913M  0 part /boot
loop10       7:10   0    1G  0 loop
```

## Check more details

You can see filesystem types and UUIDs using:

```bash
blkid
```

And check space usage on mounted disks with:

```bash
df -h
```
