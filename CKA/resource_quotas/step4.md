## Step 4: Test with a Failing Pod

Try creating a pod without resource requests:

```bash
kubectl apply -f bad-pod.yaml -n quota-lab
kubectl describe pod bad-pod -n quota-lab
```

The pod will fail because it doesn’t define requests/limits, and quota enforcement rejects it.