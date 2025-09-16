# Step 2: Enable and Start the Service

Now let’s try to start the service.

* Reload systemd so it picks up the new service:

```bash
sudo systemctl daemon-reload
```

* Enable the service to start at boot:

```bash
sudo systemctl enable myapp.service
```

* Start the service:

```bash
sudo systemctl start myapp.service
```

* Check the service status:

```bash
systemctl status myapp.service
```

You should see that the service fails to start. Don’t worry — this is expected! You’ll debug it in the next step.
