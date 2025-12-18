# Step 2: Modifying sshd_config

You noted that `PermitRootLogin yes` is currently active. We need to flip this to `no` and change the port.

1.  **Open the config file**:
    ```bash
    vi /etc/ssh/sshd_config
    ```

2.  **Search and Replace**:
    Inside `vi`, you can find the lines quickly by typing `/` followed by the word (e.g., `/PermitRoot`).

    **Make these specific changes:**
    * Find `#Port 22` -> Change to `Port 2222` (Remove the `#`)
    * Find `PermitRootLogin yes` -> Change to `PermitRootLogin no`
    * Find `#PasswordAuthentication yes` -> Change to `PasswordAuthentication no`

3.  **Leave SFTP Alone**:
    The line `Subsystem sftp internal-sftp` is fine as is; it handles secure file transfers.

4.  **Save and Exit**:
    Press `Esc`, then type `:wq` and `Enter`.