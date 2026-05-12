Verify that the PVC is now bound to the PV:

```bash
kubectl get pvc -n storage-debug
kubectl describe pvc app-data -n storage-debug
```

Check the PV status as well:

```bash
kubectl describe pv pv-storage
```

Both should show `Status: Bound` with matching capacity and access modes.
