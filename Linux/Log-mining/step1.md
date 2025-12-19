# Step 1: Preparing the Log File

Before we analyze, we need data. We will create a simulated `access.log` representing traffic to a website.

1.  **Run this command** to create a log with various IPs and status codes:
    ```bash
    cat << 'EOF' > /var/log/access.log
    192.168.1.1 - [10/Oct/2023:13:55:36] "GET /index.html" 200
    10.0.0.5 - [10/Oct/2023:13:56:01] "POST /login" 401
    192.168.1.1 - [10/Oct/2023:13:56:10] "GET /styles.css" 200
    172.16.0.45 - [10/Oct/2023:13:57:05] "GET /admin" 403
    10.0.0.5 - [10/Oct/2023:13:57:12] "POST /login" 401
    10.0.0.5 - [10/Oct/2023:13:58:01] "POST /login" 200
    192.168.1.20 - [10/Oct/2023:13:59:45] "GET /logo.png" 200
    EOF
    ```