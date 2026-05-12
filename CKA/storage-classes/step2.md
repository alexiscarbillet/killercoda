Repair the storage configuration so the claim can bind.

Possible fixes include:
- editing the PVC to use a different StorageClass, or
- creating a matching PersistentVolume for the existing StorageClass.

For example, you can use `kubectl edit pvc debug-claim -n storage-debug` to update `storageClassName`, or apply a PV manifest that satisfies `debug-claim`.
