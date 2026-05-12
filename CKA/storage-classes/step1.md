Create the necessary storage resources to simulate a provisioning issue.

First, create a namespace for the scenario:

```bash
kubectl create namespace storage-debug
```

Then, create a StorageClass that uses the `no-provisioner` (static provisioning):

```bash
cat <<EOF | kubectl apply -f -
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: slow-storage
provisioner: kubernetes.io/no-provisioner
volumeBindingMode: WaitForFirstConsumer
EOF
```

Finally, create a PVC that requests storage from this StorageClass:

```bash
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: debug-claim
  namespace: storage-debug
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 100Mi
  storageClassName: slow-storage
EOF
```

Now inspect the PVC status to see the issue.
