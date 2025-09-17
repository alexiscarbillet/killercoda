# Step 4: Apply CPU/Memory Limits

Optionally, you can limit a process with:

```bash
ulimit -v 1000000  # Limit virtual memory to ~1GB
nice -n 10 command  # Start process with lower priority
renice 19 -p <PID> # Reduce CPU priority of running process
```

This ensures no single process can take down the system.