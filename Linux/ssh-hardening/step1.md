# Step 1: Seeing the "True" Configuration

The `/etc/ssh/sshd_config` file only shows changes. To see the **effective** configuration (including all the hidden defaults), we use `sshd -T`.

1.  **Dump the active configuration**:
    ```bash
    sshd -T | grep -E "port|permitrootlogin|passwordauthentication"
    ```

2.  **Analyze the output**:
    * `port 22`: The standard entry point for attackers.
    * `permitrootlogin yes`: This means an attacker can try to brute-force the 'root' password directly.
    * `passwordauthentication yes`: This means the server accepts passwords, which are weaker than keys.