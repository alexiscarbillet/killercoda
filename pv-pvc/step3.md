## Step 3 - Create Pod with PVC

Create a file named **`pod.yaml`**:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pv-test-pod
spec:
  containers:
    - name: busybox
      image: busybox
      command: ["sh", "-c", "sleep 3600"]
      volumeMounts:
        - mountPath: "/data"
          name: my-storage
  volumes:
    - name: my-storage
      persistentVolumeClaim:
        claimName: my-pvc
```

Apply it and check the pod:

```bash
kubectl apply -f pod.yaml
kubectl get pods
```