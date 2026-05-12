Inspect the storage resources to identify why the PVC is stuck.

List the resources in the namespace:

```bash
kubectl get pvc -n storage-debug
kubectl get pv
kubectl get storageclass
```

Describe the PVC to understand the binding issue:

```bash
kubectl describe pvc app-data -n storage-debug
```

Describe the PV to see its configuration:

```bash
kubectl describe pv pv-storage
```

Compare the access modes and storage capacity between the PVC and PV. What is preventing the bind?
