# Step 4: Fix the Service

Now let’s fix the error.

1. Edit the unit file:

```bash
sudo nano /etc/systemd/system/myapp.service
```

2. Correct the line:

```bash
ExecStart=/opt/myapp/myapp.sh
```

3. Reload systemd:

```bash
sudo systemctl daemon-reload
```

4. Restart the service:

```bash
sudo systemctl restart myapp.service
```

5. Check status again:

```bash
systemctl status myapp.service
```

Now the service should be running properly.