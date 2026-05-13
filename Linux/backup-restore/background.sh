#!/bin/bash
set -e

# Create a broken backup script for the learner to troubleshoot
cat > /usr/local/bin/backup.sh <<'EOF'
#!/bin/bash
# Broken backup script - paths assume the user created /backup and /original
tar -czf /backup/backup.tar.gz /original/
EOF

chmod +x /usr/local/bin/backup.sh

# Create systemd service to run the backup script
cat > /etc/systemd/system/backup.service <<'EOF'
[Unit]
Description=Backup Service

[Service]
ExecStart=/usr/local/bin/backup.sh
EOF

systemctl daemon-reload