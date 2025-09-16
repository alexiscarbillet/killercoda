# Step 1: Create a Custom Service

Let’s start by creating a new systemd service unit.

1. Create a script that prints a timestamp every 5 seconds:

```bash
mkdir -p /opt/myapp
echo -e '#!/bin/bash\nwhile true; do echo "MyApp running: $(date)"; sleep 5; done' > /opt/myapp/myapp.sh
chmod +x /opt/myapp/myapp.sh
```

2. Create a systemd service unit file:

```bash
cat <<EOF | sudo tee /etc/systemd/system/myapp.service
[Unit]
Description=MyApp Custom Service
After=network.target

[Service]
ExecStart=/opt/myapp/myappp.sh
Restart=always

[Install]
WantedBy=multi-user.target
EOF
```

⚠️ Notice that we’ve intentionally introduced a typo: `myappp.sh` (three p’s).
This will cause the service to fail when started, and you’ll debug it later.

