## Step 2: Apply a ResourceQuota
```bash
kubectl apply -f resource-quota.yaml -n quota-lab
kubectl describe quota -n quota-lab
```

This quota restricts:

* Max 2 pods

* CPU requests total ≤ 500m

* Memory requests total ≤ 512Mi

* CPU limits total ≤ 1 core

* Memory limits total ≤ 1Gi