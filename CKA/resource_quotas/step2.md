## Step 2: Apply a ResourceQuota
Create a file `quota.yaml` with the following content:

```yaml
apiVersion: v1
kind: ResourceQuota
metadata:
  name: compute-quota
  namespace: quota-lab
spec:
  hard:
    pods: "3"
    requests.cpu: "1"
    requests.memory: 1Gi
    limits.cpu: "2"
    limits.memory: 2Gi
```

Apply it:

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