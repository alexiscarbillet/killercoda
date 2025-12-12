# 🔍 Step 2: Identify Listening Ports with `ss`

The `ss` (Socket Statistics) utility is the modern replacement for `netstat`. We use it to check the state of network sockets.

### ➡️ Goal: Check for TCP ports in a LISTEN state.

We will use the following flags:
* `-t`: Show TCP sockets.
* `-l`: Show listening sockets.
* `-n`: Show numerical addresses (don't try to resolve names).
* `-p`: Show the process using the socket.

Run the command and use `grep` to quickly find our target port, **8081**.

```bash
ss -tlpn | grep 8081
```

💡 Expected Result

You should see an entry showing the python3 process listening on port 8081. This confirms the application is running and has successfully claimed the port.