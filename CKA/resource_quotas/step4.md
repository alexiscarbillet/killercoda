## Step 4: Test with a Failing Pod

Now create a pod **without specifying resources**.

Create `pod-noresources.yaml`:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-noresources
  namespace: quota-demo
spec:
  containers:
  - name: nginx
    image: nginx
```

Apply it:

```bash
kubectl apply -f pod-noresources.yaml
kubectl describe pod pod-noresources -n quota-demo
```

You should see default CPU/Memory values injected from the LimitRange.