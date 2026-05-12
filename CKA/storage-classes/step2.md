The PVC and PV have mismatched access modes. The PVC requests `ReadWriteMany` (RWX) but the PV only supports `ReadWriteOnce` (RWO).

Fix the issue by editing the PVC to match the PV's access mode:

```bash
kubectl edit pvc app-data -n storage-debug
```

Change the `accessModes` section from:
```yaml
accessModes:
  - ReadWriteMany
```

To:
```yaml
accessModes:
  - ReadWriteOnce
```

Save and exit. The PVC should now bind to the PV.
