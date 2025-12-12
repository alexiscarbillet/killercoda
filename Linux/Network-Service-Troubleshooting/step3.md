# 🧠 Step 3: Verify Process ID (PID) with `lsof`

While `ss` is great for an overview, `lsof` (list open files) is a powerful tool to explicitly find which process has opened a specific network file (a socket).

### ➡️ Goal: Get the exact PID for the process on port 8081.

Run the command below. The output will show the Process ID (`PID`) for the server.

```bash
lsof -i :8081
```

📝 Note Down the PID

Remember the PID you see. You would use this PID if you needed to stop the process using kill <PID>.