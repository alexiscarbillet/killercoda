## Step 2 - Create PersistentVolumeClaim

Create a file named **`pvc.yaml`**:

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: my-pvc
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 500Mi
```

Apply it and verify:

```bash
kubectl apply -f pvc.yaml
kubectl get pvc
```
