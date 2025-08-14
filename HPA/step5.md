## Step 5 - Observe Scaling

From another terminal, check how the HPA reacts:

```bash
kubectl get hpa -w
```

You should see the CPU usage rise and the number of replicas increase automatically.
