# Step 3: Opening the New Gate

Since you are moving SSH from port 22 to 2222, the firewall must be updated **before** you restart the service, or you will be locked out of the machine.

1.  **Check current firewall status**:
    ```bash
    ufw status
    ```

2.  **Allow the NEW port**:
    ```bash
    ufw allow 2222/tcp
    ```

3.  **Deny the OLD port** (Optional but recommended):
    ```bash
    ufw deny 22/tcp
    ```

4.  **Enable UFW**:
    ```bash
    ufw enable
    ```