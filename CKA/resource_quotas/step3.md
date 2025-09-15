## Step 3: Apply a LimitRange
```bash
kubectl apply -f limit-range.yaml -n quota-lab
kubectl describe limitrange -n quota-lab
```

This defines:

* Default request: 100m CPU, 128Mi memory

* Default limit: 200m CPU, 256Mi memory