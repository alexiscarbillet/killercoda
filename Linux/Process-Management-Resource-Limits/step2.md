# Step 2: Identify High Resource Consumers

Filter or sort processes to find the top CPU and memory users:

```bash
ps aux --sort=-%cpu | head -n 10
ps aux --sort=-%mem | head -n 10
```

Take note of the PIDs of the runaway processes (`yes`, `dd`, or infinite loop processes).

