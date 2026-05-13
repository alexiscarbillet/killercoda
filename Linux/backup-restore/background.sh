#!/bin/bash
set -e

# Create directories
mkdir -p /backup /source /restore /original

# Create sample data
echo "Sample data" > /original/file1.txt
echo "More data" > /original/file2.txt
mkdir /original/subdir
echo "Sub data" > /original/subdir/file3.txt

# Create a broken backup script
cat > /usr/local/bin/backup.sh <<'EOF'
#!/bin/bash
# Broken backup script - missing sudo or wrong paths
tar -czf /backup/backup.tar.gz /original/
EOF

chmod +x /usr/local/bin/backup.sh

# Create systemd service
cat > /etc/systemd/system/backup.service <<'EOF'
[Unit]
Description=Backup Service

[Service]
ExecStart=/usr/local/bin/backup.sh
EOF

systemctl daemon-reload