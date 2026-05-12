# CKA StorageClass and PVC Troubleshooting

In this scenario, you will inspect a misconfigured PersistentVolumeClaim and StorageClass, identify why the claim is not provisioning, and repair the storage configuration.

You’ll use the following commands:
- `kubectl get storageclass`
- `kubectl get pvc -n storage-debug`
- `kubectl describe pvc debug-claim -n storage-debug`
- `kubectl edit pvc debug-claim -n storage-debug`
- `kubectl apply -f <manifest>`

Click **Start Scenario** to begin!
