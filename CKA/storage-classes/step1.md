A storage claim is stuck and needs investigation.

Inspect the StorageClass and PVC that were created by the scenario:

```bash
kubectl get storageclass
kubectl get pvc -n storage-debug
kubectl describe pvc debug-claim -n storage-debug
```

What do you observe in the PVC status and what is causing provisioning to fail?
