# Step 5: Verify Access

Switch back to `alice` and test:

```bash
su - alice
cat /srv/project/data.txt
```

You should now see:

```bash
Top Secret Project File
```

Both alice and bob (as members of devteam) can now read the file.

Congratulations! You’ve successfully:

* Created users and groups.

* Set file permissions.

* Debugged a permission issue.

* Fixed it and verified access.