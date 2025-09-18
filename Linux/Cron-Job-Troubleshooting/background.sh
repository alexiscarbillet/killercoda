#!/bin/bash

# Create a fake backup script
cat << 'EOF' > /usr/local/bin/backup.sh
#!/bin/bash
echo "Backup executed at $(date)" >> /var/log/backup.log
EOF

# Make sure the script is NOT executable (broken)
chmod -x /usr/local/bin/backup.sh

# Add a cron job for the current user
(crontab -l 2>/dev/null; echo "* * * * * root /usr/local/bin/backup.sh") | crontab -

echo "Broken cron job added. Learner must debug and fix it."

# Keep the container running
tail -f /dev/null
