First, create the required directories and sample data for the backup scenario.

Create the backup, original, and restore directories:

```bash
mkdir -p /backup /original /restore
```

Create some sample files in `/original/` to be backed up:

```bash
echo "Database config" > /original/config.txt
echo "User data" > /original/users.txt
echo "Important logs" > /original/application.log
```

Verify the files were created:

```bash
ls -la /original/
```

Now create the backup script. Open a text editor and create `/usr/local/bin/backup.sh`:

```bash
sudo nano /usr/local/bin/backup.sh
```

Add the following content:

```bash
#!/bin/bash
tar -czf /backup/backup.tar.gz /original/
```

Save and exit (Ctrl+O, Enter, Ctrl+X).

Make it executable:

```bash
sudo chmod +x /usr/local/bin/backup.sh
```

Create the systemd service file. Open a text editor:

```bash
sudo nano /etc/systemd/system/backup.service
```

Add the following content:

```bash
[Unit]
Description=Backup Service

[Service]
ExecStart=/usr/local/bin/backup.sh
```

Save and exit (Ctrl+O, Enter, Ctrl+X).

Reload systemd to register the new service:

```bash
sudo systemctl daemon-reload
```