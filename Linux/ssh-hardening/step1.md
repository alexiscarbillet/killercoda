# Step 1: Key-Based Authentication

Before we disable passwords, we must ensure we can log in via keys.

1.  **Generate a new SSH key pair** on the local machine:
    ```bash
    ssh-keygen -t ed25519 -f ~/.ssh/id_rsa -N ""
    ```

2.  **Simulate "installing" the key** to the server's authorized list:
    ```bash
    mkdir -p ~/.ssh
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
    chmod 700 ~/.ssh
    ```

> **Note:** In a real-world scenario, you would use `ssh-copy-id`. Here, we are manually setting up the environment to ensure your session doesn't disconnect.