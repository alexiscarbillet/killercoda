# 🧪 Step 4: Test TCP Connectivity with `nc`

Now that we know the service is listening, we need to test if it's reachable. `nc` (Netcat) is often called the "Swiss Army Knife" of networking and can be used to quickly verify that a connection can be established.

### ➡️ Goal: Verify that the local host can successfully connect to port 8081.

We use the following flags for a connection test:
* `-v`: Verbose output.
* `-z`: Zero-I/O mode (just scan for a listener, don't send data).

```bash
nc -vz 127.0.0.1 8081
```

🎉 Verification

If the output confirms a successful connection (e.g., "Connection to 127.0.0.1 8081 port [tcp/*] succeeded!"), you have successfully confirmed the service's network availability.
