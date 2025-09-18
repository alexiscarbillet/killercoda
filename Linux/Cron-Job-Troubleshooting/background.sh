#!/bin/bash

# Create a fake backup script
cat << 'EOF' > /usr/local/bin/backup.sh
#!/bin/bash
echo "Backup executed at $(date)" >> /var/log/backup.log
EOF
chmod +x /usr/local/bin/backup.sh

# Add a broken cron job (bad syntax + missing PATH)
chmod -x /usr/local/bin/backup.sh
(crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/backup.sh") | crontab -

echo "Broken cron job added. Learner must debug and fix it."
tail -f /dev/null
