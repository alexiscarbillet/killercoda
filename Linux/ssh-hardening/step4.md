# Step 4: Applying and Testing

Now apply the changes and verify that the "Root Login" policy is actually working.

1.  **Restart the service**:
    ```bash
    systemctl restart ssh
    ```

2.  **Verify SSH is listening on 2222**:
    ```bash
    netstat -tulnp | grep ssh
    ```

3.  **Test Root Login Denial**:
    Even with the correct key, root login should now be rejected:
    ```bash
    ssh root@localhost -p 2222
    ```
    *Expect: Permission denied (publickey).*

4.  **Test User Login**:
    ```bash
    ssh $USER@localhost -p 2222
    ```
    *Expect: Successful login.*