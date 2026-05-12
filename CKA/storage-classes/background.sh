#!/bin/bash
set -e
kubectl create namespace storage-debug >/dev/null 2>&1 || true
cat << 'EOF' >/tmp/storageclass.yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: slow-storage
provisioner: kubernetes.io/no-provisioner
volumeBindingMode: WaitForFirstConsumer
EOF
kubectl apply -f /tmp/storageclass.yaml
cat << 'EOF' >/tmp/pvc.yaml
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
kubectl apply -f /tmp/pvc.yaml
