#!/bin/bash
# Set up broken cron job scenario

# Create the backup script
cat << 'EOF' > /usr/local/bin/backup.sh
#!/bin/bash
# Append a timestamp to a visible file
echo "$(date) - Backup completed" >> ~/backup_status.txt
EOF
chmod +x /usr/local/bin/backup.sh

# Create a broken cron job (without redirecting output)
echo "* * * * * /usr/local/bin/backup.sh" | crontab -

# Remove the file if it exists
rm -f ~/backup_status.txt
