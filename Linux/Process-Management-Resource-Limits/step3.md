# Step 3: Terminate or Limit Processes

Terminate runaway processes safely:

```bash
pkill yes
pkill dd
```

Check that the processes are gone:

```bash
ps aux | grep yes
ps aux | grep dd
```