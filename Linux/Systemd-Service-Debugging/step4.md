# Step 4: Fix the Service

Now let’s fix the error.

* Edit the unit file:

```bash
sudo nano /etc/systemd/system/myapp.service
```

* Correct the line:

```bash
ExecStart=/opt/myapp/myapp.sh
```

* Reload systemd:

```bash
sudo systemctl daemon-reload
```

* Restart the service:

```bash
sudo systemctl restart myapp.service
```

* Check status again:

```bash
systemctl status myapp.service
```

Now the service should be running properly.