## Step 5: Fix the Pod

Let’s try to exceed the quota.

Create `pod-large.yaml`:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-large
  namespace: quota-demo
spec:
  containers:
  - name: busybox
    image: busybox
    command: ["sh", "-c", "sleep 3600"]
    resources:
      requests:
        cpu: "2"
        memory: 2Gi
      limits:
        cpu: "3"
        memory: 3Gi
```

Apply it:

```bash
kubectl apply -f pod-large.yaml
kubectl describe pod pod-large -n quota-demo
```

You should see a failure because it exceeds the namespace ResourceQuota.