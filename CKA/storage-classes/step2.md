Inspect the PVC status and identify why it's not provisioning:

```bash
kubectl get pvc -n storage-debug
kubectl describe pvc debug-claim -n storage-debug
```

The issue is that no PersistentVolume exists to satisfy the claim. Repair by creating a matching PV:

```bash
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: PersistentVolume
metadata:
  name: debug-pv
spec:
  capacity:
    storage: 100Mi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  storageClassName: slow-storage
  hostPath:
    path: "/tmp/debug-storage"
EOF
```

Since the StorageClass uses `Immediate` binding mode, the PVC should bind to the PV immediately.
