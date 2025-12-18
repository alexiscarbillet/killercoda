# Step 4: Testing without Breaking

You can test a new configuration file without restarting the service. This is how pros avoid getting locked out.

1.  **Create a "dummy" config**:
    ```bash
    cp /etc/ssh/sshd_config /tmp/test_sshd_config
    echo "Port 9999" >> /tmp/test_sshd_config
    ```

2.  **Run a test pass**:
    ```bash
    sshd -t -f /tmp/test_sshd_config
    ```
    *If there is no error, the config is safe to use. If you had a typo, it would tell you here.*