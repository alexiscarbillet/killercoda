# Step 4: Debug and Fix Permissions

Now let’s allow the `devteam` group to read the file.

* Exit back to root:

```bash
exit
```

* Change file permissions so the group can read:

```bash
sudo chmod 640 /srv/project/data.txt
```

* Verify permissions:

```bash
ls -l /srv/project/data.txt
```

You should see something like:

```bash
-rw-r----- 1 root devteam 22 Sep 16 14:45 /srv/project/data.txt
```

Now the group has read access.