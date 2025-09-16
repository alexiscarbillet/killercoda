# Step 3: Test Access

Switch to `alice` and try reading the file:

```bash
su - alice
cat /srv/project/data.txt
```

You should see a “Permission denied” error.

This is expected, since the file’s mode is `600` and doesn’t allow group access.