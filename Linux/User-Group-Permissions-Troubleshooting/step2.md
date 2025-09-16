# Step 2: Set File Permissions

* Create a project folder and file:

```bash
sudo mkdir -p /srv/project
echo "Top Secret Project File" | sudo tee /srv/project/data.txt
```

* Change ownership to the `devteam` group:

```bash
sudo chown :devteam /srv/project/data.txt
```

* Set permissions so that only the owner can read/write:

```bash
sudo chmod 600 /srv/project/data.txt
```

At this point, `alice` and `bob` should NOT be able to read the file, even though they’re in the `devteam` group. This sets up our troubleshooting.