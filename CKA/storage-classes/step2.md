Inspect the PVC status and identify why it's not provisioning:

```bash
kubectl get pvc -n storage-debug
kubectl describe pvc debug-claim -n storage-debug
```

The issue is that the StorageClass uses `no-provisioner`, so no PV is automatically created. Repair by creating a matching PV:

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

Alternatively, edit the PVC to use a different StorageClass or create the PV manually.
