# Step 3: Terminate or Limit Processes

Terminate runaway processes safely:

```bash
kill <PID>
pkill yes
pkill -f 'while :; do :; done'
```

Check that the processes are gone:

```bash
ps aux | grep yes
ps aux | grep dd
```