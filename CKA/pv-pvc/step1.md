## Step 1 - Create PersistentVolume

Create a file named **`pv.yaml`** with the following content:

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: my-pv
spec:
  capacity:
    storage: 1Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: /mnt/data
```

Apply it and check:

```bash
kubectl apply -f pv.yaml
kubectl get pv
```