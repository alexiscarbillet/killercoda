# Step 4: Applying Changes

Finally, we need to restart the service to apply our hardening rules.

1.  **Restart the SSH service**:
    ```bash
    systemctl restart ssh
    ```

2.  **Verify the service is listening on the new port**:
    ```bash
    ss -tlpn | grep ssh
    ```

3.  **Test the connection** (simulated):
    Try to see if the server responds on the old port:
    ```bash
    ssh localhost -p 22
    ```
    *It should say "Connection refused".*

4.  Now try the new port:
    ```bash
    ssh localhost -p 2222
    ```