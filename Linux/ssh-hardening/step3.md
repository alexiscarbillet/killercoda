# Step 3: Firewall Configuration

Before applying the SSH changes, we must tell the Uncomplicated Firewall (UFW) to allow our new port, or we will lose access to the server.

1.  **Allow the new SSH port**:
    ```bash
    ufw allow 2222/tcp
    ```

2.  **Enable the firewall**:
    ```bash
    ufw enable
    ```
    *(Type 'y' and press Enter when prompted)*

3.  **Check the status**:
    ```bash
    ufw status
    ```