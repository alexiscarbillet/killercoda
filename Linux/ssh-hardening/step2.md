# Step 2: Hardening the Configuration

Now we will modify the SSH daemon configuration file to close common security holes.

1.  Open the configuration file:
    ```bash
    vi /etc/ssh/sshd_config
    ```

2.  **Find and modify** the following lines (uncomment them if necessary):
    * Change `Port 22` to `Port 2222`
    * Change `PermitRootLogin` to `no`
    * Change `PasswordAuthentication` to `no`

3.  **Validate the syntax** before restarting to avoid being locked out:
    ```bash
    sshd -t
    ```
    *If there is no output, the configuration is valid.*