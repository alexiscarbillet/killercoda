# Step 3: The Listening Surface

Security isn't just about files; it's about what is happening on the network.

1.  **Check the socket**:
    ```bash
    ss -tlpn | grep ssh
    ```

2.  **Understand the output**:
    The `*:22` or `0.0.0.0:22` means SSH is listening on **all** available network interfaces on port 22.

### The "Obscurity" Concept
By changing the port to something like `2222`, you don't make the encryption stronger, but you stop 99% of automated "bot" scripts that only scan port 22. This keeps your logs clean and reduces load on the CPU.