# 💻 Step 1: Start a Dummy Service

We will simulate a simple web service that has been configured to run on port **8081**. This command will start a Python HTTP server in the background (`&`) for us to troubleshoot.

### ➡️ Command

```bash
python3 -m http.server 8081 &
```

⚠️ Note

The output [1] followed by a process ID (PID) confirms the command has been sent to the background. The server is now running, but we need to confirm it is actually listening on the network.